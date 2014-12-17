<?php
namespace system;


class Component 
{
    public $content_storage;
    protected $data;
    
    
    public static function className() 
    {
        return get_called_class();
    }
    
    public function __construct() 
    {
        $this->init();
    }
    
    public function init() 
    {
        
    }
    
    function __call($name, $arguments = array()) 
    {
        if ($this->hasMethod($name)) {
            return call_user_func_array([$name], $params);
        }
        
        throw new \Exception('Calling unknown method: ' . get_class($this) . "::$name()");
    }
    
    function __set($name, $value) 
    {
        $setter = 'set' . $name;
        if (method_exists($this, $setter)) {
            // set property
            $this->$setter($value);
            return;
        } 
        if (method_exists($this, 'get' . $name)) {
            throw new \Exception('Setting read-only property: ' . get_class($this) . '::' . $name);
        } else {
            throw new \Exception('Setting unknown property: ' . get_class($this) . '::' . $name);
        }
    }
    
    function __get($name) 
    {
        $getter = 'get' . $name;
        
        if (method_exists($this, $getter)) {
            return $this->$getter();
        } 
        if (method_exists($this, 'set' . $name)) {
            throw new \Exception('Getting write-only property: ' . get_class($this) . '::' . $name);
        } else {
            throw new \Exception('Getting unknown property: ' . get_class($this) . '::' . $name);
        }
    }
    
    public function __isset($name) 
    {
         $getter = 'get' . $name;
        if (method_exists($this, $getter)) {
            return $this->$getter() !== null;
        } 
        return false;
    }

    /**  Начиная с версии PHP 5.1.0  */
    public function __unset($name) 
    {
        $setter = 'set' . $name;
        if (method_exists($this, $setter)) {
            $this->$setter(null);
            return;
        } 
        throw new \Exception('Unsetting an unknown or read-only property: ' . get_class($this) . '::' . $name);
    }

    public function __clone() 
    {
        $this->data = [];
    }
    
    public function hasMethod($name, $checkBehaviors = true) 
    {
        if (method_exists($this, $name)) {
            return true;
        } 
        return false;
    }
    
    public function __toString() 
    {
        ob_start();
        $this ->content_storage = ob_get_contents();
        ob_get_clean();
        ob_get_flush();
        return $this ->content_storage;
    }
    
    
    
}