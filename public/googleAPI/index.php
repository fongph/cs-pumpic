<?php
    // ini_set('display_errors', 1);
    // error_reporting(-1);

    /*
     * Basic usage example:
     *  - Redirect to the oAuth page if no access token is present
     *  - Handles the 'code' return from the oAuth page,
     *    fetches an access token save it in a session variable
     *  - Makes an API request using the access token in the session var
     *
     * Make sure to request your API-key first at: 
     *    https://console.developers.google.com
     */
 
    // Analytics account id like, 'ga:xxxxxxx'
    $account_id = 'ga:93503867'; //'ga:97633209'; // 'ga:103771050';

    session_start();
    include('../../includes/lib/google/GoogleAnalyticsAPI.php');
    // require ROOT_PATH . 'vendor/autoload.php';

    $ga = new includes\lib\GoogleAnalyticsAPI('service');
    $ga->auth->setClientId('35839110757-7759svhb01lfqel581c83dv0b60apaof.apps.googleusercontent.com'); // From the APIs console
    $ga->auth->setEmail('35839110757-7759svhb01lfqel581c83dv0b60apaof@developer.gserviceaccount.com'); // From the APIs console
    $ga->auth->setPrivateKey('./p12/Pumpic-8d3b545958ff.p12'); // Path to the .p12 file
    
//    $ga->auth->setClientId('349081382006-k5bfi1tqnodmgblc0g038mc7tsf4464u@developer.gserviceaccount.com'); // From the APIs console
//    $ga->auth->setEmail('349081382006-k5bfi1tqnodmgblc0g038mc7tsf4464u@developer.gserviceaccount.com'); // From the APIs console
//    $ga->auth->setPrivateKey('./p12/google analitics-68770feb23ae.p12'); // Path to the .p12 file
    

    $auth = $ga->auth->getAccessToken();
    
    // Try to get the AccessToken
    if ($auth['http_code'] == 200) {
            $accessToken = $auth['access_token'];
            $tokenExpires = $auth['expires_in'];
            $tokenCreated = time();
    } else {
           die("Sorry, something wend wrong retrieving the oAuth tokens");
    }
    
    /*
     *  Step 3: Do real stuff!
     *          If we're here, we sure we've got an access token
     */
//    echo "<pre>";
//    var_dump( $accessToken );
//    echo "</pre>";
    $ga->setAccessToken($accessToken);
    $ga->setAccountId($account_id);

    
    // Set the default params. For example the start/end dates and max-results
//    $defaults = array(
//        'start-date' => date('Y-m-d', strtotime('-1 month')),
//        'end-date'   => date('Y-m-d'),
//    );
//    $ga->setDefaultQueryParams($defaults);
//
//    $params = array(
//        'metrics'    => 'ga:visits',
//        'dimensions' => 'ga:date',
//    );
//    $visits = $ga->query($params);
    
//    $s_params = array(
//        'metrics'    => 'ga:pageviews,ga:sessionDuration,ga:exits',
//        'dimensions' => 'ga:source,ga:pagePath,ga:referralPath',
//        'filters'    => 'ga:pagePath==/store.html,ga:medium==referral',
//        'sort'       => '-ga:pageviews',
//        // 'output'    => 'dataTable',
//    );
//    $source = $ga->query($s_params);
    
    // googd worck
    $s_params = array(
        'start-date' => '2015-02-05', // '1daysAgo',
        'end-date'   => '2015-02-05', //'yesterday',
        'metrics'    => 'ga:pageviews,ga:sessionDuration,ga:exits',
        'dimensions' => 'ga:source,ga:pagePath,ga:referralPath,ga:fullReferrer,ga:landingPagePath,ga:medium', // ga:fullReferrer
        'filters'    => 'ga:medium==media',
        // 'filters'    => 'ga:pagePath==/store.html;ga:hostname==pumpic.com,ga:medium==referral', // ga:pagePath==/;
        'max-results' => 100,
        'sort'       => '-ga:pageviews',
        'output'    => 'dataTable',
        'samplingLevel' => 'HIGHER_PRECISION',
    );
    
    /*
    // Transactions
    $s_params = array(
        'start-date'    => '30daysAgo', //'2015-02-05', // '1daysAgo',
        'end-date'      => 'yesterday', //'2015-02-05', //'yesterday',
        'metrics'       => 'ga:transactions,ga:itemRevenue', // ga:itemRevenue
        //'dimensions'    => 'ga:date,ga:transactionId', // ga:transactionId, ,ga:source,ga:medium,ga:campaign,ga:adContent,ga:productSku
        'dimensions'    => 'ga:transactionId,ga:date,ga:hour,ga:source,ga:fullReferrer,ga:landingPagePath,ga:medium', // ga:minute,
        // 'filters'       => 'ga:transactionId==PUM150618-7417-41107',
        'output'        => 'dataTable',
        'samplingLevel' => 'HIGHER_PRECISION',
    );
    */
    
    
    $source = $ga->query($s_params);
    
//    echo "<pre>";
//    var_dump( $source );
//    echo "</pre>";
    
    echo "totalResults = ". $source['totalResults'] ."<br />";
    
    if(isset($source['dataTable'])) {
        echo "<table>";
        // columns
        if(isset($source['dataTable']['cols'])) {
            echo "<tr>";
            foreach($source['dataTable']['cols'] as $cols) {
                echo "<th>".$cols['label']."</th>";
            }
            echo "</tr>";
        }    

        //rows
        if(isset($source['dataTable']['rows'])) {
            foreach($source['dataTable']['rows'] as $_k => $rows) :
                
                
                echo "<tr>";
                    foreach($source['dataTable']['rows'][ $_k ] as $key => $_item) {
                        
                        foreach((array)$_item as $_value) {
                            echo "<td>".(string)$_value['v']."</td>";
                        }
                        
                    }
                echo "</tr>";
            endforeach;
        }
        
        echo "</table>";
    }
    
    
    // file_put_contents( './log/results.log', json_encode($source), FILE_APPEND);
    
    
//    print "<pre>";
//    var_dump($source, $ga ->getAudienceStatistics());
//    print "</pre>";
   
