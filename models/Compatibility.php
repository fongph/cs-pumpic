<?php
namespace Models;
use PDO;

class Compatibility {

    const FIND_ALL = 1;
    const FIND_BY_OS = 2;
    const FIND_BY_QUERY = 3;
    
    protected static $perPage = 12;
    
    public function __construct(PDO $db)
    {
        $this->db = $db;
    }
    
    public static function devicesPerPage()
    {
        return self::$perPage;
    }

    public function getPhones($searchType = self::FIND_ALL, $page = 0, $searchStr = '') {
        $_fileds = '';
        $orderBy = 'ORDER BY popularity DESC';
        switch($searchType){

            case self::FIND_ALL:
                $whereQuery = '';
                break;
            
            case self::FIND_BY_OS:
                $whereQuery  = "WHERE `os` = {$this->db->quote($searchStr)} ";
                break;

            case self::FIND_BY_QUERY:
                $_word = '';
                $_one_word = '';
                $_rel = '';
                
                if(!empty($searchStr)) {
                    $firstWord = trim($searchStr);
                    $_exp = explode(' ', trim($searchStr));
                    
                    $_word .= '^'.  str_replace(' ', '*', trim($searchStr)) .'$|';
                    $_word .= str_replace(' ', '(.*)', trim($searchStr)) .'(.*)|';
                    
                    if(count($_exp) > 1):
                        // v1
                        foreach($_exp as $_key => $_item) :
                            
                            if(strlen($_item) > 1) :
                                if(!empty($_exp[0]))
                                    $firstWord = $_exp[0];
                                
                                $_rel .= " +". $_item;
                                if($_key == count($_exp) - 1) {
                                    $_word .= $_item.'(.*)+|';
                                } else if($_key < count($_exp) - 1) {
                                    $_word .= $_item.'(.*)+|';
                                }
                            endif;
                            
                        endforeach;
                        
                    else:
                        $_rel .= " +". trim($searchStr);
                    endif;
                    
                    $_fileds .= "
                        (
                           (0.1*(IF((`longname` REGEXP '^". trim($firstWord) ."(.*)') > 0 , 1, 0))) +
                           (0.1*(IF((`longname` REGEXP '^". trim($searchStr) ."$') > 0 , 1, 0))) +    
                           (0.6*(MATCH(`longname`) AGAINST ('{$searchStr}' IN BOOLEAN MODE))) +
                           (0.6*(MATCH(`longname`) AGAINST ('\"{$searchStr}\"' IN BOOLEAN MODE))) +
                           (0.6*(MATCH(`longname`) AGAINST ('".trim($_rel)."' IN BOOLEAN MODE))) + 
                           (1.3 * COUNT(IF(MATCH (`longname`) AGAINST ('*{$searchStr}*' IN BOOLEAN MODE),1,0))) +
                           (1.3 * IF(LOCATE('{$searchStr}',`longname`)>0,1,0)) + 
                           (1.3 * `longname` LIKE '%{$searchStr}%')    
                        ) as `_sort`,
                    ";
                    
                    $whereQuery  = "WHERE `longname` REGEXP '".trim($_word, '|')."'";
                    
                    // $whereQuery  = "WHERE MATCH(`longname`) AGAINST ('{$searchStr}' IN BOOLEAN MODE) OR `longname` REGEXP '".trim($_word)."'";
                    
                    // $_fileds .= "`longname` REGEXP '".trim($_word)."|".trim($_one_word, '|')."' as `rale3`,";
                    // $whereQuery  = "WHERE MATCH(`longname`) AGAINST ('{$searchStr}' IN BOOLEAN MODE) OR `longname` REGEXP '".trim($_word)."|".trim($_one_word, '|')."'";
                    
                    $groupBy = 'GROUP BY `id`';
                    $orderBy = "ORDER BY `_sort` DESC";
                } else $whereQuery = '';
                break;

            default: throw new \ErrorException('Illegal search type');
        }
        
        $start = (int)$page * self::$perPage;
        $data = $this->db->query("
            SELECT SQL_CALC_FOUND_ROWS 
                rowid as id,
                rowid as url,
                longname as name,
                REPLACE( `longname`, ' ', '-') as uri_name,
                path_small as img, 
                path_big as b_img,
                path_middle as m_img,
                os, 
                os_ver as version,
                {$_fileds}    
                tested FROM `phones`
            {$whereQuery} 
            {$groupBy}    
            {$orderBy}
            LIMIT {$start}, " . self::$perPage)->fetchAll(); // LIMIT {$start}, " . self::$perPage

        return array(
            'count' => !empty($data) ? $this->db->query("SELECT FOUND_ROWS()")->fetchColumn() : 0,
            'list' => $data,
        );
    }
    
    public function getModel( $modelName ) {
        $found = $this->db->query("
            SELECT *,
                 LOWER( REPLACE( `longname`, ' ', '-') ) as alies
            FROM `phones`  
            WHERE LOWER( REPLACE( `longname`, ' ', '-') ) = {$this->db->quote($modelName)}")->fetch();
        
        if($found)
            $found = self::phoneDataPrepare($found);

        return $found;
    }

    public static function phoneDataPrepare(array $data)
    {
        $groups = array(
            // Calls & Texts
            'Calls & SMS' => array(
                'call_log' => 'Calls history',
                'lock_device' => 'Calls blocking',
                'sms_log' => 'Text message history', // SMS history
                'block_word' => 'SMS blocking',
                'bad_word_sms'  => 'Block SMS by keywords',
                'sms_daily_limiting' => 'SMS daily limiting',
//                    'block_number' => 'Blocking calls & SMS by number',
            ),
            // Instant messengers
            // Socials
            'Social Media' => array( 
                'skype' => 'Skype',
                'viber' => 'Viber',
                'whatsapp' => 'WhatsApp',
                'facebook' => 'Facebook',
                'instagram' => 'Instagram',
                'kik'       => 'Kik',
//                    'bb_messenger' => 'BlackBerry Messenger',
//                    'pin_message' => 'PIN Message',
            ),
            // Control Apps
            'Apps Control' => array(
                'application'  => 'Applications list',
                'app_list_block' => 'Apps blocking',
                'keylogger' => 'Keylogger',
            ),
            //Browser
            'Browsing' => array(
                'browser_history' => 'Browsing history',
                'browser_bookmarks' => 'Bookmarks',
                'blocking_sites' => 'Websites blocking',
            ),
            'Other features' => array(
                'location_history'  => 'Location history',
                'contacts' => 'Contacts',
                'calendar' => 'Calendar',
                'photos' => 'Photos',
                'emails' => 'Emails',
                'video' => 'Videos', // View user video
                'historical_data'  => 'Historical data',
                'sms_commands' => 'SMS commands',
                'sim_change_notification' => 'SIM card change alert',
                // 'reboot_app'  => 'Reboot application',
                'reboot_device'  => 'Reboot device',
                'geo_fences'    => 'Geo-fences',
                'icloud_solution'   => 'iCloud solution',
//                    'gps' => 'Current GPS location',

            ),
        );
        
        // only this OS
        $os_iOS = array(
            'Other features' => array(
                'icloud_solution'   => 'iCloud monitoring (jailbreak - free)',
            ),    
        );
        
        // add commit info 
        $addInfo = array(
            'ios' => [
                'Calls & SMS' => array(
                    // Calls blocking
                    'lock_device' => '<strong>Jailbreak Needed</strong>',
                    // SMS blocking
                    'block_word' => '<strong>Jailbreak Needed</strong>',
                    // SMS daily limiting
                    'sms_daily_limiting' => '<strong>Jailbreak Needed</strong>',
                    'bad_word_sms' => '<strong>Jailbreak Needed</strong>',
                ),
                'Apps Control' => array(
                    // Applications list
                    'application'  => '<strong>Jailbreak Needed</strong>',
                    'app_list_block' => '<strong>Jailbreak Needed</strong>',
                    // Keylogger
                    'keylogger' => '<strong>Jailbreak Needed</strong>',
                ),    
                'Browsing' => array(
                    // Websites blocking
                    'blocking_sites' => '<strong>Jailbreak Needed</strong>',
                ),
                
                'Social Media' => array( 
                    // 'skype' => '<strong>Jailbreak Needed</strong>',
                    'viber' => '<strong>Jailbreak Needed</strong>',
                    // 'whatsapp' => '<strong>Jailbreak Needed</strong>',
                    'facebook' => '<strong>Jailbreak Needed</strong>',
                    'instagram' => '<strong>Jailbreak Needed</strong>',
                    'kik'       => '<strong>Jailbreak Needed</strong>',
                ),
                
                'Other features' => array(
                    // Location history
                    'location_history'  => '<strong>Jailbreak Needed</strong>',
                    // Geo-fences
                    'geo_fences'    => '<strong>Jailbreak Needed</strong>',
                    // Photos
                    'photos' => '<strong>Jailbreak Needed</strong>',
                    // Emails
                    'emails' => '<strong>Jailbreak Needed</strong>',
                    // Videos
                    'video' => '<strong>Jailbreak Needed</strong>',
                    // SMS commands
                    'sms_commands' => '<strong>Jailbreak Needed</strong>',
                    'sim_change_notification' => '<strong>Jailbreak Needed</strong>',
                ),    
            ],
            'android' => [
                'Calls & SMS' => array(
                    // SMS blocking
                    //'block_word' => '<strong>Not available for Android 5.0 and newer versions.</strong>', // Root Required
                    // SMS daily limiting
                    'sms_daily_limiting' => '<strong>Activated Keylogger Needed</strong>',
                    'bad_word_sms'  => '<strong>Not available for Android 5.0 and newer versions.</strong>',
                ),
//                'Apps Control' => array( 
//                    'keylogger' => '<strong>Activated Keylogger Needed</strong>',
//                ),
                'Social Media' => array( 
                    'skype' => '<strong>Root Required</strong>',
                    'viber' => '<strong>Root Required</strong>',
                    'whatsapp' => '<strong>Root Required</strong>',
                    'facebook' => '<strong>Root Required</strong>',
                    'instagram' => '<strong>Root Required</strong>',
                    'kik'       => '<strong>Root Required</strong>',
                ),
                'Other features' => array( 
                    // Emails
                    'emails' => '<strong>Root Required</strong>',
                    // SMS commands
                    // 'sms_commands' => '<strong>Not supported: on Android 4.4+.</strong>',
                ),
            ],
        );
        
        
        $result = array(
            'name' => $data['longname'],
            'img' => $data['path_big'],
            'm_img' => $data['path_middle'],
            'version' => $data['os_ver'],
            'os' => $data['os'],
            'tested' => $data['tested'],
            'features' => array(),
            'custom_text' => $data['custom_text'],
            'alies' => (isset( $data['alies'] ) and !empty($data['alies'])) ? $data['alies'] : false,
        );


        foreach ($groups as $key => $features) {
            $group = array();
            foreach ($features as $id => $name) {
                if (isset($data[$id]) and !empty($data[$id])) {
                    $_os = (isset($data['os'])) ? trim(strtolower($data['os']) ) : false;
                    $name = (isset($os_iOS[$key][$id])) ? $os_iOS[$key][$id] : $name;
                    
                    if (isset($data[$id . '_comment']) && strlen($data[$id . '_comment'])) {
                        $_add_info = '<br />';
                        if($_os and isset($addInfo[ $_os ][$key][$id])) {
                            $_add_info .= $addInfo[ $_os ][$key][$id];
                        } 
                        
                        $group[$name] = $data[$id . '_comment'].$_add_info;
                    } else {
                        $group[$name] = false;
                    }
                }
            }

            if (count($group)) {
                $result['features'][$key] = $group;
            }
        }
        return $result;
    }
    
    public function getCategories() {
        $categoties = $this->db->query("
            SELECT *
            FROM `phones_category`  
            WHERE `hidden` = 0 ORDER BY `sort`")->fetchAll();
        if(is_array($categoties) and count($categoties) > 0) {
            return $categoties;
        } else
            return false;
            
    }
    
    public function getModelCatID( $cat_id ) {
        $_res = array();
        if(!$cat_id) return false;
        
        $_models = $this->db->query("
            SELECT *,
                LOWER( REPLACE( `longname`, ' ', '-') ) as alies
            FROM `phones`  
            WHERE `cat_id` = ".$cat_id." ORDER BY `popularity`")->fetchAll();
        if(is_array($_models) and count($_models) > 0) {
            
            // add features
            foreach($_models as $key => $_item):
                //$_res[$key]['count'] = ceil(count( $_models )/4);
                $_res[$key] = self::phoneDataPrepare($_item);
            endforeach;
            
            return $_res;
        } else
            return false;
    }
    
    public function getCategoryModels() {
        $_data = false;
        $cats = $this -> getCategories();
        if($cats) {
            
            foreach($cats as $_item) {
                if($models = $this ->getModelCatID((int)$_item['id'])) {
                    $_data[] = array(
                        'cat_id' => $_item['id'],
                        'cat_name' => $_item['name'],
                        'count' => ceil(count($models) / 4),
                        'models' => $models,
                    );
                }
                
                
            }
        }
        return $_data;
    }
    
}