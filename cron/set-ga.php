<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 11.07.17
 * Time: 16:24
 */

namespace cron\GA;

use CS\Users\UsersManager as Manager;
use CS\Billing\Manager as BillingManager;

use includes\lib\GoogleAnalyticsAPI as GoogleAnalyticsAPI;
use includes\lib\GoogleAnalyticsExeptions as GAExeptions;

require dirname( __DIR__ ) . '/vendor/autoload.php';
require dirname( __DIR__ ) . '/includes/di.php';
require dirname( __DIR__ ).'/includes/config.php';
require dirname( __DIR__ ) . '/includes/lib/google/GoogleAnalyticsAPI.php';

class GetGA extends GoogleAnalyticsAPI
{

    const GA_TYPE_DEFAULT    = '--';
    const GA_TYPE_DIRECT    = 'direct';
    const GA_TYPE_ORGANIC   = 'organic';
    const GA_TYPE_EMAIL     = 'email';
    const GA_TYPE_REFERRAL  = 'referral';
    const GA_TYPE_ADWORDS   = 'paid search';
    const GA_TYPE_MEDIA     = 'media';
    const GA_TYPE_AFFILIATE = 'affiliate';
    const GA_TYPE_SYSTEM_EMAIL = 'system email';
    const GA_TYPE_APP_STORE = 'app store';
    const GA_TYPE_AMP_PROJECT = 'amp-project';

    const API_TYPE = 'service';
    const NUMBER_ITEM = 100;

    const GA_CLIENT_ID = '35839110757-7759svhb01lfqel581c83dv0b60apaof.apps.googleusercontent.com';
    const GA_EMAIL = '35839110757-7759svhb01lfqel581c83dv0b60apaof@developer.gserviceaccount.com';
    const GA_PATH_P12 = '/p12/Pumpic-50cc9c322908.p12';

    // Analytics account id like, 'ga:xxxxxxx'
    const ACCOUNT_ID = 'ga:93503867'; //'ga:97633209'; // 'ga:103771050';

    private $_pdo;
    private $_manager;
    private $_billing;

    private $_access;
    private $token;
    private $tokenExpires;
    private $tokenCreated;

    // TransactionID
    private $tID = false; // example: PUM150618-7417-41107

    // default params
    private $startData = '40daysAgo';
    private $endData = 'today';

    public function __construct() {
        global $config, $di;

        $this -> _pdo = $di->get('db');
        $this -> _manager = new Manager( $this -> _pdo );
        $this -> _billing = new BillingManager( $this -> _pdo );

        parent::__construct( self::API_TYPE );
        $this ->auth ->setClientId( self::GA_CLIENT_ID );
        $this ->auth ->setEmail( self::GA_EMAIL );
        // echo __DIR__ . self::GA_PATH_P12; die('stop');
        $this ->auth ->setPrivateKey( __DIR__ . self::GA_PATH_P12 );

        $this ->_access = $this->auth->getAccessToken();
        $this ->__init();

        $this ->setSettings();
    }

    private function __init() {
        try {
            if ($this ->_access['http_code'] == 200) {
                $this ->token = $this ->_access['access_token'];
                $this ->tokenExpires = $this ->_access['expires_in'];
                $this ->tokenCreated = time();
            } else {
                $this ->trace('Sorry, something wend wrong retrieving the oAuth tokens.', 'ga_api');
                //throw new GAExeptions("Sorry, something wend wrong retrieving the oAuth tokens");
            }
        } catch (\GAExeptions $ex) {
            $this ->trace("Can't get access Token!<br />\r\n", 'ga_api');
            $this ->saveLogs();
            die('Cant get access Token!');
            // throw new GAExeptions("Can't get access Token!<br />\r\n" );
        }
    }


    /*
    *  Step 3: Do real stuff!
    *          If we're here, we sure we've got an access token
    */
    private function setSettings() {
        $this ->setAccessToken( $this ->token );
        $this ->setAccountId( self::ACCOUNT_ID );
    }


    private function getGARows( $rows, $key ) {
        $items = array();
        foreach($rows as $rk => $rv) {
            $items[ $rk ] = $rv['c'][$key]['v'];
        }
        return $items;
    }

    private function getParceResult( Array $res) {
        $parce = array();
        $parce['count'] = (isset($res['totalResults'])) ? $res['totalResults'] : 0;

        foreach($res as $_item) {
            if(isset($_item['cols'])) {
                // cols
                foreach($_item['cols'] as $key => $col) {
                    $parce['rows'][ $col['label'] ] = (isset($_item['rows'])) ? $this ->getGARows($_item['rows'], $key) : array();
                }
            }
        }

        return $parce;
    }

    public function setTransactionID( $transactionID ) {
        if(!empty($transactionID))
            return $this ->tID = $transactionID;
    }

    public function getTransactionID() {
        return $this ->tID;
    }

    // filters Data
    public function setStartData( $startData ) {
        if(!empty($startData))
            return $this ->startData = $startData;
    }

    public function getStartData() {
        return $this ->startData;
    }

    public function setEndData( $endData ) {
        if(!empty($endData))
            return $this ->endData = $endData;
    }

    public function getEndData() {
        return $this ->endData;
    }

    /**
     * method: getTransactions
     * @return type (array)
     */
    public function getTransactions() {
        $params = array(
            'start-date'    => $this ->getStartData(), // '2013-01-01',// $this ->getStartData(), // $this ->getStartData(), //'2015-02-05', // '1daysAgo',
            'end-date'      => $this ->getEndData(), // '2015-06-25',// $this ->getEndData(), // $this ->getEndData(), //'2015-02-05', //'yesterday',
            'metrics'       => 'ga:transactions,ga:itemRevenue', // ga:itemRevenue
            //'dimensions'    => 'ga:date,ga:transactionId', // ga:transactionId, ,ga:source,ga:medium,ga:campaign,ga:adContent,ga:productSku
            'dimensions'    => 'ga:transactionId,ga:date,ga:hour,ga:source,ga:fullReferrer,ga:landingPagePath,ga:medium', // ga:minute,
            'filters'       => 'ga:transactionId=='.$this ->getTransactionID(),
            'output'        => 'dataTable',
            'max-results'   => 1,
            'samplingLevel' => 'HIGHER_PRECISION',
        );
        $_res = $this ->query($params);
        return (is_array($_res) and count($_res) > 0) ? $this ->getParceResult( $_res ) : NULL;
    }

    /**
     * method: getPageViews
     * @return type (array)
     */
    public function getPageViews() {
        $params = array(
            'start-date'    => '2015-02-05', // '1daysAgo',
            'end-date'      => '2015-02-05', //'yesterday',
            'metrics'       => 'ga:pageviews,ga:sessionDuration,ga:exits',
            'dimensions'    => 'ga:source,ga:pagePath,ga:referralPath', // ga:fullReferrer
            'filters'       => 'ga:pagePath==/store.html;ga:hostname==pumpic.com,ga:medium==referral', // ga:pagePath==/;
            'max-results'   => 50,
            'sort'          => '-ga:pageviews',
            'output'        => 'dataTable',
            'samplingLevel' => 'HIGHER_PRECISION',
        );

        $_res = $this ->query($params);
        return (is_array($_res) and count($_res) > 0) ? $_res : NULL;
    }

    public function getOredrsCompleted( $status ) {

        $status = $this->_pdo->quote($status);
        if (($data = $this->_pdo->query("SELECT *, UNIX_TIMESTAMP(`created_at`) 
                                            as `created_at`, 
                                            UNIX_TIMESTAMP(`updated_at`) as `updated_at` 
                                            FROM `orders` WHERE 
                                             `status` = 'completed'
                                            AND `reference_number` != '' 
                                            AND `test` = 0
                                            AND `payment_method` = 'fastspring'
                                            AND `ga_source` IN (4,5)
                                            AND created_at > '2017-05-30 00:00:00'
                                            ")
                ->fetchAll()) != false) {
            return $data;
        }
        $this ->trace('Unable to load order.', 'ga_api');
        // throw new GAExeptions('Unable to load order.');
    }

    public function getGoogleSourceId( $ga_type ) {
        $ga_type = $this->_pdo->quote($ga_type);
        if( ($data = $this->_pdo->query("SELECT id FROM `google_source` WHERE `name` = {$ga_type}" )->fetch( \PDO::FETCH_ASSOC )) != false ) {
            return $data['id'];
        }

        return false;
    }

    public function updateOrderGoogleSource($order_id, Array $source ) {

        $ga_type = self::GA_TYPE_DEFAULT; // false

        if(isset($source['rows']['ga:source'][0], $source['rows']['ga:medium'][0])
            && $source['rows']['ga:source'][0] != NULL && $source['rows']['ga:medium'][0] != NULL) {

            // direct
            if(preg_match('/^\(direct\)$/is', $source['rows']['ga:source'][0])
                && preg_match('/^\(none\)$/is', $source['rows']['ga:medium'][0])) {
                $ga_type = self::GA_TYPE_DIRECT;
            }
            // amp  project
            else if(strlen($source['rows']['ga:source'][0]) > 0
                && preg_match('/^pumpic-com.cdn.ampproject.org$/is', $source['rows']['ga:source'][0])) {
                $ga_type = self::GA_TYPE_AMP_PROJECT;
            }

            // organic
            else if(strlen($source['rows']['ga:source'][0]) > 0
                && preg_match('/^organic$/is', $source['rows']['ga:medium'][0])) {
                $ga_type = self::GA_TYPE_ORGANIC;
            }

            // referral
            else if(strlen($source['rows']['ga:source'][0]) > 0
                && preg_match('/^referral$/is', $source['rows']['ga:medium'][0])) {
                $ga_type = self::GA_TYPE_REFERRAL;
            }
            // app store
            else if(strlen($source['rows']['ga:source'][0]) > 0
                && preg_match('/^ioscpapp$/is', $source['rows']['ga:source'][0])) {
                $ga_type = self::GA_TYPE_APP_STORE;
            }

            //system email
            else if(strlen($source['rows']['ga:source'][0]) > 0
                && preg_match('/^system-email$/is', $source['rows']['ga:medium'][0])) {
                $ga_type = self::GA_TYPE_SYSTEM_EMAIL;
            }
            //email
            else if(strlen($source['rows']['ga:source'][0]) > 0
                && preg_match('/^email$/is', $source['rows']['ga:medium'][0])) {
                $ga_type = self::GA_TYPE_EMAIL;
            }
            //affiliate
            else if(strlen($source['rows']['ga:source'][0]) > 0
                && preg_match('/^affiliate$/is', $source['rows']['ga:medium'][0])) {
                $ga_type = self::GA_TYPE_AFFILIATE;
            }
            // adwords
            else if(preg_match('/^google$/is', $source['rows']['ga:source'][0])
                && preg_match('/^cpc$/is', $source['rows']['ga:medium'][0])) {
                $ga_type = self::GA_TYPE_ADWORDS;
            }
            // media
//                else {
//                    $ga_type = self::GA_TYPE_MEDIA;
//                }

            // default
        }

        // log
        $this ->trace( 'TransactionID:'. $this ->getTransactionID() .' ga_type:'.$ga_type.' times:('.$this ->getStartData().'-'. $this ->getEndData().')', 'ga_api');

        if($ga_type == self::GA_TYPE_DEFAULT) {
            $this->_pdo->exec("UPDATE `orders` SET `ga_source` = 0, `ga_cron` = 1  WHERE `id` = {$order_id} LIMIT 1");
        } else if( $source_id = $this ->getGoogleSourceId( $ga_type ) ) {
            $order_id = $this->_pdo->quote($order_id);
            $this->_pdo->exec("UPDATE `orders` SET `ga_source` = {$source_id}, `ga_cron` = 1 WHERE `id` = {$order_id} LIMIT 1");
        }

    }

    public function converUTC( $date ) {
        $userTimezone = new \DateTimeZone('America/New_York');
        $gmtTimezone = new \DateTimeZone('GMT');
        $myDateTime = new \DateTime($date, $gmtTimezone);
        $offset = $userTimezone->getOffset($myDateTime);

        return date('Y-m-d', $myDateTime->format('U') + $offset);
    }

    public function saveGaSources($orderId, $landing, $reference)
    {
        $completedOrder = new \CS\Models\Order\OrderRecord($this->_pdo);
        $completedOrder->load($orderId);

        $referrer =  new \CS\Models\Referer\RefererRecord($this->_pdo);

        $referrer->setOrder($completedOrder)
            ->setIp(\IP::getRealIP())
            ->setReferer($reference)
            ->setLanding($landing)
            ->save();
    }

}

$ga = new GetGA();
$source = array();

$logger = new \Monolog\Logger('logger');
\Monolog\ErrorHandler::register($logger);
$logger->pushProcessor(new \Monolog\Processor\WebProcessor());
$logger->pushHandler(new \Monolog\Handler\StreamHandler(__DIR__ . '/../logs/set-ga.log', \Monolog\Logger::DEBUG));



$orders = $ga ->getOredrsCompleted( 'completed' );

if(is_array($orders) and count($orders) > 0) {
    foreach($orders as $key => $order):
        $logger->info('event started');

        $logger->info('order', [
            $key,
            $order
        ]);

        // settings
        $ga ->setStartData( $ga ->converUTC( date('Y-m-d H:i:s', $order['created_at']) ) );
        $ga ->setEndData( $ga ->converUTC( date('Y-m-d H:i:s', strtotime('+1 days', $order['created_at'])) ) );
        $ga ->setTransactionID( trim( $order['reference_number'] ) );

        $sources = (array) $ga->getTransactions();

        $logger->info('fullReferrer & landingPagePath', [
            'source' => $sources['rows']['ga:source'][0],
            'medium' => $sources['rows']['ga:medium'][0],
            'fullReferrer' => $sources['rows']['ga:fullReferrer'][0],
            'landingPagePath' => $sources['rows']['ga:landingPagePath'][0]
        ]);

//        $google_source = ['direct', '(direct)', 'email', 'ioscpapp', 'paid search', 'organic', 'referral', 'media', 'remarketing', 'affiliate', 'organic (monitorphones)', 'app store', 'social', 'system email', 'amp-project', 'google'];

//        $landing = is_null($sources['rows']['ga:landingPagePath'][0]) ? '--' :  $sources['rows']['ga:landingPagePath'][0];
//        $ref_origin = is_null($sources['rows']['ga:fullReferrer'][0]) ? '--' : $sources['rows']['ga:fullReferrer'][0] ;
//        $referrer = !in_array($sources['rows']['ga:fullReferrer'][0], $google_source) ? $ref_origin : '--';
////        $ga->saveGaSources($order['id'], $landing, $referrer);

        // results
        $ga ->updateOrderGoogleSource( $order['id'], $ga ->getTransactions() );
        $logger->info('event end');

    endforeach;
}
//var_dump($pageViews['dataTable']);
