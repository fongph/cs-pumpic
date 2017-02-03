<?php
namespace system;

use includes\lib\CDb as DB;

require_once dirname( __FILE__ ).'/CDb.php';

class Legacy
{
    private function __clone() {}

    private function __construct()
    {
        global $config;
        $this -> _db = new DB($config['db']);
    }

    private static  $instance;
    private $_db;
    private $_searchCurr = [];
    private $_base;
    
    public static function getInstance()
    {
        if ( ! isset(self::$instance))
            self::$instance = new self();
        return self::$instance;
    }

    public function getLegal($name, $status)
    {
        $name = $this->_db->getConnected()->quote($name);
        $status = $this->_db->getConnected()->quote($status);
        return $this->_db->column("SELECT lv.`text`
                                        FROM `legal_versions` lv
                                        LEFT JOIN `legal_types` lt ON  lv.`legal_id` = lt.`legal_id`
                                        WHERE lt.code = {$name} AND lv.`status` = {$status}
                                        ORDER BY lv.`created_at` DESC
                                        LIMIT 1");
    }
    
}

