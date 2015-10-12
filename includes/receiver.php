<?php

    if(isset( $_GET['jsonCallback'], $_GET['dirtyData'])) {

        $clearData      = [];
        $dirtyData      = (array) json_decode( $_GET['dirtyData'] );
        $callback       = preg_replace('/[^a-z0-9_]+/ui', '', $_GET['jsonCallback']);
        $necessaryKeys  = ['fname', 'lname', 'phone_number', 'email', 'country'];

        foreach( $necessaryKeys as $key ) {
            $clearData[ $key ]  = isset( $dirtyData[ $key ] ) ? $dirtyData[ $key ] : '';
        }

        if(count( $clearData ) > 0) {

            $config     = \CS\Settings\GlobalSettings::getDB();
            $dsn        = "mysql:dbname={$config['dbname']};host={$config['host']}";

            $pdo        = new \PDO($dsn, $config['username'], $config['password'], $config['options']);
            $jira       = new \CS\Users\JiraLogger( $pdo );

            $jira->registerListeners();

            $eventManager   = \EventManager\EventManager::getInstance();
            $eventManager->emit('billing-order-started', $clearData );

            header('content-type: text/javascript');
            die( $callback . '('. json_encode( [ 'status' => 'ok' ], JSON_PRETTY_PRINT ) .');' );
        }

    } else {
        status_header(403); die('access denied');
    }