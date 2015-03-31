{strip}
	<!-- Bootstrap -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,300italic,400italic,600italic,700italic' rel='stylesheet' type='text/css'>
	<link href="{$css}/bootstrap.css?{style_cache data='2015-02-09'}" rel="stylesheet">
	<link href="{$css}/fontello.css?{style_cache data='2015-02-09'}" rel="stylesheet">
        <!-- lightbox style -->
        <link href="{$css}/lightbox.css?{style_cache data='2015-02-09'}" rel="stylesheet">
        
        <!-- settings -->
        <link href="{$css}/settings.css?{style_cache data='2015-02-09'}" rel="stylesheet">
        
	<link href="{$css}/all.css?{style_cache data='2015-02-09'}" rel="stylesheet">
        <link href="{$css}/all23032015.css?{style_cache data='2015-02-09'}" rel="stylesheet">
        <link href="{$css}/parent.css?{style_cache data='2015-02-09'}" rel="stylesheet">
        
        <!-- landing -->
        <link href="{$css}/landing_fix.css?{style_cache data='2015-02-09'}" rel="stylesheet">
        
        <link href="{$css}/p2.css?{style_cache data='2015-02-09'}" rel="stylesheet">
        
        <!-- currence -->
        <link href="{$css}/curr.css?{style_cache data='2015-02-09'}" rel="stylesheet">
        
        <!-- bxSlider -->
        <link href="{$css}/jquery.bxslider.css?{style_cache data='2015-02-09'}" rel="stylesheet">
        
        <!-- style-technological -->
        <link href="{$css}/style-technological.css?{style_cache data='2015-02-09'}" rel="stylesheet">
        
        <!-- font-size responce -->
        <link href="{$css}/font-size.css?{style_cache data='2015-02-09'}" rel="stylesheet">
        
        <!-- fly blocks -->
        <link href="{$css}/style-fly-features.css?{style_cache data='2015-02-09'}" rel="stylesheet">
        
        <!-- icloud -->
        <link href="{$css}/icloud/icloud.css" rel="stylesheet">
        
        <!-- ie -->
        <link href="{$css}/ie_fix/ie.css?{style_cache data='2015-02-09'}" rel="stylesheet">


	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js?{style_cache data='2015-02-05'}"></script>
        <script src="http://code.jquery.com/jquery-migrate-1.2.1.js?{style_cache data='2015-02-05'}"></script>
	<script src="{$js}/bootstrap.js?{style_cache data='2015-02-05'}"></script>
	<script src="{$js}/fancy_checkbox.js?{style_cache data='2015-02-05'}"></script>
        <script src="{$js}/main.js?{style_cache data='2015-02-05'}"></script>
        
        <!-- jquery.handler.toolkit -->
       <script src="{$js}/jquery.handler-toolkit.js?{style_cache data='2015-02-05'}"></script>
        <!-- resize -->
        <script src="{$js}/browser.js?{style_cache data='2015-02-05'}"></script>
        
        <!-- lightbox -->
        <script src="{$js}/lightbox/lightbox.js?{style_cache data='2015-02-05'}"></script>
        
        <!-- jquery bpopUp -->
        <script src="{$js}/popup/jquery.bpopup.js?{style_cache data='2015-02-05'}"></script>
        
        <!-- jquery plugins -->
        <script src="{$js}/jquery.cookie.js?{style_cache data='2015-02-05'}"></script>
        <script src="{$js}/jquery.ba-hashchange.min.js?{style_cache data='2015-02-05'}"></script>
        <script src="{$js}/jquery.total-storage.min.js?{style_cache data='2015-02-05'}"></script>
        
        <!-- tool tip -->
        <script src="{$js}/easyTooltip.js?{style_cache data='2015-02-05'}"></script>
        <!-- pagination -->
        <script src="{$js}/jquery.simplePagination.js?{style_cache data='2015-02-05'}"></script>
        
        <!-- jquery validate -->
        <script src="{$js}/jquery.validate.min.js?{style_cache data='2015-02-05'}"></script>
        
        <!-- jquery translite -->
        <script src="{$js}/translite/jquery.synctranslit.js?{style_cache data='2015-02-05'}"></script>
        
        <!-- monay convert-->
        <script src="{$js}/money/money.min.js?{style_cache data='2015-02-05'}"></script>
        <script src="{$js}/currancy.js?{style_cache data='2015-02-05'}"></script>
        {nocache} 
        <script>
            {assign _hasUser 'false'}
            {if ''|hasUser}{assign _hasUser 'true'}{/if}
            
            var UserLogin = '{UserLogin}',
                _hasUser = '{$_hasUser}';
                        
        </script>
        {/nocache} 
        <!-- init -->
        <script src="{$js}/scroll.js?{style_cache data='2015-02-05'}"></script>
        <script src="{$js}/init.js?{style_cache data='2015-02-05'}"></script>
        
        <!-- close/ out Windows -->
        <script src="{$js}/outWindows.js?{style_cache data='2015-02-05'}"></script>
        
        <!-- resizeImages -->
        <script src="{$js}/resize_images.js?{style_cache data='2015-02-05'}"></script>
        
        <!-- fly blocks -->
        <script src="{$js}/fly_feachers.js"></script>
        <!-- resizeImages -->
        <script src="{$js}/resize_teh.js"></script>
        
        <!-- sliders -->
        <script src="{$js}/bxslider/jquery.bxslider.js"></script>
        <script src="{$js}/bxslider/bxInit.js"></script>
        
{/strip}
{include file='../header/analytics-header.tpl'}	
{strip}	
</head>
{/strip}
