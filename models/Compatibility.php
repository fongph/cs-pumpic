<?php
namespace Models;
/*
SELECT SQL_CALC_FOUND_ROWS id, 
	name,
	MATCH(name) AGAINST ('samsung GT-I90' IN BOOLEAN MODE) as rale1, 
	MATCH(name) AGAINST ('"samsung GT-I90"' IN BOOLEAN MODE) as rale2,
	name REGEXP '(samsung*)(.*)(GT-I90*)' as rale3
FROM `phones` 
WHERE MATCH(name) AGAINST ('samsung GT-I90' IN BOOLEAN MODE) or name REGEXP '(samsung*)(.*)(GT-I90*)'
ORDER BY rale2 DESC, rale1 DESC, rale3 DESC
 */
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
                
                $_fileds .= "
                    MATCH(`longname`) AGAINST ('{$searchStr}' IN BOOLEAN MODE) as `rale1`,
                    MATCH(`longname`) AGAINST ('\"{$searchStr}\"' IN BOOLEAN MODE) as `rale2`,
                ";
                if(!empty($searchStr)) {
                    foreach(explode(' ', trim($searchStr)) as $_item) :
                        $_word .= '('.$_item.'*)(.*)';
                        $_one_word = '('.$_item.'*)|';
                    endforeach;
                    $_fileds .= "`longname` REGEXP '".trim($_word)."|".trim($_one_word, '|')."' as `rale3`,";
                    
                    //$whereQuery  = "WHERE LOWER(`longname`) RLIKE {$this->db->quote($searchStr)} ";
                    $whereQuery  = "WHERE MATCH(`longname`) AGAINST ('{$searchStr}' IN BOOLEAN MODE) OR `longname` REGEXP '".trim($_word)."|".trim($_one_word, '|')."'";
                    $orderBy = "ORDER BY `rale2` DESC, `rale1` DESC, `rale3` DESC";
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
            {$orderBy}
            LIMIT {$start}, " . self::$perPage)->fetchAll(); // LIMIT {$start}, " . self::$perPage

//         echo "<pre>";
//         var_dump( $data );
//         echo "</pre>";
            
        return array(
            'count' => !empty($data) ? $this->db->query("SELECT FOUND_ROWS()")->fetchColumn() : 0,
            'list' => $data,
        );
    }
    
    public function getModel( $modelName ) {
        $found = $this->db->query("
            SELECT *
            FROM `phones`  
            WHERE LOWER( REPLACE( `longname`, ' ', '-') ) = {$this->db->quote($modelName)}")->fetch();
        
        if($found)
            $found = self::phoneDataPrepare($found);

        return $found;
    }

    public static function phoneDataPrepare(array $data)
    {
        $groups = array(
            'Manage calls' => array(
                'call_log' => 'Call History',
//                    'block_number' => 'Blocking calls & SMS by number',
            ),
            'Instant messengers' => array(
                'skype' => 'Skype',
                'viber' => 'Viber',
                'whatsapp' => 'Whatsapp',
                'facebook' => 'Facebook',
//                    'bb_messenger' => 'BlackBerry Messenger',
//                    'pin_message' => 'PIN Message',
            ),
            'Manage SMS' => array(
                'sms_log' => 'SMS History',
                'block_word' => 'SMS Blocking'
            ),
            'Browser' => array(
                'browser_history' => 'Browser history',
                'browser_bookmarks' => 'Bookmarks',
//                    'blocking_sites' => 'Blocking web sites',
            ),
            'Other features' => array(
                'location_history'  => 'Location history',
                'contacts' => 'Contacts',
                'calendar' => 'Calendar',
                'photos' => 'Photos',
                'emails' => 'Emails',
                'application'  => 'Application',
                'app_list_block' => 'Websites & APPS blocking',
                'video' => 'View user video',
                'historical_data'  => 'Historical data',
                'sms_commands' => 'SMS Commands',
                'keylogger' => 'Keylogger',
                'lock_device' => 'Blocked list number',
                'sim_change_notification' => 'SIM change',
                'reboot_app'  => 'Reboot application',
                'reboot_device'  => 'Reboot device',
                'bad_word_sms'  => 'Bad word SMS',
//                    'gps' => 'Current GPS location',

            ),
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
        );


        foreach ($groups as $key => $features) {
            $group = array();
            foreach ($features as $id => $name) {
                if (isset($data[$id]) and !empty($data[$id])) {
                    if (isset($data[$id . '_comment']) && strlen($data[$id . '_comment'])) {
                        $group[$name] = $data[$id . '_comment'];
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
    
}