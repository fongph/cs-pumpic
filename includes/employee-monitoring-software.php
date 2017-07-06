<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/lib/Currency.php';
require_once $_inc.'/functions.php';
require_once $_inc.'/di_function.php';
require_once $_inc.'/lib/class.phpmail.php';

$obj = new includes\lib\users\Order;
$_mail = new Phpmail( $config['db_blog'] );

$_result = array(
    'error' => false,
    'success' => false,
);
// smarty config
require_once 'smarty.config.php';

/* list order */
$products = $obj ->getProducts('second-landing');

/* form_order */
$_request = (isset($_POST['price']) and !empty($_POST['price'])) ? $_POST['price']: false;
if($_request['productID']) {
    // $_order ->setSession('pumpic_order', array('productID' => (int)$_request['productID']));

    if($_request['productID'] and $obj -> getUserIdByAuth()) {
        // $_order ->unsetSession('pumpic_order'); // clear session

        $_url = $obj -> createOrder((int)$_request['productID']);
        if($_url) {
            $obj -> _redirect( $_url );
        }
        // create order
    } else if((int)$_request['productID']) {
        $obj -> _redirect('/buy.html?productID='.$_request['productID']);

    }

}

// default
if(is_array($products)) {
    if(isset($products['iosiCloud'])) {
        foreach($products['iosiCloud'] as $item) :
            if ($item['period'] == 6 && $item['id']) {
                $smarty->assign('defaultIosiCloudProduct', $item['id']);
                $smarty->assign('defaultIosiCloudPrice', round($item['price'] / $item['period'], 2));
            }
            if ($item['period'] == 12 || $item['period'] == 24) {
                $itemNumber = array_search($item, $products['iosiCloud']);
                unset($products['iosiCloud'][$itemNumber]);
            }
        endforeach;
    }
    // Basic
    if(isset($products['androidBasic'])) {
        foreach($products['androidBasic'] as $item) :
            if ($item['period'] == 12 && $item['id']) {
                $smarty->assign('defaultAndriodBasicProduct', $item['id']);
                $smarty->assign('defaultAndriodBasicPrice', round($item['price'] / $item['period'], 2));
            }
        endforeach;
    }
    if(isset($products['androidPremium'])) {
        foreach($products['androidPremium'] as $item) :
            if ($item['period'] == 12 && $item['id']) {
                $smarty->assign('defaultAndroidPremiumProduct', $item['id']);
                $smarty->assign('defaultAndroidPremiumPrice', round($item['price'] / $item['period'], 2));
            }
        endforeach;
    }

}
$_curr = system\Currency::getInstance();
$_curr -> setFilter( ['iso' => ['USD','EUR','GBP','CAD','AUD'] ] );
$_rates = $_curr -> getCurrencies();

$smarty->assign('rates', json_encode($_rates));

// init output params!
$smarty->assign('getProducts', $products);

smarty_function_getUserInfo(array(), $smarty);

if(isset($_SERVER['HTTP_X_REQUESTED_WITH']) && !empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {

    header("Content-Type: application/json");
    header("Cache-Control: no-cache");
    header("Pragma: no-cache");

    $smarty->caching = false;
    $smarty->compile_check = false;
    $smarty->force_compile = false;
    $smarty->debugging = false;

    // init function json
    function json_modifier($value) {
        return json_encode($value);
    }

    function json_function($params, &$smarty) {
        return json_encode($params);
    }

    $_request = (isset($_POST['params']) and !empty($_POST['params'])) ? $_POST['params']: false;



    // register function and modifier
    $smarty->registerPlugin("modifier",'json', 'json_modifier');
    $smarty->registerPlugin("function",'json', 'json_function');

    //echo "<pre>";
    //var_dump( $_request );
    //echo "</pre>";

    // generate params
    $smarty->assign('arr', $_mail -> _sendEmployeeRequest($_request) );

    // init output params
    $smarty->display($b_dir.'/templates/json/employee.tpl');
} else {

    // validate
    if (isset($_POST['name']) and empty($_POST['name']))
        $_result['error']['name'] = "The Name field is empty";

    if (isset($_POST['email']) and !$_mail->validateEmail($_POST['email']))
        $_result['error']['email'] = "The Email field is empty";

    if (isset($_POST['captcha']) and !$_mail->validateCaptcha($_POST['captcha']))
        $_result['error']['captcha'] = "Invalid CAPTCHA.";

    if (isset($_POST['type']) and empty($_POST['type']))
        $_result['error']['type'] = "The Question type field is empty";

    if (isset($_POST['description']) and empty($_POST['description']))
        $_result['error']['description'] = "The Question field is empty";

    if (!$_result['error']) {

        if ($mailEmployee = $_mail->_sendEmployeeRequest($_POST)) {
            $_result = array_merge($_result, $mailEmployee);
        }

    }

    if ($_result['success']) unset($_POST);

    // init output params!
    $smarty->assign('getOut', $_result);

    $smarty->display($b_dir. '/templates/pages/employee-monitoring-software.tpl');

}
