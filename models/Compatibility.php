<?php

namespace Models;

use PDO;

class Compatibility {

    public function __construct(PDO $db)
    {
        $this->db = $db;
    }
    
    public function getPhonesByQuery($value, $page = 0) {
        global $config;
        $values = array_slice(preg_split('/\s+/', trim($value)), 0, 4);
        $searchString = implode('|', $values);

        if (strlen($searchString) > 1) {
            $searchString = trim( strtolower( $searchString ) , '|');
            $searchString = $this->db->quote( $searchString );

            $count = $config['recordsOnPage'] + 1;
            $start = $page * $count;

            return $this->db->query("SELECT rowid as id, 
                                    rowid as url, 
                                    longname as name, 
                                    path_small as img, 
                                    path_big as b_img, 
                                    path_middle as m_img,
                                    os, 
                                    os_ver as version, 
                                    tested 
                                FROM `phones` 
                                WHERE LOWER(`longname`) RLIKE {$searchString} LIMIT {$start}, {$count}")->fetchAll();
        } else {
            return array();
        }
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
    
    public function getPhonesByOS($os, $page = 0) {
        $start = $page * 10;
        return $this->db->query("SELECT rowid as id, 
                    rowid as url, 
                    longname as name, 
                    path_small as img, 
                    path_big as b_img,
                    path_middle as m_img,
                    os, 
                    os_ver as version, 
                    tested FROM `phones` WHERE `os` = {$this->db->quote($os)} LIMIT {$start}, 10")->fetchAll();
    }
    
}