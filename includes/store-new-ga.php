<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 03.07.17
 * Time: 15:23
 */

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
    $logger->info($data['order_referer_from_store']);

    return $data;
}