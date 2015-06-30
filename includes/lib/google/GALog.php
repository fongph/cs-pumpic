<?php
namespace includes\lib;

include_once 'GoogleAnalyticsExeptions.php';

use includes\lib\GoogleAnalyticsExeptions as GAExeptions;

/**
 * GALog
 * Auth: Edii_Shadow
 */
class GALog {
       
    const LEVEL_TRACE='trace';
    const LEVEL_WARNING='warning';
    const LEVEL_ERROR='error';
    const LEVEL_INFO='info';
    const LEVEL_PROFILE='profile';

    public $autoDump=false;
    /**
     * @var array log messages
     */
    private $_logs=array();
    /**
     * @var integer number of log messages
     */
    private $_logCount=0;
    /**
     * @var array log levels for filtering (used when filtering)
     */
    private $_levels;
    /**
     * @var array log categories for filtering (used when filtering)
     */
    private $_categories;
    /**
     * @var array log categories for excluding from filtering (used when filtering)
     */
    private $_except=array();
    /**
     * @var array the profiling results (category, token => time in seconds)
     */
    private $_timings;
    /**
    * @var boolean if we are processing the log or still accepting new log messages
    */
    private $_processing=false;

    /**
     * Logs a message.
     * Messages logged by this method may be retrieved back via {@link getLogs}.
     * @param string $message message to be logged
     * @param string $level level of the message (e.g. 'Trace', 'Warning', 'Error'). It is case-insensitive.
     * @param string $category category of the message (e.g. 'system.web'). It is case-insensitive.
     * @see getLogs
     */
    public function log($message, $level='info', $category='api') {
        $this->_logs[]=array($message,$level,$category,microtime(true));
        $this->_logCount++;

        return $this;
    }

    /**
     * Retrieves log messages.
     *
     *
     * @param string $levels level filter
     * @param array|string $categories category filter
     * @param array|string $except list of log categories to ignore
     * @return array list of messages. Each array element represents one message
     * with the following structure:
     * array(
     *   [0] => message (string)
     *   [1] => level (string)
     *   [2] => category (string)
     *   [3] => timestamp (float, obtained by microtime(true));
     */
    public function getLogs($levels='',$categories=array(), $except=array()) {
        $this->_levels=preg_split('/[\s,]+/',strtolower($levels),-1,PREG_SPLIT_NO_EMPTY);

        if (is_string($categories))
            $this->_categories=preg_split('/[\s,]+/',strtolower($categories),-1,PREG_SPLIT_NO_EMPTY);
        else
            $this->_categories=array_filter(array_map('strtolower',$categories));

        if (is_string($except))
            $this->_except=preg_split('/[\s,]+/',strtolower($except),-1,PREG_SPLIT_NO_EMPTY);
        else
            $this->_except=array_filter(array_map('strtolower',$except));

        $ret=$this->_logs;

        if(!empty($levels))
            $ret=array_values(array_filter($ret,array($this,'filterByLevel')));

        if(!empty($this->_categories) || !empty($this->_except))
            $ret=array_values(array_filter($ret,array($this,'filterByCategory')));

        return $ret;
    }

    /**
     * Filter function used by {@link getLogs}
     * @param array $value element to be filtered
     * @return boolean true if valid log, false if not.
     */
    private function filterByCategory($value) {
        return $this->filterAllCategories($value, 2);
    }

    /**
     * Filter function used by {@link getProfilingResults}
     * @param array $value element to be filtered
     * @return boolean true if valid timing entry, false if not.
     */
    private function filterTimingByCategory($value) {
        return $this->filterAllCategories($value, 1);
    }

    /**
     * Filter function used to filter included and excluded categories
     * @param array $value element to be filtered
     * @param integer $index index of the values array to be used for check
     * @return boolean true if valid timing entry, false if not.
     */
    private function filterAllCategories($value, $index) {
        $cat=strtolower($value[$index]);
        $ret=empty($this->_categories);
        foreach($this->_categories as $category) {
            if($cat===$category || (($c=rtrim($category,'.*'))!==$category 
                    and strpos($cat,$c)===0))
                    $ret=true;
        }
        if($ret) {
            foreach($this->_except as $category) {
                if($cat===$category || (($c=rtrim($category,'.*'))!==$category 
                        and strpos($cat,$c)===0))
                        $ret=false;
            }
        }
        return $ret;
    }

    /**
     * Filter function used by {@link getLogs}
     * @param array $value element to be filtered
     * @return boolean true if valid log, false if not.
     */
    private function filterByLevel($value) {
        return in_array(strtolower($value[1]),$this->_levels);
    }

    /**
     * Returns the total time for serving the current request.
     * This method calculates the difference between now and the timestamp
     * defined by constant YII_BEGIN_TIME.
     * To estimate the execution time more accurately, the constant should
     * be defined as early as possible (best at the beginning of the entry script.)
     * @return float the total time for serving the current request.
     */
    public function getExecutionTime() {
        return microtime(true)-BEGIN_TIME;
    }

    /**
     * Returns the memory usage of the current application.
     * This method relies on the PHP function memory_get_usage().
     * If it is not available, the method will attempt to use OS programs
     * to determine the memory usage. A value 0 will be returned if the
     * memory usage can still not be determined.
     * @return integer memory usage of the application (in bytes).
     */
    public function getMemoryUsage() {
        if(function_exists('memory_get_usage'))
                return memory_get_usage();
        else {
            $output=array();
            if(strncmp(PHP_OS,'WIN',3)===0) {
                exec('tasklist /FI "PID eq ' . getmypid() . '" /FO LIST',$output);
                return isset($output[5])?preg_replace('/[\D]/','',$output[5])*1024 : 0;
            } else {
                $pid=getmypid();
                exec("ps -eo%mem,rss,pid | grep $pid", $output);
                $output=explode("  ",$output[0]);
                return isset($output[1]) ? $output[1]*1024 : 0;
            }
        }
    }

    /**
     * Since 1.1.11, filtering results by category supports the same format used for filtering logs in
     * {@link getLogs}, and similarly supports filtering by multiple categories and wildcard.
     * @param string $token token filter. Defaults to null, meaning not filtered by token.
     * @param string $categories category filter. Defaults to null, meaning not filtered by category.
     * @param boolean $refresh whether to refresh the internal timing calculations. If false,
     * only the first time calling this method will the timings be calculated internally.
     * @return array the profiling results.
     */
    public function getProfilingResults($token=null,$categories=null,$refresh=false) {
        if($this->_timings===null || $refresh)
            $this->calculateTimings();
        if($token===null && $categories===null)
            return $this->_timings;

        $timings = $this->_timings;
        if($categories!==null) {
            $this->_categories=preg_split('/[\s,]+/',strtolower($categories),-1,PREG_SPLIT_NO_EMPTY);
            $timings=array_filter($timings,array($this,'filterTimingByCategory'));
        }

        $results=array();
        foreach($timings as $timing) {
            if($token===null || $timing[0]===$token)
                $results[]=$timing[2];
        }
        return $results;
    }

    private function calculateTimings() {
        $this->_timings=array();

        $stack=array();
        foreach($this->_logs as $log) {
            if($log[1]!== Logger::LEVEL_PROFILE)
                    continue;
            list($message,$level,$category,$timestamp)=$log;
            if(!strncasecmp($message,'begin:',6)) {
                $log[0]=substr($message,6);
                $stack[]=$log;
            } elseif(!strncasecmp($message,'end:',4)) {
                $token=substr($message,4);
                if(($last=array_pop($stack))!==null && $last[0]===$token) {
                    $delta=$log[3]-$last[3];
                    $this->_timings[]=array($message,$category,$delta);
                }
                else
                    throw new GAExeptions('ga','CProfileLogRoute found a mismatching code block "{token}". Make sure the calls to Api::beginProfile() and Api::endProfile() be properly nested.',
                            array('{token}'=>$token));
            }
        }

        $now=microtime(true);
        while(($last=array_pop($stack))!==null) {
            $delta=$now-$last[3];
            $this->_timings[]=array($last[0],$last[2],$delta);
        }
    }

    
}

?>
