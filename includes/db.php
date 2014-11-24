<?php

class Db {

    private $_connection = null;

    public function __construct($config) {
        if (isset($config)) {
            $this->_connection = new \PDO("mysql:host={$config['host']};dbname={$config['dbname']}", $config['username'], $config['password'], $config['options']);

            if (isset($config['profiling'])) {
                $this->exec("set profiling_history_size = {$config['profiling']}; set profiling = 1;");
            }
        } else {
            throw new Exception('Can`t find db config!');
        }
    }
    public function getConnection(){
        return $this->_connection;
    }
    
    public function escape($string) {
        return $this->_connection->quote($string);
    }

    public function quote($string) {
        return $this->_connection->quote($string);
    }

    public function escapeRecursive($array) {
        array_walk_recursive($array, function(&$item, $key) {
                    $item = $this->_connection->quote($item);
                });
    }

    public function getProfilingData() {
        return $this->fetchAll("show profiles");
    }

    public function fetch($sql) {
        return $this->query($sql)->fetch();
    }

    public function fetchAll($sql) {
        return $this->query($sql)->fetchAll();
    }

    public function fetchCol($sql, $columnNumber = 0) {
        return $this->query($sql)->fetchAll(\PDO::FETCH_COLUMN, $columnNumber);
    }

    public function fetchOne($sql, $columnNumber = 0) {
        return $this->query($sql)->fetchColumn($columnNumber);
    }

    public function exec($statement) {
        return $this->_connection->exec($statement);
    }

    public function query($statement) {
        return $this->_connection->query($statement);
    }
    
    public function lastId() {
        return $this->_connection->lastInsertId(); 
    }

}
?>