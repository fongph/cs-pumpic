<?php
global $di, $config;
$config or require __DIR__ . '/config.php';

use CS\Settings\GlobalSettings;

$di = new System\DI;

$di->set('config', $config);

$di->setShared('db', function() use ($config) {
    $pdo = new \PDO("mysql:host={$config['db']['host']};dbname={$config['db']['dbname']}", $config['db']['username'], $config['db']['password'], $config['dbOptions']);
    if ($config['environment'] == 'development') {
        $pdo->exec("set profiling_history_size = 1000; set profiling = 1;");
    }
    return $pdo;
});

$di->setShared('dataDb', function() use ($di) {
    if ($di['config']['environment'] == 'production') {
        $dbConfig = GlobalSettings::getDeviceDatabaseConfig($di['devId']);
    } else {
        $dbConfig = $di['config']['dataDb'];
    }

    $pdo = new \PDO("mysql:host={$dbConfig['host']};dbname={$dbConfig['dbname']}", $dbConfig['username'], $dbConfig['password'], $di['config']['dbOptions']);
    if ($di['config']['environment'] == 'development') {
        $pdo->exec("set profiling_history_size = 1000; set profiling = 1;");
    }
    return $pdo;
});

$di->setShared('dbPhones', function() use ($config) {
    $pdo = new \PDO("mysql:host={$config['db_phones']['host']};dbname={$config['db_phones']['dbname']}", $config['db_phones']['username'], $config['db_phones']['password'], $config['dbOptions']);
    if ($config['environment'] == 'development') {
        $pdo->exec("set profiling_history_size = 1000; set profiling = 1;");
    }
    return $pdo;
});

$di->setShared('dbBlog', function() use ($config) {
    $pdo = new \PDO("mysql:host={$config['db_blog']['host']};dbname={$config['db_blog']['dbname']}", $config['db_blog']['username'], $config['db_blog']['password'], $config['dbOptions']);
    if ($config['environment'] == 'development') {
        $pdo->exec("set profiling_history_size = 1000; set profiling = 1;");
    }
    return $pdo;
});



$di->setShared('mailSender', function() use ($di) {
    if ($di['config']['environment'] == 'development') {
        $mailSender = new CS\Mail\MailSender(new \CS\Mail\Processor\FileProcessor(dirname(__DIR__) . '/mailSender.log'));
    } else {
        $queue = GlobalSettings::getQueueConfig();
        
        $processor = new CS\Mail\Processor\QueueProcessor($queue['host'], $queue['port'], $queue['user'], $queue['password'], 'mail');
        $mailSender = new CS\Mail\MailSender($processor);
    }
    /** @var \System\Auth $auth */
    $auth = $di['auth'];

    if ($auth->hasIdentity()) {
        $authData = $auth->getIdentity();
        $mailSender->setUserId($authData['id']);
    }
    
    \CS\Users\UsersManager::registerListeners($di['db']);

    return $mailSender->setLocale('en-US')
        ->setSiteId(SITE_ID);
});


$di->setShared('session', function () use ($di) {

    System\Session::setConfig($di['config']['session']);
    if ($di['config']['environment'] == 'production') {
        $redisConfig = CS\Settings\GlobalSettings::getRedisConfig('sessions', SITE_ID);
        $redisClient = new Predis\Client($redisConfig);
        System\Session::setSessionHandler(new System\Session\Handler\RedisSessionHandler($redisClient));
    }

    return new System\Session;
});

$di->setShared('auth', function () use ($di) {
    $auth = new \System\Auth($di);
    return $auth;
});

$di->setShared('usersNotesProcessor', function() use ($di) {
    
    /** @var \System\Auth $auth */
    $auth = $di['auth'];

    if (!$auth->hasIdentity()) {
        return new CS\Users\UsersNotes($di['db']);
    }

    $authData = $auth->getIdentity();

    if (isset($authData['admin_id'])) {
        return new CS\Users\UsersNotes($di['db'], $authData['id'], $authData['admin_id']);
    }

    return new CS\Users\UsersNotes($di['db'], $authData['id']);
});

$di->setShared('usersManager', function() use ($di) {
    $usersManager = new CS\Users\UsersManager($di['db']);
    return $usersManager->setUsersNotesProcessor($di['usersNotesProcessor']);
});

$di->setShared('gatewaysContainer', function () {
    $fastSpringConfig = GlobalSettings::getFastSpringConfig();

    return new \Seller\GatewaysContainer(array(
        'fastspring' => $fastSpringConfig
    ));
});

$di->setShared('billingManager', function () use ($di) {
    $billingManager = new \CS\Billing\Manager($di['db']);
    $billingManager->setGatewaysContainer($di['gatewaysContainer']);

    return $billingManager;
});

$di->set('isTestUser', function($id) use($config) {

    if ($config['environment'] == 'production') {
        return in_array($id, array(
            1, //b.orest@dizboard.com
            2, //pm@dizboard.com
            10, //p.olya@dizboard.com
            11, //g.zhenya@dizboard.com
            280 //eugene-msa@yandex.ru
        ));
    }

    return true;
});

$di->setShared('isDirectLogin', function() use($di) {
    return $di['authData'] && array_key_exists('admin_id', $di['authData']) && $di['authData']['admin_id'];
});

$di->setShared('authData', function() use($di) {
    /** @var System\Auth $auth */
    $auth = $di['auth'];
    if ($auth->hasIdentity()) {
        return $auth->getIdentity();
    } else {
        return false;
    }
});

$di->setShared('localManagerUser', function () {
    return new includes\lib\users\ManagerUser;
});

$di->setShared('freeTrialLinks', function () use ($di) {
    $freeTrialLinks = new CS\Users\FreeTrialLinks($di->get('config')['session']['cookieParams']['domain']);
    /** @var System\Auth $auth */
    $auth = $di->get('auth');
    if ($auth->hasIdentity() && $freeTrialLinks->isAvailable()) {
        $freeTrialLinks->setAccessCookie(CS\Users\FreeTrialLinks::HIDDEN);
    }
    return $freeTrialLinks;
});

return $di;