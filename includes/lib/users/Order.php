<?php
namespace includes\lib\users;

use CS\Billing\Manager as BillingManager;
use Seller\FastSpring\Gateway as Gateway;
use CS\Models\Order\OrderRecord as OrderRecord; 
use CS\Settings\GlobalSettings as GlobalSettings;

use includes\lib\CDb as DB;

require_once dirname( __FILE__ ).'/ManagerUser.php';

class Order extends ManagerUser {
    
    const PRODUCT_TYPE = 'first';
    
    private $_billing;
    private $_gateway;
    private $storeId;
    
    public static $_data = array();
    
//     private $_db = array(
//        'dbname'    => 'main',
//        'host'      => '188.40.64.2',
//        'user'      => 'ci_user',
//        'password'  => 'qmsgrSR8qhxeNSC44533hVBqwNajd62z2QtXwN6E'
//        
//    );
    
    function __construct() {
        parent::__construct();
        
//        $db = new DB($this -> _db);
//        $this -> _pdo = $db -> getConnected();
        
        $this -> _billing = new BillingManager($this -> _pdo);
        $this -> _gateway = new Gateway();
        
        // detected storeID
        $config = GlobalSettings::getFastSpringConfig();
        $this -> storeId = $config['storeId'];
    }
    
    private function _createOrder( $userID, $productId ) {
        
        $order = $this -> _billing -> getOrder();
        $order->setSiteId(self::SITE_ID)
                ->setUserId($userID)
                ->setStatus(OrderRecord::STATUS_PENDING) // ->setStatus(CS\Models\Order\OrderRecord::STATUS_PENDING) ::STATUS_CREATED
                ->setPaymentMethod(OrderRecord::PAYMENT_METHOD_FASTSPRING)
                ->save();

        $orderProduct = $this -> _billing -> getOrderProduct();
        $orderProduct->setOrder($order)
                ->setProduct($this -> _billing -> getProduct($productId))
                ->loadReferenceNumber()
                ->save();

        $this -> _gateway->setStoreId( $this -> storeId )
                ->setProductId($orderProduct->getReferenceNumber())
                ->setReferenceData($order->getId() . '-' . $order->getHash())
                ->setTestMode(); // не обязательно

        $response =$this -> _gateway->purchaseProduct()->send();

        $redirectUrl = $response->getRedirectUrl();
        
        return $redirectUrl;
    }   
    
    public function setCreateOrder( $userID, $productId ) {
        if(!empty($userID) and !empty($productId))
            return $this -> _createOrder((int)$userID, (int)$productId);
        else
            return null;
    }
    
    public function getProducts() {
        $_plans = $this -> _billing->getSiteProducts(self::SITE_ID, self::PRODUCT_TYPE);
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
    
    
    private function _numbers( $_str ) {
        if(!empty($_str)) {
            preg_match_all('/[0-9]*/isu', $_str, $_result);
            foreach($_result[0] as $_item):
                if((int)$_item)
                    return (int)$_item; 
            endforeach;
        } else
            return null;
        
    }
    
    public function hasOrder($productId) {
        if(!empty($productId))
           return $this -> _billing->hasSiteProduct(self::SITE_ID, $productId);
        else
            return false;
    }
    
    public function createOrder( $productID ) {
        if($this -> hasOrder($productID)) {
            return $this -> setCreateOrder( $this ->getUserID(), $productID );
        } else {
            return null;
        }
    }
    
}