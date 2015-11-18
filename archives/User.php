<?php



namespace Models;

use PDO,
    Components\ModelDB,
    Components\Build,
    CS\Settings\InvalidSite,
    CS\Models\License\LicenseRecord,
    CS\Users\UsersManager;

class User extends ModelDB{
    
    public function getInfo($user_id)
    {
        $user_id = intval($user_id);
        $row = $this->dbMain()
            ->query("
                SELECT u.*,
                    o.person as name,
                    o.phone as phone_number,
                    o.location as location_order,
                    logs.country as location_auth,
                    unix_timestamp(u.created_at) as registered    
                    
                FROM `users` u 
                LEFT JOIN `orders` o ON u.`id` = o.`user_id`
                LEFT JOIN `users_auth_log` as logs ON u.`id` = logs.`user_id`
                WHERE u.`id` = {$user_id} 
                GROUP BY o.`user_id`
                ORDER BY logs.`id`
                LIMIT 1")
            ->fetch();
        $auth = $this->dbMain()->query("
        select 
            unix_timestamp(logs.created_at) as last_login,
            logs.browser as browser,
            logs.browser_version as browser_version,
            logs.platform as platform,
            logs.platform_version as platform_version,
            logs.mobile as mobile,
            logs.tablet as tablet,
            logs.ip as last_login_ip            
             
        from 
            `users_auth_log` as logs where logs.user_id = {$user_id} order by logs.id DESC Limit 1
        ")->fetch();
        if(empty($auth)){
            return $row;
        }else{
             return array_merge($row,$auth);    
        }
       
    }

    public static function buildSimpleLoginUrl($userId, $siteId, $adminId, $supportMode, $device = null) {
        try{
            $url = Build::data()->controlPanelURL($siteId);
            $salt = Build::data()->directLoginSalt($siteId);
        } catch(InvalidSite $e){
            return '/';
        }
        return  "{$url}/admin/login?" . http_build_query(array(
            'id' => $userId,
            'h' => UsersManager::buildDirectLoginHash($siteId, $userId, $adminId, $salt),
            'device' => $device,
            'admin_id' => $adminId,
            'support_mode' => $supportMode ? : null
        ));
    }

    function getUsersDataTable() {
        $limit = "";
        if (isset($_GET['iDisplayStart'])) {
            $limit = "LIMIT " . intval($_GET['iDisplayStart']) . ", " . intval($_GET['iDisplayLength']);
        }
        
            
        //$total = $this->dbMain()->query("SELECT COUNT(*) FROM `users`")->fetchColumn();

        $search = "";
        $aWhere = array();
        $aStatus = array();
        $sStatus = "";
        $sStatus2 = "";
        $now = time();
        //or
        if($_GET['active']){
            $aStatus[] = " (il.status = 'active') ";
        }
        if($_GET['available']){
            $aStatus[] = " (il.status = 'available') ";
        }        
        if($_GET['inactive']){
            $aStatus[] = " (il.status = 'inactive' AND ((SELECT
                                l.id
                            FROM `licenses` l
                            INNER JOIN `orders_products` op ON l.`order_product_id` = op.`id`
                            INNER JOIN `orders_payments` opay ON opay.`order_id` = op.`order_id`
                            WHERE
                                l.user_id = u.`id` AND
                                l.`status` = 'inactive' AND
                                (opay.`type` = 'fraud' OR opay.`type` = 'refund')
                            LIMIT 1) IS NULL)) ";
        }
        if($_GET['rejected']){
            $aStatus[] = " (il.user_id in (select orr.user_id from orders orr left join orders_payments op on orr.id = op.order_id where op.type = 'refund')) ";
        }  
        if($_GET['fraud']){
            $aStatus[] = " (il.user_id in (select orr.user_id from orders orr left join orders_payments op on orr.id = op.order_id where op.type = 'fraud')) ";
        }
        if($_GET['canceled']){
            $aStatus[] = " (il.status = 'canceled') ";    
        }        
        if($_GET['pending']){
            //$aStatus[] = " (il.status = 'pending') ";    
            $aStatus[] = " (il.user_id in (select orr.user_id from orders as orr  where orr.user_id = u.id and orr.status = 'pending')) ";   
        }        
        if($_GET['no_subscriptions']){
            $sStatus2 = " (l.status is NULL)";   //????
        }        
        //and        
        $aDevices = array();
        
        if($_GET['no_devices']){
            $aDevices[] = " ( d.os is NULL )";        
        }        
        if($_GET['os_android']){
            $aDevices[] = " ( d.os = 'android' )";        
        }
        if($_GET['os_ios']){
            $aDevices[] = " ( d.os = 'ios' )";        
        }
        if($_GET['os_icloud']){
            $aDevices[] = " ( d.os = 'icloud' )";                    
        }
        if($_GET['os_unknown']){
            $aDevices[] = " ( d.os = 'unknown' )";
        }
        
        if(count($aDevices)>0){
            $aWhere[] = " (".implode(" or ",$aDevices).") ";
        }
        
        //AND
        $aProperties = array();
        $sProperties = "";
        if($_GET['trial']){
            $aProperties[] = " (o1.trial = 1)";
        }
        if($_GET['test']){
            $aProperties[] = " (o1.test = 1) ";
        }
        if($_GET['regular']){
            $aProperties[] = " (o1.test = 0 and o1.trial = 0) ";
        }
        if($_GET['gift']){
            $aProperties[] = " ( u.id in (select ilgift.user_id from licenses as ilgift LEFT JOIN products as prods ON ilgift.product_id = prods.id  where prods.origin = 'internal-gift' )) ";
        }
        
        if(count($aProperties)>0){
            $aWhere[] = " (u.id in (select o1.user_id from orders as o1 where o1.user_id = u.id and (".implode(" or ",$aProperties)."))) ";
            //u.id in (select o2.user_id from orders as o2 where o2.user_id = u.id and o2.test = 1)
        }
        
        //AND
        if (!empty($_GET['plans'])) {
            //$aWhere[] = " o.id in (select oin.`order_id` from `orders_products` oin where oin.`product_id` in ({$_GET['plans']}) ) ";
            $aWhere[] = " u.id in (select ords.`user_id` from orders ords LEFT JOIN `orders_products` oin ON ords.id = oin.order_id where ords.status = 'completed' AND oin.`product_id` in ({$_GET['plans']}) AND ords.`user_id` is not NULL group by ords.`user_id`)  ";
        }

        //AND
        if($_GET['no_login']){
            $aWhere[] = " ((select DATE_FORMAT(lg.created_at, '%b %d %Y %l:%i %p') from `users_auth_log` as `lg` where `lg`.user_id = u.id order by `lg`.id DESC Limit 1) is NULL) ";
        }
        
        if($_GET['lock']){
            $aWhere[] = " ( u.locked = 1) ";
        }
        
        if($_GET['timeStart'] && $_GET['timeEnd']){
            $sTime1 = " ( u.created_at BETWEEN '".$_GET['timeStart']."' AND '".$_GET['timeEnd']."' ) ";
            $sTime = "";
            if(!empty($sStatus2)){
                $sTime = " (".$sStatus2." and ".$sTime1.") ";
            }
            if(count($aStatus)>0){
                $sStatus = " (u.id in (select il.user_id from licenses as il where il.user_id = u.id and (" .implode(" or ",$aStatus)."))  and ".$sTime1." ) ".(!empty($sTime)?" or ".$sTime:"");
            }else{
                $sStatus = !empty($sTime)?$sTime:$sTime1;
            }           
            $aWhere[] = $sStatus;
        }

        //and
        if (!empty($_GET['sSearch'])) {
            $aWhere = array();
            $request = $this->dbMain()->quote("%{$_GET['sSearch']}%");
            $search = " (o.id LIKE {$request} OR u.login LIKE {$request} OR o.reference_number LIKE {$request} OR d.id LIKE {$request} OR d.unique_id LIKE {$request}) ";
            $aWhere[] = $search;
        }
        $sWhere = "";
        if(count($aWhere)>0){
            
            $sWhere = " where ".implode(" and ", $aWhere);
        }
        $sql =
            "SELECT 
            SQL_CALC_FOUND_ROWS u.id, u.login, u.locked,
            o.person as name,
            (select unix_timestamp(lg.created_at) from `users_auth_log` as `lg` where `lg`.user_id = u.id order by `lg`.id DESC Limit 1) as last_login,
            unix_timestamp(u.created_at) as registered,
            (select count(*) from licenses as il1 where il1.user_id = u.id) as licenses,
            (select count(*) from devices as d1 where d1.user_id = u.id) as devices
            FROM users u 
            LEFT JOIN devices d ON d.`user_id` = u.id 
            LEFT JOIN licenses l ON l.`user_id` = u.id
            LEFT JOIN orders o ON o.`user_id` = u.id
            
            {$sWhere}
             
            GROUP BY u.`id` 
            ORDER BY u.`id` DESC, last_login " . $limit;
        //echo $sql; die;
        //LEFT JOIN users_auth_log au ON l.`user_id` = au.`user_id`
        

        $items = $this->dbMain()->query($sql)->fetchAll(PDO::FETCH_ASSOC);
        
        $total = $this->dbMain()->query("SELECT FOUND_ROWS()")
            ->fetchColumn();
        return array(
            "sEcho" => intval($_GET['sEcho']),
            "iTotalRecords" => $total,
            "iTotalDisplayRecords" => $total,
            "aaData" => $items
        );
    }

    public function addNote($userId, $message, $adminId) {
        $userId = $this->dbMain()->quote($userId);
        $message = $this->dbMain()->quote(htmlspecialchars($message));
        $adminId = $this->dbMain()->quote($adminId);

        return $this->dbMain()->exec("INSERT INTO `users_notes` SET `user_id` = {$userId}, `admin_id` = {$adminId}, `content` = {$message}");
    }

    public function deleteNote($id) {
        return $this->dbMain()->exec("DELETE FROM `users_notes` WHERE `id` = " . (int)$id);
    }

    public function getUserNotes($userId) {
        $userId = $this->dbMain()->quote($userId);

        return $this->dbMain()->query("
            SELECT 
                un.`id`,
                un.`content`,
                UNIX_TIMESTAMP(un.`date`) as date,
                au.`email` as admin
            FROM `users_notes` un 
            LEFT JOIN `admin_users` au ON au.`id` = un.`admin_id`
            WHERE 
                un.`user_id` = {$userId}
            ORDER BY un.`date` DESC")->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getUserDevices($user_id) {

        $query = $this->dbMain()->prepare("
            SELECT
                d.*,
                UNIX_TIMESTAMP(d.created_at) created_at,
                lic.id lic_id,
                p.id p_id,
                lic.lifetime license_lifetime,
                p.name product_name,
                icl.last_sync,
                icl.last_backup,
                icl.processing
            FROM devices d
            LEFT JOIN licenses lic ON lic.device_id = d.id AND lic.status = :active
            LEFT JOIN products p ON p.id = lic.product_id
            LEFT JOIN devices_icloud icl ON d.id = icl.dev_id 
            WHERE d.user_id = :user_id
            ORDER BY d.created_at"
        );

        $query->bindParam(':user_id', $user_id);
        $query->bindValue(':active', LicenseRecord::STATUS_ACTIVE);

        $devices = array();

        if(!$query->execute()) return $devices;

        foreach($query->fetchAll(PDO::FETCH_ASSOC) as $row){
            foreach($row as $name => $value){
                if(!in_array($name, array('product_name', 'license_lifetime'))){
                    $devices[$row['id']][$name] = $value;
                } elseif($row['lic_id']) switch($name){
                    case 'license_lifetime':
                        $devices[$row['id']]['licenses'][$row['lic_id']]['lifetime'] = $value;
                        break;

                    case 'product_name':
                        $devices[$row['id']]['licenses'][$row['lic_id']]['product']['name'] = $value;
                        break;
                }
            }
        }
        return $devices;
    }
    
    public function getUserSubscriptions($user, $params = array())
    {
        $userId = $this->dbMain()->quote($user);

        $unlimitedValue = $this->dbMain()->quote(\CS\Models\Limitation\LimitationRecord::UNLIMITED_VALUE);

        $select = "SELECT lic.`id`, p.`name`, lic.`amount`, 
            lic.`currency`,
            lic.`activation_date` as `activation_date`,    
            lic.`expiration_date` as `expiration_date`,             
            lic.`status`,
            d.`id` `deviceId`,
            d.`name` `device`,
            IF(dlim.`id` IS NULL, lim.`sms`, dlim.`sms`) `sms`,
            IF(dlim.`id` IS NULL, lim.`call`, dlim.`call`) `call`,
            (SELECT 
                    MAX(`expiration_date`) 
                FROM `licenses` smsl
                INNER JOIN `products` smsp ON smsl.`product_id` = smsp.`id`
                INNER JOIN `limitations` smslim ON smslim.`id` = smsp.`limitation_id`
                WHERE 
                    smsl.`device_id` = lic.`device_id` AND
                    smsl.`product_type` = 'option' AND
                    smslim.sms = {$unlimitedValue}
            ) as `sms_expire_date`,
            (SELECT 
                    MAX(`expiration_date`) 
                FROM `licenses` callsl
                INNER JOIN `products` callsp ON callsl.`product_id` = callsp.`id`
                INNER JOIN `limitations` callslim ON callslim.`id` = callsp.`limitation_id`
                WHERE 
                    callsl.`device_id` = lic.`device_id` AND
                    callsl.`product_type` = 'option' AND
                    callslim.call = {$unlimitedValue}
            ) as `calls_expire_date`";

        $fromWhere = "FROM `licenses` lic
                            INNER JOIN `products` p ON lic.`product_id` = p.`id`
                            INNER JOIN `limitations` lim ON p.`limitation_id` = lim.`id`
                            LEFT JOIN `devices` d ON d.`id` = lic.`device_id`
                            LEFT JOIN `devices_limitations` dlim ON dlim.`device_id` = lic.`device_id`
                            WHERE
                                lic.`user_id` = {$userId} AND
                                lic.`product_type` = 'package'";

        if ($params['active']) {
            $fromWhere .= " AND lic.`status` = 'active'";
        }

        $query = "{$select} {$fromWhere}";
        //echo     $query;
        $result = $this->dbMain()->query($query)->fetchAll(\PDO::FETCH_ASSOC);
        

        /*if (empty($result['aaData'])) {
            $result['iTotalRecords'] = 0;
            $result['iTotalDisplayRecords'] = 0;
        } else {
            $result['iTotalRecords'] = $this->getDb()->query("SELECT COUNT(*) {$fromWhere}")->fetchColumn();

            $result['iTotalDisplayRecords'] = $result['iTotalRecords'];
        }*/

        return $result;
    }
    public function getAuthLog($userID)
    {
        $userID = (int)$userID;
        $limit = "";
        if (isset($_GET['iDisplayStart'])) {
            $limit = "LIMIT " . intval($_GET['iDisplayStart']) . ", " . intval($_GET['iDisplayLength']);
        }

        $items = $this->dbMain()->query(
            "SELECT SQL_CALC_FOUND_ROWS *, 
                UNIX_TIMESTAMP(created_at) as created_at
            FROM `users_auth_log`
            WHERE `user_id` = {$userID}
            ORDER BY `created_at` DESC {$limit}"
        )->fetchAll(PDO::FETCH_ASSOC);

        $total = $this->dbMain()->query("SELECT FOUND_ROWS()")->fetchColumn();

        return array(
            "sEcho" => intval($_GET['sEcho']),
            "iTotalRecords" => $total,
            "iTotalDisplayRecords" => $total,
            "aaData" => $items
        );
    }
    private function getOffset($fromTZ = 'UTC',$toTZ = 'UTC'){
        $dateTimeZoneFrom = new \DateTimeZone($fromTZ);
        $dateTimeZoneTo = new \DateTimeZone($toTZ);

        $dateTimeFrom = new \DateTime("now", $dateTimeZoneFrom);
        $dateTimeTo = new \DateTime("now", $dateTimeZoneTo);

        $timeOffset = $dateTimeZoneTo->getOffset($dateTimeFrom);
        return $timeOffset;
    }
    private function getOS($os,$os_version,$rooted,$root_access){
        $returnOS = "";
        if($os == 'android'){
            $returnOS = "Android ";
            $os_ver = explode('_',$os_version);
            if(isset($os_ver[1]))
                $returnOS .= $os_ver[1]." ";
            else
                $returnOS .= $os_version." ";
            $inf = "";
            if($rooted) {
                if ($root_access) {
                    $inf = '(Rooted with Root Access)';
                } else {
                    $inf = '(Rooted)';
                }
            } else {
                $inf ='(Not Rooted)';  
            }
            $returnOS .= $inf;
        }elseif($os == 'icloud'){
            $returnOS = "Apple iOS ".$os_version." (without Jailbreak)";
        }else{
            $returnOS = "Apple iOS ".$os_version;
        }
        return $returnOS;
    }
        
    public function getUsersForExport($fileName, $properties = array())
    {
        set_time_limit(0);
        $where = '';
        $offset = $this->getOffset('UTC','Europe/Kiev');
        
        if (isset($properties['dev_id'])) {
            $where = 'd.id = '.$properties['dev_id'];
        }

                
        if (!empty($where))
        $where = 'WHERE ' . $where;
        else $where       = '';
        $f = fopen($fileName,"a+");
        
        try{
            
        $sql =
            "SELECT 
            u.login as user_login,
            u.name as user_name,
            u.id as customer_id,            
            (select count(*) from licenses as il1 where il1.user_id = u.id) as plans,
            (select count(*) from devices as d1 where d1.user_id = u.id) as devices,

            unix_timestamp(u.created_at) as registered,
            (select unix_timestamp(lg.created_at) from `users_auth_log` as `lg` where `lg`.user_id = u.id order by `lg`.id DESC Limit 1) as last_login
   
            FROM users u 
            LEFT JOIN devices d ON d.`user_id` = u.id 
            LEFT JOIN licenses l ON l.`user_id` = u.id
            
            LEFT JOIN users_auth_log au ON l.`user_id` = au.`user_id`
            {$where}
            GROUP BY u.`id` 
            ORDER BY u.`id` DESC, au.id ";

        $users = $this->dbMain()->query($sql)->fetchAll(PDO::FETCH_ASSOC);

        foreach($users as $user){
            $select = "SELECT 
                lic.`id`, 
                p.`name` as subscription_plan, 
                lic.`activation_date` as `activation_date`,    
                lic.`expiration_date` as `expiration_date`,             
                lic.`status`,
                dev.`id` as `dev_id`,
                dev.`name` as `device`,
                IF(dev.created_at > 0,unix_timestamp(dev.created_at),'') as installation_date,
                dev.name as device_name,
                dev.model as device_model,
                dev.os as os,
                dev.os_version as os_version,
                dev.app_version as app_version,
                dev.rooted as rooted,
                dev.root_access as root_access,
                IF(dev.os is not NULL,IF(dev.os = 'icloud',IF(icl.last_sync > 0,icl.last_sync,''),IF(dev.last_visit > 0,dev.last_visit ,'')),'') as last_sync,
                lic.activation_date as activation_date,    
                lic.expiration_date as expiration_date,             
                lic.status as status,
                o.phone as phone_number,
                o.location as location
            FROM `licenses` lic
                            INNER JOIN `products` p ON lic.`product_id` = p.`id`
                            INNER JOIN `limitations` lim ON p.`limitation_id` = lim.`id`
                            LEFT JOIN orders o ON o.`user_id` = lic.`user_id`
                            LEFT JOIN `devices` dev ON dev.`id` = lic.`device_id`
                            LEFT JOIN `devices_limitations` dlim ON dlim.`device_id` = lic.`device_id`
                            LEFT JOIN devices_icloud icl ON dev.id = icl.dev_id
            WHERE
                                o.status = 'completed' AND
                                lic.`user_id` = {$user['customer_id']} AND
                                lic.`product_type` = 'package'
                                
            GROUP BY lic.`id`
            ";
                        
            $licensesResult = $this->dbMain()->query($select);
            
            while(($license = $licensesResult->fetch(PDO::FETCH_ASSOC))){
                fputcsv($f, array(
                    'dev_id' => $license['dev_id'], 
                    'Email' => $user['user_login'], 
                    'Name' => $user['user_name'],
                    'Customer ID' => $user['customer_id'],
                    'Plans' => $user['plans'],
                    'Devices' => $user['devices'],
                    'Phone Number' => $license['phone_number'],
                    'Country' => $license['location'],
                    'Registartion Date' => date("M j Y g:i A", $user['registered'] + $offset),
                    'Last Login Date' => date("M j Y g:i A", $user['last_login'] + $offset),
                    'Installation Date' => !empty($license['installation_date']) ? date("M j Y g:i A", $license['installation_date'] + $offset):'',
                    'Device Name' => $license['device_name'] ? $license['device_name']:'',
                    'Device Model' => $license['device_model'] ? $license['device_model']:'',
                    'OS' => $license['os']?$this->getOS($license['os'],$license['os_version'],$license['rooted'],$license['root_access']):'',
                    'App Version' => !empty($license['app_version'])?$license['app_version']:'',
                    'Last Synchronization' => !empty($license['last_sync'])?date("M j Y g:i A", $license['last_sync'] + $offset):'',
                    'Subscription Plan' => $license['subscription_plan'],
                    'From' => date("M j Y g:i A", $license['activation_date'] + $offset),
                    'To' => date("M j Y g:i A", $license['expiration_date'] + $offset),
                    'Status' => $license['status']
                    ));
            }
            //deleted devices
                $select = "SELECT 

                dev.`id` as `dev_id`,
                dev.`name` as `device`,
                IF(dev.created_at > 0,unix_timestamp(dev.created_at),'') as installation_date,
                dev.name as device_name,
                dev.model as device_model,
                dev.os as os,
                dev.os_version as os_version,
                dev.app_version as app_version,
                dev.rooted as rooted,
                dev.root_access as root_access,
                IF(dev.os is not NULL,IF(dev.os = 'icloud',IF(icl.last_sync > 0,icl.last_sync,''),IF(dev.last_visit > 0,dev.last_visit ,'')),'') as last_sync,
                o.phone as phone_number,
                o.location as location
            FROM    
                          `devices` dev LEFT JOIN  users u ON dev.`user_id` = u.`id`
                            LEFT JOIN devices_icloud icl ON dev.id = icl.dev_id
                            LEFT JOIN orders o ON u.`id` = o.`user_id`
            WHERE
                                u.`id` = {$user['customer_id']} AND
                                dev.`deleted` = '1'
            
            ";
            $licensesResult1 = $this->dbMain()->query($select);
            while(($license1 = $licensesResult1->fetch(PDO::FETCH_ASSOC))){
                fputcsv($f, array(
                    'dev_id' => $license1['dev_id'], 
                    'Email' => $user['user_login'], 
                    'Name' => $user['user_name'],
                    'Customer ID' => $user['customer_id'],
                    'Plans' => $user['plans'],
                    'Devices' => $user['devices'],
                    'Phone Number' => $license1['phone_number'],
                    'Country' => $license1['location'],
                    'Registartion Date' => date("M j Y g:i A", $user['registered'] + $offset),
                    'Last Login Date' => date("M j Y g:i A", $user['last_login'] + $offset),
                    'Installation Date' => !empty($license1['installation_date']) ? date("M j Y g:i A", $license1['installation_date'] + $offset):'',
                    'Device Name' => $license1['device_name'] ? $license1['device_name']:'',
                    'Device Model' => $license1['device_model'] ? $license1['device_model']:'',
                    'OS' => $license1['os']?$this->getOS($license1['os'],$license1['os_version'],$license1['rooted'],$license1['root_access']):'',
                    'App Version' => !empty($license1['app_version'])?$license1['app_version']:'',
                    'Last Synchronization' => !empty($license1['last_sync'])?date("M j Y g:i A", $license1['last_sync'] + $offset):'',
                    'Subscription Plan' => $license1['subscription_plan'],
                    'From' => '',
                    'To' => '',
                    'Status' => 'deleted'
                    ));
            }
        
        }
            return true;
        }catch(PDOException $e){
            fclose($f);
        }catch(Exception $ee){
            fclose($f);
        }
        return false;
    }     
    
    public function getEmailsDataTable($user_id , array $params = array())
    {
        $user_id = (int)$user_id;
        if (isset($params['iDisplayStart']) && $params['iDisplayLength'] != '-1') {
            $limit = "LIMIT " . intval($params['iDisplayStart']) . ", " . intval($params['iDisplayLength']);
        } else $limit = "";

        $sql = "
            SELECT 
                SQL_CALC_FOUND_ROWS
                UNIX_TIMESTAMP(`date`) timestamp,
                `type`
            FROM `users_emails_log`
            WHERE `user_id` = {$user_id}
            ORDER BY `date` DESC
            {$limit}";

        $orders = $this->dbMain()->query($sql)->fetchAll(\PDO::FETCH_ASSOC);

        $count = $this->dbMain()
            ->query("SELECT FOUND_ROWS()")
            ->fetchColumn();
        
        return array(
            "sEcho" => intval($_GET['sEcho']),
            "iTotalRecords" => $count,
            "iTotalDisplayRecords" => $count,
            "aaData" => $orders
        );
    }
    
} 