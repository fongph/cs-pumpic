<?php
namespace includes\lib;

class HTTPRequest
{

        /**
	 * Initializes the application component.
	 * This method overrides the parent implementation by preprocessing
	 * the user request data.
	 */
	public function init()
	{
		$this->normalizeRequest();
	}
	/**
	 * Normalizes the request data.
	 * This method strips off slashes in request data if get_magic_quotes_gpc() returns true.
	 * It also performs CSRF validation if {@link enableCsrfValidation} is true.
	 */
	protected function normalizeRequest()
	{
            if(isset($_GET))
                    $_GET = $this->stripSlashes( $this ->stripTags($_GET) );
            if(isset($_POST))
                    $_POST= $this->stripSlashes( $this->stripTags($_POST) );
            if(isset($_REQUEST))
                    $_REQUEST= $this->stripSlashes( $this->stripTags($_REQUEST) );
            if(isset($_COOKIE))
                    $_COOKIE=$this->stripSlashes( $this->stripTags($_COOKIE) );
	}
	/**
	 * Strips slashes from input data.
	 * This method is applied when magic quotes is enabled.
	 * @param mixed $data input data to be processed
	 * @return mixed processed data
	 */
	public function stripSlashes($data)
	{
		if(is_array($data))
		{
			if(count($data) == 0)
				return $data;
			$keys=array_map('stripslashes',array_keys($data));
			$data=array_combine($keys,array_values($data));
			return array_map(array($this,'stripSlashes'),$data);
		}
		else
			return stripslashes($data);
	}
    
        /**
	 * Strips tags from input data.
	 * This method is applied when magic quotes is enabled.
	 * @param mixed $data input data to be processed
	 * @return mixed processed data
	 */
	public function stripTags($data)
	{   
		if(is_array($data))
		{
			if(count($data) == 0)
				return $data;
			$keys=array_map('strip_tags',array_keys($data));
			$data=array_combine($keys,array_values($data));
			return array_map(array($this,'stripTags'),$data);
		}
		else
			return strip_tags($data);
	}
    
}
?>
