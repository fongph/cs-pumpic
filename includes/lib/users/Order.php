<?php
//ini_set('display_errors', 1);

namespace includes\lib\users;

use CS\Billing\Manager as BillingManager;
use CS\Models\Order\OrderGoogleAnalyticsRecord;
use Seller\FastSpring\Gateway as Gateway;
use CS\Models\Order\OrderRecord as OrderRecord; 
use CS\Models\License\LicenseRecord as LicenseRecord; 
use CS\Models\Product\ProductRecord as ProductRecord; 
use CS\Settings\GlobalSettings as GlobalSettings;
use CS\Users\UsersNotes as UsersNotes; 
use IP;

use includes\lib\CDb as DB;

require_once dirname( __FILE__ ).'/ManagerUser.php';

class Order extends ManagerUser 
{
    
    const PRODUCT_TYPE = 'first';
    
    private $_billing;
    private $_gateway;
    private $_license;
    private $_usersNotes;
    private $storeId;
    
    private $referer;
    private $landing;

    public static $_data = array();
    
//     private $_db = array(
//        'dbname'    => 'main',
//        'host'      => '127.0.0.1',
//        'user'      => 'root',
//        'password'  => 'password'
//        
//    );
    
    function __construct() 
    {
        parent::__construct();
        
//        $db = new DB($this -> _db);
//        $this -> _pdo = $db -> getConnected();
        
        $this -> _billing = new BillingManager( $this -> _pdo );
        $this -> _license = new LicenseRecord( $this -> _pdo );
        $this -> _usersNotes = new UsersNotes( $this -> _pdo );
        $this -> _gateway = new Gateway();
        
        // detected storeID
        $config = GlobalSettings::getFastSpringConfig();
        $this -> storeId = $config['storeId'];
    }
    
    public function setReferer( $value ) {
        $this -> referer = $value;
        return $this;
    }
    
    public function getReferer() {
        return $this -> referer;
    }
    
    private function unsetReferer() {
        if(isset($_COOKIE['orders_referer'])) {
            setcookie("orders_referer", false, -1, '/' );
            unset($_COOKIE['orders_referer']);
        }    
    }
    
    // landing
    public function setLanding( $value ) {
        $this -> landing = $value;
        return $this;
    }
    
    public function getLanding() {
        return $this -> landing;
    }
    
    private function unsetLanding() {
        if(isset($_COOKIE['landing'])) {
            setcookie("landing", false, -1, '/' );
            unset($_COOKIE['landing']);
        }    
    }
    
    // registration or store
    private function _createOrder( $userID = null, $productId, $testMode = false ) 
    {
        $ip = IP::getRealIP();
        $order = $this -> _billing -> getOrder();
        $order->setSiteId(self::SITE_ID);
        if($userID){
            $order->setUserId($userID);
        }
         $order->setStatus(OrderRecord::STATUS_PENDING) // ->setStatus(CS\Models\Order\OrderRecord::STATUS_PENDING) ::STATUS_CREATED
                ->setPaymentMethod(OrderRecord::PAYMENT_METHOD_FASTSPRING)
                -> setLocation( IP::getCountry($ip) ) 
                -> save();
         
//        // save referer and landing
        if($this ->getReferer() and $this ->getLanding()) { 
            $referer = $this -> _billing -> getReferer(); 
            $referer -> setOrder($order)
                ->setReferer( $this ->getReferer() )
                ->setLanding( $this ->getLanding() )    
                ->save(); 
        }

        $this -> unsetReferer();
        $this -> unsetLanding();
        
        
        $orderProduct = $this -> _billing -> getOrderProduct();
        $orderProduct->setOrder($order)
                ->setProduct($this -> _billing -> getProduct($productId))
                ->loadReferenceNumber()
                ->save();

        $this -> _gateway->setStoreId( $this -> storeId )
                ->setProductId($orderProduct->getReferenceNumber())
                ->setReferenceData($order->getId() . '-' . $order->getHash())
                ->setInstant();
                // ->setTestMode(); // не обязательно

        $googleAnalytics = new OrderGoogleAnalyticsRecord($this->_pdo);
        $googleAnalytics
            ->setOrderId($order->getId())
            ->setDataFromCookiesArray($_COOKIE)
            ->save();
        
        if($testMode) $this -> _gateway->setTestMode();
                
        $response =$this -> _gateway->purchaseProduct()->send();

        $redirectUrl = $response->getRedirectUrl();
        
        
        
        return $redirectUrl;
    } 
    
    // free_trial_registration
    private function _createOrderByFreeTrial( $userID = null, $productId, $phone, $name ) 
    {
        $ip = IP::getRealIP();
        $order = $this -> _billing -> getOrder();
        $order->setSiteId(self::SITE_ID);
        if($userID){
            $order->setUserId($userID);
        }
         $order->setStatus(OrderRecord::STATUS_COMPLETED) // ->setStatus(CS\Models\Order\OrderRecord::STATUS_PENDING) ::STATUS_CREATED 
                ->setPaymentMethod(OrderRecord::PAYMENT_METHOD_INTERNAL)
                ->setTrial(true) 
                -> setLocation( IP::getCountry($ip) );
         
         if($phone)
             $order -> setPhone( $phone );
         
         if($name)
             $order ->setPerson ( $name );
         
         $order -> save();
         
//        // save referer 
         if($this ->getReferer() and $this ->getLanding()) {
            $referer = $this -> _billing -> getReferer(); 
            $referer -> setOrder($order)
                ->setReferer( $this ->getReferer() )
                ->setLanding( $this ->getLanding() )    
                -> save(); 
         }
        $this -> unsetReferer();
        $this -> unsetLanding();
        
        $orderProduct = $this -> _billing->getOrderProduct();
        $orderProduct->setOrder($order)
                -> setProduct($this -> _billing->getProduct($productId))
                -> loadReferenceNumber()
                -> save();

        if($userID){
            // create license        
            $license = $this -> _billing -> getLicense(); 
            $license ->setOrderProduct($orderProduct)
                        ->setAmount(0)
                        ->setCurrency('USD')
                        ->setLifetime( time() + 7 * 24 * 3600 )
                        ->setActivationDate(time())
                        ->setExpirationDate(time() + 7 * 24 * 3600)
                        ->setStatus(LicenseRecord::STATUS_AVAILABLE)
                        ->save();
            
            // create options
            if($license->getId()) {
                $this -> setUserOption($userID, 'internal-trial-license', $license->getId());
                $this -> _usersNotes ->licenseAdded($license->getId(), $userID);
            }
            // auth
            $this -> authUserID( $userID ); 
            
        }

        $googleAnalytics = new OrderGoogleAnalyticsRecord($this->_pdo);
        $googleAnalytics
            ->setOrderId($order->getId())
            ->setDataFromCookiesArray($_COOKIE)
            ->save();

        return true;
    } 
    
    public function createOrderByProduct( $userID, $product, $deviceId ) 
    {
        
        $order = $this -> _billing -> getOrder();
        $order->setSiteId(self::SITE_ID);
        if($userID){
            $order->setUserId($userID);
        }
         $order->setStatus(OrderRecord::STATUS_PENDING) // ->setStatus(CS\Models\Order\OrderRecord::STATUS_PENDING) ::STATUS_CREATED
                ->setPaymentMethod(OrderRecord::PAYMENT_METHOD_FASTSPRING)
                ->save();

        $orderProduct = $this -> _billing -> getOrderProduct();
        $orderProduct->setOrder($order)
                ->setProduct($this -> _billing->getSiteProductByGroup(self::SITE_ID, self::PRODUCT_TYPE, $product))
                ->loadReferenceNumber();
        if ($deviceId > 0) {
            $orderProduct->setInitialDeviceId($deviceId);
        }
        $orderProduct->save();
        
        $this -> _gateway->setStoreId( $this -> storeId )
                ->setProductId($orderProduct->getReferenceNumber())
                ->setReferenceData($order->getId() . '-' . $order->getHash())
                ->setInstant();
                // ->setTestMode(); // не обязательно

        $response =$this -> _gateway->purchaseProduct()->send();

        $redirectUrl = $response->getRedirectUrl();
        
        return $redirectUrl;
    }   
        
    public function getProducts($namespace) 
    {
        $_plans = $this -> _billing->getSiteProducts(self::SITE_ID, $namespace);
        if(is_array($_plans) 
                and count($_plans) > 0) {
            
            foreach($_plans as $_plan => $_data) :
                if(preg_match('/^basic(.*+)$/is', $_plan)) {
                    self::$_data['basic'][] = array_merge($_data, ['period' => $this ->_numbers($_plan)]);
                } else if(preg_match('/^premium(.*+)$/is', $_plan)) {
                    self::$_data['premium'][] = array_merge($_data, ['period' => $this ->_numbers($_plan)]);
                }
                        
            endforeach;
            
        }
        
        return self::$_data;
    }
    
    private function _numbers( $_str ) 
    {
        if(!empty($_str)) {
            preg_match_all('/[0-9]*/isu', $_str, $_result);
            foreach($_result[0] as $_item):
                if((int)$_item)
                    return (int)$_item; 
            endforeach;
        } else
            return null;
        
    }
    
    public function hasOrder($productId) 
    {
        if(!empty($productId))
           return $this -> _billing -> hasSiteProduct(self::SITE_ID, $productId);
        else
            return false;
    }
    
    // registration or store
    public function createOrder( $productID, $testMode = false ) {
        if($this -> hasOrder($productID)) {
            $user_id = $this ->getUserID();
            return $this -> _createOrder( $user_id ? $user_id : null, $productID, $testMode );
        } else {
            return false;
        }
    }
    
    // free_trial_registration
    public function createOrderByFreeTrial( $userID, $productID, $phone, $name ) {
        if($this -> hasOrder($productID)) {
            return $this -> _createOrderByFreeTrial( $userID ? $userID : null, $productID, $phone, $name );
        } else {
            return false;
        }
    }
    
    public function _arsort( array $arr ) {
        $sort = array();
        $result = array();
        foreach($arr as $_item) :
            $sort[] = $_item['period'];
        endforeach;
        asort( $sort );

        foreach($sort as $_period) {
            foreach($arr as $_item) :
               if((int)$_period == (int)$_item['period']) 
                    $result[] = $_item;  
            endforeach; 
        }    

        return $result;
    }
    
}