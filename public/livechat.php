<?php

require '../vendor/autoload.php';
require '../includes/di.php';

$whoops = new Whoops\Run;

$logger = new Monolog\Logger('logger');
$logger->pushProcessor(new Monolog\Processor\WebProcessor());
$logger->pushHandler(new Monolog\Handler\StreamHandler(__DIR__ . '/logs/livechat.log', Monolog\Logger::DEBUG));

$whoops->pushHandler(new \Whoops\Handler\CallbackHandler(function($exception, $inspector, $run) use ($logger) {
    $logger->addError(sprintf(
                    'Uncaught Exception %s: "%s" at %s line %s', get_class($exception), $exception->getMessage(), $exception->getFile(), $exception->getLine()
    ));
    header('HTTP/1.1 500 Internal Server Error', true, 500);
    die;
}));

$whoops->register();

CS\Users\UsersManager::registerListeners($di->get('db'));

$inputData = file_get_contents('php://input');
$data = json_decode($inputData, true);

$logger->debug("Started");

if (isset($_GET['b28d30d3683bf925d1f02b65a65984b400f3bf41d87aa3fcaf2b13ca01d97650'])) {
    $data = null;

    if ($data['event_type'] === 'chat_ended') {
        $messages = array();
        foreach ($data['chat']['messages'] as $record) {
            $messages[] = array(
                'name' => $record['author_name'],
                'text' => $record['text'],
                'timestamp' => $record['timestamp']
            );
        }

        $data = array(
            'email' => $data['visitor']['email'],
            'name' => $data['visitor']['name'],
            'chat' => array(
                'id' => $data['chat']['id'],
                'messages' => $messages
            )
        );
    } else if ($data['event_type'] === 'ticket_created') {
        $data = array(
            'email' => $data['ticket']['requester']['mail'],
            'name' => $data['ticket']['requester']['name'],
            'ticket' => array(
                'id' => $data['ticket']['id'],
                'subject' => $data['ticket']['subject'],
                'message' => $data['ticket']['events'][0]['message']
            )
        );
    }

    if ($data !== null) {
        $eventManager = \EventManager\EventManager::getInstance();
        $eventManager->emit('front-livechat', $data);
        $logger->debug("Event sended");
    }
}