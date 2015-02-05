<?php
$_inc = dirname(__FILE__); // includes
$b_dir = dirname( $_inc ); // folder sites directory

require_once $_inc.'/config.php';
require_once $_inc.'/lib/CDb.php';
require_once $_inc.'/lib/class.phpmail.php';

$_pdo = new includes\lib\CDb();
$_mail = new Phpmail();

// smarty config
require_once 'smarty.config.php';

//$smarty = new Smarty;
//
//// settings smarty
//$smarty->compile_check = true;
//$smarty->debugging = false;
//$smarty->force_compile = 1;
//
//$smarty->setTemplateDir($config['smarty']['tpl_path']);
//$smarty->setCacheDir($config['smarty']['cache_path']);
//$smarty->setCompileDir($config['smarty']['tpl_path_compile']);
//
//$smarty->registerPlugin("function","year_now","print_current_year");
//$smarty->assign("domain",$config['domain']);
//$smarty->assign("domain_http",$config['domain_http']);
//$smarty->assign("img",$config['path_img']);
//$smarty->assign("css",$config['path_css']);
//$smarty->assign("js",$config['path_js']);
//$smarty ->assign('api_device', $config['api_device']);
//$smarty ->assign('site_id', $config['site_id']);

//function validateEmail($email) {
//    return filter_var($email, FILTER_VALIDATE_EMAIL);
//}

function saveDB( $_params, $_pdo ) {
    $_setParams = array();
    
    if(!isset($_params['to']))
        return false;
    
   foreach($_params as $_name => $_value) :
       $_setParams[ $_name ] = htmlspecialchars( trim($_value) );
   endforeach;
    
    $_res = $_pdo -> query("SELECT `id` FROM `subscription_mail` WHERE `to` = '".  mysql_escape_string( trim($_params['to']) )."'");

    
    if(is_array($_res) and count($_res) > 0) {
        return false;
    } else {
        
        $_from = ($_setParams['from']) ? $_setParams['from'] : "no-reply@pumpic.com";
        $_subject = ($_setParams['subject']) ? $_setParams['subject'] : "No subject create!";
        
        $_sql = "INSERT INTO `subscription_mail` SET `to` = '".$_setParams['to']."',
                `from` = '".$_from."',
                `body` = '".serialize(mysql_escape_string($_setParams['body']))."',
                `subject` = '".$_subject."',
                `name` = '".$_setParams['name']."'";
        $_pdo -> query($_sql);
        
        return true;
    }
}



/* opening soon thanks */
$_result = array(
    '_error' => false,
    '_success' => false,
);
    
$_id = rand(0, 9000000);
if(isset($_POST['discount']) and !empty($_POST['discount'])) {
    $_form_discount = $_POST['discount'];
    $title = 'Openig Soon SendMail #'.$_id;


    if(!validateEmail($_form_discount['email'])) {
        $_result['_error'] = "Invalid email format.";
    } else {

        if(!saveDB( array('to' => $_form_discount['email'],
                          'from' => false,
                          'body' => false,
                          'subject' => $title,
                          'name' => $_form_discount['name']), $_pdo) ) {
            $_result['_error'] = "This email address has been already registered";
        } else {
            
            $_data = $_mail -> send( array(
                'from' => 'noreply@pumpic.com',
                'to' => $_form_discount['email'],
                'type' =>  'OpenigSoonThanks_pumpic',
                'params' => [
                    // 'subject' => ['OpenigSoonThanks_pumpic' => 'Openig Soon Thanks'],
                ],
            ) );


            if($_data['success']) {
                $_result['_success'] = 'Thank you for choosing pumpic.com';
            } else
                $_result['_error'] = $_data['error'];


        }
    }
} else
    $_result['_error'] = 'Invalid systems params.';
    
    
// init output params!
$smarty->assign('getOut', $_result);

// init output params
$smarty->display($b_dir.'/templates/pages/opening-soon-thanks.tpl');