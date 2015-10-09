<?php

    if(isset( $_GET['jsonCallback'], $_GET['dirtyData'])) {

        $clearData      = [];
        $dirtyData      = $_GET['dirtyData'];
        $callback       = preg_replace('/[^a-z0-9_]+/ui', '', $_GET['jsonCallback']);
        $necessaryKeys  = ['fname', 'lname', 'phone_number', 'email', 'country'];

        foreach( json_decode($data) as $key => $value ) {
            $key = explode(':', $key);
            if(isset( $key[0], $key[1])) {
                $key    = $key[1];

                if( in_array( $key, $necessaryKeys ) ) {
                    $clearData[ $key ]  = $value;
                }
            }
        }

        if(count( $clearData ) > 0) {

            $config     = \CS\Settings\GlobalSettings::getDB();
            $dsn        = "mysql:dbname={$config['dbname']};host={$config['host']}";

            (new \CS\Users\JiraLogger(new \PDO($dsn, $config['username'], $config['password'], $config['options'])))
                ->registerListeners();
            $eventManager   = \EventManager\EventManager::getInstance();
            $eventManager->emit('billing-order-started', $clearData );

            header('content-type: text/javascript');
            die( $callback . '('. json_encode( [ 'status' => 'ok' ], JSON_PRETTY_PRINT ) .');' );
        }

    } else {
        status_header(418); die('access denied');
    }