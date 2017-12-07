{strip}
	<!-- Bootstrap -->
	{* <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,300italic,400italic,600italic,700italic' rel='stylesheet' type='text/css'> *}
        <!--[if lte IE 8]>
            <link href='https://fonts.googleapis.com/css?family=Open+Sans:400' rel='stylesheet' type='text/css'>
            <link href='https://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>
            <link href='https://fonts.googleapis.com/css?family=Open+Sans:600' rel='stylesheet' type='text/css'>
            <link href='https://fonts.googleapis.com/css?family=Open+Sans:700' rel='stylesheet' type='text/css'>
            <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic' rel='stylesheet' type='text/css'>
            <link href='https://fonts.googleapis.com/css?family=Open+Sans:400italic' rel='stylesheet' type='text/css'>
            <link href='https://fonts.googleapis.com/css?family=Open+Sans:600italic' rel='stylesheet' type='text/css'>
            <link href='https://fonts.googleapis.com/css?family=Open+Sans:700italic' rel='stylesheet' type='text/css'>
        <![endif]-->
	
        <link href="{$cssMin}/frontend.min.css?{style_cache data='2015-02-05'}" rel="stylesheet">
        <!--[if IE 9]>
            <link href="{$cssMin}/ie9.css" rel="stylesheet">
        <![endif]-->
        <!--[if IE 8]>
            <link href="{$cssMin}/ie8.css" rel="stylesheet">
        <![endif]-->
        {*<script src="http://code.jquery.com/jquery-1.11.1.min.js?{style_cache data='2015-02-05'}"></script>*}
        {*<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js?{style_cache data='2015-02-05'}"></script>*}
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
        
        {nocache} 
        <script>
            {*{assign _hasUser 'false'}*}
            {*{if ''|hasUser}{assign _hasUser 'true'}{/if}*}
            {**}
            {*var UserLogin = '{UserLogin}',*}
                {*_hasUser = '{$_hasUser}';*}
                        {**}
        </script>
        {/nocache} 
        
        
{/strip}
{include file='../header/analytics-header.tpl'}	
{strip}	
   {**}
{*{getUserInfo}    *}
    
{if isset($test) && $test == 'true'}  
    {*_gaq.push(['_setDomainName', 'none']);
    _gaq.push(['_setAllowLinker', true]);*}
    
    {* literal}
    <!-- GOOGLE GA.JS --> 
    <script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-56492507-1']);
    _gaq.push(['_trackPageview']);

    (function() {
    var iga = document.createElement('script'); iga.type = 'text/javascript'; iga.async = true;
    iga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(iga, s);
    })();

    </script>
    <!-- END GA.JS -->
    {/literal *}  
    
{/if}

    
</head>
{/strip}
