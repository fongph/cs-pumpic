<?php
namespace api;


class Settings {
    private $site_id = 1;
    private $locale = 'en-EN';
    private $system = 0;
    
    /*
     * SiteId
     * @in (int) $id
     * @out (object) new Settings
     */
    protected function setSiteId( $id ) {
        if(!empty($id))
            $this -> site_id = $id;
        return $this;
    }
    
    public function getSiteId() {
        return $this -> site_id;
    }
    
    protected function setLocale( $_locale ) {
        if(!empty($_locale))
            $this -> locale = $_locale;
        return $this;
    }
    
    public function getLocale() {
        return $this -> locale;
    }
    
    protected function setSystem( $_system ) {
        if(!empty($_system))
            $this -> system = $_system;
        return $this;
    }
    
    public function getSystem() {
        return $this -> system;
    }
}