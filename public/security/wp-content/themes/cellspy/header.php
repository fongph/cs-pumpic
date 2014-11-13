<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 7) & !(IE 8)]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title><?php wp_title( '|', true, 'right' ); ?></title>
    
    <?php wp_head(); ?>

    <!-- Bootstrap -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,300italic,400italic,600italic,700italic' rel='stylesheet' type='text/css'>
    <link href="<?php echo getStaticUrl();?>/css/bootstrap.css" rel="stylesheet">
    <link href="<?php echo getStaticUrl();?>/css/fontello.css" rel="stylesheet">
    <link href="<?php echo getStaticUrl();?>/css/all.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="<?php echo getStaticUrl();?>/js/bootstrap.js"></script>
    <script src="<?php echo getStaticUrl();?>/js/fancy_checkbox.js"></script>
    <script src="<?php echo getStaticUrl();?>/js/main.js"></script>

    <?php require_once '../../templates/includes/blog-analytics-header.tpl'; ?>
    
<!-- style -->
<?php /*
<!--        <link href="css/bootstrap/bootstrap.css" media="all" type="text/css" rel="stylesheet" />-->
<link href="http://mybootstrap.ru/wp-content/themes/clear-theme/styles/bootstrap.css" media="all" type="text/css" rel="stylesheet" />
<link href="<?= get_template_directory_uri() ?>/css/iCheck/skins/dist1/dist1.css" media="all" type="text/css" rel="stylesheet" />

<link href="<?= get_template_directory_uri() ?>/css/settings.css" type="text/css" rel="stylesheet" />
<link href="<?= get_template_directory_uri() ?>/css/style.css" type="text/css" rel="stylesheet" /> 
 ?>

<!-- js -->
<script src="http://code.jquery.com/jquery-2.0.0.min.js" type="text/javascript"></script>
<script src="<?= get_template_directory_uri() ?>/js/bootstrap/bootstrap.min.js" type="text/javascript"></script>

<!-- iCheck -->
<script src="<?= get_template_directory_uri() ?>/js/iCheck/icheck.js" type="text/javascript"></script>

<!-- init -->
<script src="<?= get_template_directory_uri() ?>/js/init.js" type="text/javascript"></script>

<?php wp_head(); 
*/ ?>
</head>

<body>
    
    <?php /*  <?= wp_nav_menu( array( 'theme_location' => 'primary', 'menu_class' => 'nav navbar-nav' ) ) ?> */ ?>
    
    <?php /*
<div id="page" class="hfeed site">
	<header id="masthead" class="site-header" role="banner">
		<hgroup>
			<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
			<h2 class="site-description"><?php bloginfo( 'description' ); ?></h2>
		</hgroup>

		<nav id="site-navigation" class="main-navigation" role="navigation">
			<button class="menu-toggle"><?php _e( 'Menu', 'twentytwelve' ); ?></button>
			<a class="assistive-text" href="#content" title="<?php esc_attr_e( 'Skip to content', 'twentytwelve' ); ?>"><?php _e( 'Skip to content', 'twentytwelve' ); ?></a>
			<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_class' => 'nav-menu' ) ); ?>
		</nav><!-- #site-navigation -->

	</header><!-- #masthead -->

	<div id="main" class="wrapper">
            */ ?>

    
    <?php 
        // echo get_banners_align('top', (int)get_the_ID());
    ?>

    
    <a href="#" class="go_up"></a>
    <div class="wrapper">
        
	<?php 
		include('../../templates/includes/blog-top-menu.tpl'); 
	?>
    
    
    <?php /*
    <div class="breadcrumbs">
        <?php if(function_exists('bcn_display')) {
                bcn_display();
        }?>
    </div> */ ?>
    