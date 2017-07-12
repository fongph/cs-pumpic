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

    const GA_TYPE_DEFAULT = '--';
    const GA_TYPE_DIRECT = 'direct';
    const GA_TYPE_ORGANIC = 'organic';
    const GA_TYPE_EMAIL = 'email';
    const GA_TYPE_REFERRAL = 'referral';
    const GA_TYPE_ADWORDS = 'paid search';
    const GA_TYPE_MEDIA = 'media';
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
    private $startData = '30daysAgo';
    private $endData = 'yesterday';

    public function __construct()
    {
        global $config, $di;

        $this->_pdo = $di->get('db');
        $this->_manager = new Manager($this->_pdo);
        $this->_billing = new BillingManager($this->_pdo);

        parent::__construct(self::API_TYPE);
        $this->auth->setClientId(self::GA_CLIENT_ID);
        $this->auth->setEmail(self::GA_EMAIL);
        // echo __DIR__ . self::GA_PATH_P12; die('stop');
        $this->auth->setPrivateKey(__DIR__ . self::GA_PATH_P12);

        $this->_access = $this->auth->getAccessToken();
        $this->__init();

        $this->setSettings();
    }

    private function __init()
    {
        try {
            if ($this->_access['http_code'] == 200) {
                $this->token = $this->_access['access_token'];
                $this->tokenExpires = $this->_access['expires_in'];
                $this->tokenCreated = time();
            } else {
                $this->trace('Sorry, something wend wrong retrieving the oAuth tokens.', 'ga_api');
                //throw new GAExeptions("Sorry, something wend wrong retrieving the oAuth tokens");
            }
        } catch (\GAExeptions $ex) {
            $this->trace("Can't get access Token!<br />\r\n", 'ga_api');
            $this->saveLogs();
            die('Cant get access Token!');
            // throw new GAExeptions("Can't get access Token!<br />\r\n" );
        }
    }

    private function setSettings() {
        $this ->setAccessToken( $this ->token );
        $this ->setAccountId( self::ACCOUNT_ID );
    }
    public function getPageViews() {
        $params = array(
            'start-date'    => '2017-06-06', // '1daysAgo',
            'end-date'      => '2017-07-11', //'yesterday',
            'metrics'       => 'ga:pageviews,ga:sessionDuration,ga:exits',
            'dimensions'    => 'ga:source,ga:pagePath,ga:referralPath', // ga:fullReferrer
            'filters'       => 'ga:pagePath==/store-new.html;ga:hostname==pumpic.com', // ga:pagePath==/;
            'max-results'   => 100,
            'sort'          => '-ga:pageviews',
            'output'        => 'dataTable',
            'samplingLevel' => 'HIGHER_PRECISION',
        );

        $_res = $this ->query($params);
        return (is_array($_res) and count($_res) > 0) ? $_res  : NULL;
    }

}

$ga = new GetGA();
$source = array();

$pageViews = $ga->getPageViews();


var_dump($pageViews['dataTable']) ;
