<?php

namespace includes\lib\users;

use \System\Auth;

class TrialStick
{
    protected $domain;
    const COOKIE_NAME = 'trial_stick_banner';

    public function __construct(Auth $auth, $cookieDomain)
    {
        $this->domain = $cookieDomain;

        if ($auth->hasIdentity() && $this->isVisible()) {
            $this->setCookie(0);
        }
    }

    public function isVisible()
    {
        return (bool) $_COOKIE[self::COOKIE_NAME];
    }

    public function setCookie($isVisible)
    {
        $isVisible = $isVisible ? 1 : 0;
        $_COOKIE[self::COOKIE_NAME] = $isVisible;
        setcookie(self::COOKIE_NAME, $isVisible, time()+60*60*24, '/', $this->domain);
    }
}