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
                           (0.1*(IF((`longname` REGEXP ". $this->db->quote('^' . trim($firstWord) . '(.*)') . ") > 0 , 1, 0))) +
                           (0.1*(IF((`longname` REGEXP ". $this->db->quote('^' . trim($searchStr) . '$') .") > 0 , 1, 0))) +
                           (0.6*(MATCH(`longname`) AGAINST (" . $this->db->quote($searchStr) . " IN BOOLEAN MODE))) +
                           (0.6*(MATCH(`longname`) AGAINST (" . $this->db->quote('"' . $searchStr . '"') . " IN BOOLEAN MODE))) +
                           (0.6*(MATCH(`longname`) AGAINST (" . $this->db->quote(trim($_rel)) . " IN BOOLEAN MODE))) +
                           (1.3 * COUNT(IF(MATCH (`longname`) AGAINST (" . $this->db->quote('*' . $searchStr . '*') . " IN BOOLEAN MODE),1,0))) +
                           (1.3 * IF(LOCATE(" . $this->db->quote($searchStr) . ",`longname`)>0,1,0)) +
                           (1.3 * `longname` LIKE " . $this->db->quote('%' . $searchStr . '%') . ")
                        ) as `_sort`,
                    ";

                    $whereQuery  = "WHERE `longname` REGEXP " . $this->db->quote(trim($_word, '|'));

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
                LOWER( REPLACE( REPLACE( `longname`, ' ', '-'), '/', '-') ) as uri_name,
                path_small as img,
                path_big as b_img,
                path_middle as m_img,
                os,
                os_ver as version,
                gsm_module,
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

    public function isPartUppercase($string) {
        return (bool) preg_match('/[A-Z]/', $string);
    }

    public function getModel( $modelName ) {
        $found = $this->db->query("
            SELECT *,
                 LOWER( REPLACE( REPLACE( `longname`, ' ', '-'), '/', '-') ) as alies
            FROM `phones`
            WHERE LOWER( REPLACE( REPLACE( `longname`, ' ', '-'), '/', '-') ) = {$this->db->quote($modelName)}")->fetch();

        if($found)
            $found = self::phoneDataPrepare($found);

        return $found;
    }

    public static function phoneDataPrepare(array $data)
    {
        $groups = array(
            // Calls & Texts
            'Calls & SMS' => array(
                'call_log' => 'Call <br> history <i class="icon-icloud  icloud-compatibility"></i>',
                'lock_device' => 'Call blocking',
                'sms_log' => 'Text message history <i class="icon-icloud  icloud-compatibility"></i>', // SMS history
                'block_word' => 'SMS blocking',
                'bad_word_sms'  => 'Block SMS by keywords',
                'sms_daily_limiting' => 'SMS daily limiting',
//                    'block_number' => 'Blocking calls & SMS by number',
            ),
            // Instant messengers
            // Socials
            'Social Media' => array(
                'skype' => 'Skype <i class="icon-icloud  icloud-compatibility"></i>',
                'viber' => 'Viber',
                'whatsapp' => 'WhatsApp <i class="icon-icloud  icloud-compatibility"></i>',
                'facebook' => 'Facebook',
                'instagram' => 'Instagram',
                'kik'       => 'Kik <i class="icon-icloud  icloud-compatibility"></i>',
                'snapchat' => 'Snapchat',
//                    'bb_messenger' => 'BlackBerry Messenger',
//                    'pin_message' => 'PIN Message',
            ),
            // Control Apps
            'Apps Control' => array(
                'application'  => 'Application list',
                'app_list_block' => 'App blocking',
                'keylogger' => 'Keylogger',
            ),
            //Browser
            'Browsing' => array(
                'browser_history' => 'Browsing history <i class="icon-icloud  icloud-compatibility"></i>',
                'browser_bookmarks' => 'Bookmarks <i class="icon-icloud  icloud-compatibility"></i>',
                'blocking_sites' => 'Website blocking',
            ),
            'Other features' => array(
                'location_history'  => 'Location history <i class="icon-icloud  icloud-compatibility"></i>',
                'contacts' => 'Contacts <i class="icon-icloud  icloud-compatibility"></i>',
                'calendar' => 'Calendar <i class="icon-icloud  icloud-compatibility"></i>',
                'photos' => 'Photos <i class="icon-icloud  icloud-compatibility"></i>',
                'emails' => 'Emails',
                'video' => 'Videos', // View user video
                'historical_data'  => 'Historical <br> data <i class="icon-icloud  icloud-compatibility"></i>',
                'sms_commands' => 'SMS commands',
                'sim_change_notification' => 'SIM card change alert',
                // 'reboot_app'  => 'Reboot application',
                'reboot_device'  => 'Reboot device',
                'geo_fences'    => 'Geo-fences',
                'notes' => 'Notes <i class="icon-icloud  icloud-compatibility"></i>',
                'icloud_solution'   => 'iCloud solution',


//                    'gps' => 'Current GPS location',

            ),
        );

        if(isset($data['gsm_module']) and !$data['gsm_module'])
            unset($groups['Calls & SMS']);

        // only this OS
        $os_iOS = array(
            'Other features' => array(
                'icloud_solution'   => '<strong>iCloud monitoring</strong> (without jailbreak up to iOS 10.0.1)',
            ),
        );

        // add commit info
        $addInfo = array(
            'ios' => [
                'Calls & SMS' => array(
                    'call_log' => '<strong>iOS: Jailbreak is not needed</strong>',
                    // Calls blocking
                    'lock_device' => '',
                    // SMS blocking
                    'block_word' => '',
                    // SMS daily limiting
                    'sms_daily_limiting' => '',
                    'bad_word_sms' => '',
                    'sms_log' => '<strong>iOS: Jailbreak is not needed</strong>'
                ),
                'Apps Control' => array(
                    // Applications list
                    'application'  => '',
                    'app_list_block' => '',
                    // Keylogger
                    'keylogger' => '',
                ),
                'Browsing' => array(
                    // Websites blocking
                    'blocking_sites' => '',
                    'browser_history' => '<strong>iOS: Jailbreak is not needed</strong>',
                    'browser_bookmarks' => '<strong>iOS: Jailbreak is not needed</strong>',
                ),

                'Social Media' => array(
                    'skype' => '<strong>iOS: For 8.4.1 and older versions Jailbreak is not needed</strong>',
                    'viber' => '',
                    'whatsapp' => '<strong>iOS: Jailbreak is not needed</strong>',
                    'facebook' => '',
                    'instagram' => '',
                    'kik'       => '<strong>From 9.0 and up Jailbreak is not needed</strong>',
                    'snapchat' => '',
                ),

                'Other features' => array(
                    // Location history
                    'location_history'  => '<strong>iOS: Jailbreak is not needed</strong>',
                    // Geo-fences
                    'geo_fences'    => '',
                    // Photos
                    'photos' => '<strong>iOS: Jailbreak is not needed</strong>',
                    // Emails
                    'emails' => '',
                    // Videos
                    'video' => '',
                    // SMS commands
                    'sms_commands' => '',
                    'sim_change_notification' => '',
                    'contacts' => '<strong>iOS: Jailbreak is not needed</strong>',
                    'calendar' => '<strong>iOS: Jailbreak is not needed</strong>',
                    'historical_data'  => '<strong>iOS: Jailbreak is not needed</strong>',
                    'notes' => '<strong>iOS: For 8.4.1 and older versions Jailbreak is not needed</strong>',
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
                    'snapchat' => '<strong>Root and Xposed Required</strong>',
                    // SMS commands
                    // 'sms_commands' => '<strong>Not supported: on Android 4.4+.</strong>',
                ),
            ],
        );


        $result = array(
            'rowid' => $data['rowid'],
            'cdate' => $data['cdate'],
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

    public function getCategoriesCount() {
        $cat_count = $this->db->query("
            SELECT COUNT(id) as count
            FROM `phones_category`
            WHERE `hidden` = 0 ORDER BY `sort`")->fetch();
        if(is_array($cat_count) and count($cat_count) > 0) {
            return $cat_count['count'];
        } else
            return false;
    }

    public function getCategories() {
        $categoties = $this->db->query("
            SELECT *
            FROM `phones_category`
            WHERE `hidden` = 0 ORDER BY `name`, `sort`")->fetchAll(); //
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
                LOWER( REPLACE( REPLACE( `longname`, ' ', '-'), '/', '-') ) as alies
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
                        'm_count' => count($models),
                        'models' => $models,
                    );
                }


            }
        }

        return $_data;
    }

}
