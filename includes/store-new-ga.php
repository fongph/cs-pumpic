<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 03.07.17
 * Time: 15:23
 */


header('Access-Control-Allow-Origin: https://pumpic.com');
//header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET,POST');
header('Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, X-Requested-With');

//$config
$_inc = dirname(__FILE__); // includes

require __DIR__ . '/../vendor/autoload.php';
require __DIR__ . '/../includes/di.php';
require_once $_inc.'/di_function.php';


$logger = new Monolog\Logger('logger');
Monolog\ErrorHandler::register($logger);
$logger->pushProcessor(new Monolog\Processor\WebProcessor());
$logger->pushHandler(new Monolog\Handler\StreamHandler(__DIR__ . '/../logs/store-new.log', Monolog\Logger::DEBUG));

$logger->info('event');

CS\Users\UsersManager::registerListeners($di->get('db'));

if (($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {

    $data = $_POST;

    if (isset($data['order_reference_from_store'])){

        $order_reference = $data['order_reference_from_store'];

        $referrer = (isset($data['orders_referer']) && $data['orders_referer'] != 'false') ? $data['orders_referer'] : '--';
        $landing = (isset($data['landing']) && $data['landing'] != 'false') ? $data['landing'] : '--';

        $logger->info('orders_referrer', ['orders_referrer' => $referrer]);
        $logger->info('landing', ['landing' => $landing]);

        $accountInfo = getEmailByOrderReference($order_reference);

        $email = $accountInfo['accounts'][0]['contact']['email'];
        $logger->info('email', ['email' => $email]);

        $eventManager = \EventManager\EventManager::getInstance();

        $eventManager->emit('billing-order-ga-source', array(
            'email' => $email,
            'orderReference' => $order_reference,
            'landing' => $landing,
            'referrer' => $referrer,
            'ip' =>  IP::getRealIP()
        ));

        $logger->info('billing-order-ga-source');
    }
}

function getEmailByOrderReference($reference){

    $url = 'https://api.fastspring.com/accounts?orderReference='. $reference;

    $client = new \GuzzleHttp\Client();

    $createdRequest = $client->createRequest('GET', $url, [
        'headers' => array(
            'Cache-control' => 'no-cache',
            'Authorization' => 'Basic NElFRUZFTTBRSVdYMFZBV1BOX0Y2QTpRN2ZERW0xMFFEQ2hnWXNBWEVzUW1n'
        )
    ]);

    $response = $client->send($createdRequest);

    $data = $response->getBody()->getContents();

    return json_decode($data, true);

}

exit;