<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 03.07.17
 * Time: 15:23
 */


header('Access-Control-Allow-Origin: https://pumpic.com');
header('Access-Control-Allow-Methods: GET,POST');
header('Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, X-Requested-With');

//$config
$_inc = dirname(__FILE__); // includes

require __DIR__ . '/../vendor/autoload.php';
require_once $_inc . '/lib/users/Order.php';
require_once $_inc.'/di_function.php';

$logger = new Monolog\Logger('logger');
Monolog\ErrorHandler::register($logger);
$logger->pushProcessor(new Monolog\Processor\WebProcessor());
$logger->pushHandler(new Monolog\Handler\StreamHandler(__DIR__ . '/../logs/store-new.log', Monolog\Logger::DEBUG));

$logger->info('event');


if (($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {

    $data = $_POST;

    if (isset($data['order_reference_from_store'])){

        $order_referrer = $data['order_reference_from_store'];
        $order = new includes\lib\users\Order;

        if (isset($data['landing'])){
            $landing = $data['landing'];
            $order->setLanding($landing);
            $logger->info('landing', ['landing' => $data['landing']]);
        }

        if (isset($data['orders_referer'])){
            $orders_referrer = $data['orders_referer'];
            $order->setReferer($orders_referrer);
            $logger->info('orders_referrer', ['orders_referrer' => $data['orders_referrer']]);

        }

        $logger->info('sleep');

        sleep(60);

        $logger->info('wake up');

        $id = $order->getOrderForNewCheckout($order_referrer);

        $logger->info('order_reference', ['order_reference' => $data['order_reference_from_store']]);
    }
}
exit;