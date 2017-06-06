<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 16.12.16
 * Time: 10:24
 */
// smarty config

function di() {
    global $di;
    return $di ? $di : $di = require __DIR__ . '/di.php';
}

$smarty->assign('di', di(), true);


function smarty_function_getUserInfo($params, $template) {
    require_once 'lib/users/ManagerUser.php';
    $obj = new includes\lib\users\ManagerUser( array() );
    $user = array();

    if($obj->getUserIdByAuth()) {
        $_user = $obj->getUser( $obj->getUserIdByAuth() );
        $user['name'] = ($_user->getName()) ? $_user->getName() : false;
        $user['login'] = ($_user->getLogin()) ? $_user->getLogin() : false;
    }

    $template->assign('getUserInfo', (count($user) > 0) ?  $user: false);
}
/* isPhone */
function smarty_modifier_isPhone() { // $params, $template
    // $params
    require_once 'lib/users/ManagerUser.php';
    $obj = new includes\lib\users\ManagerUser( array() );
    $phone = $obj ->isPhone();
    return ((int)$phone) ? $phone : '';
}
