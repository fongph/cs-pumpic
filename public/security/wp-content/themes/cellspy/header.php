<?php 
      createReferral(); 
      userNotice(); 
?>
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
    <?php /*<meta name="SKYPE_TOOLBAR" content ="SKYPE_TOOLBAR_PARSER_COMPATIBLE" /> */ ?>
    <title><?php wp_title( '|', true, 'right' ); ?> <?php /* | Sign up for Pumpic Blog */ ?></title>

    <link rel="shortcut icon" type="image/png" href="<?php echo getStaticUrl();?>/images/favicon.png"/>
    
    <?php wp_head(); ?>

    <!-- Bootstrap -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,300italic,400italic,600italic,700italic' rel='stylesheet' type='text/css'>
    <link href="<?php echo getStaticUrl();?>/stylesheets/wp.min.css?<?= strtotime( '2015-02-05' ) ?>" rel="stylesheet">
    
    <?php /*<link href="<?php echo getStaticUrl();?>/css/bootstrap.css" rel="stylesheet">
    <link href="<?php echo getStaticUrl();?>/css/fontello.css" rel="stylesheet">
    <link href="<?php echo getStaticUrl();?>/css/all.css" rel="stylesheet">
    
    <link href="<?php echo getStaticUrl();?>/css/parent.css" rel="stylesheet">
    <link href="<?php echo getStaticUrl();?>/css/wp-post.css" rel="stylesheet">

    <link href="<?php echo getStaticUrl();?>/css/wp-subscribe.css" rel="stylesheet">
    <link href="<?php echo getStaticUrl();?>/css/style-fly-features.css" rel="stylesheet">
    
    <!-- 404 -->
    <link href="<?php echo getStaticUrl();?>/css/404.css" rel="stylesheet">
    */ ?>
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>
    
    <?php /*<script src="<?php echo getStaticUrl();?>/javascripts/wp.min.js?<?= strtotime( '2015-02-05' ) ?>"></script> */ ?>
    
    <?php /*<script src="<?php echo getStaticUrl();?>/js/bootstrap.js"></script>
    <script src="<?php echo getStaticUrl();?>/js/fancy_checkbox.js"></script>
    <script src="<?php echo getStaticUrl();?>/js/main.js"></script>
    
    <script src="<?php echo getStaticUrl();?>/js/resize_images.js"></script>
    
    <!-- jquery validate -->
   <script src="<?php echo getStaticUrl();?>/js/jquery.validate.min.js"></script>
    
    <!-- jquery bpopUp -->
    <script src="<?php echo getStaticUrl();?>/js/popup/jquery.bpopup.js"></script>

    <!-- jquery plugins -->
    <script src="<?php echo getStaticUrl();?>/js/jquery.cookie.js"></script>
    <script src="<?php echo getStaticUrl();?>/js/jquery.ba-hashchange.min.js"></script>
    <script src="<?php echo getStaticUrl();?>/js/jquery.total-storage.min.js"></script>
     <!-- close/ out Windows -->
    <?php // <script src="<?php echo getStaticUrl();?>/js/outWindows.js"></script> ?>
    
    <!-- browser detected -->
    <script src="<?php echo getStaticUrl();?>/js/browser.js"></script>
    
    <script src="<?php echo getStaticUrl();?>/js/wp/settings.js"></script>
    <script src="<?php echo getStaticUrl();?>/js/wp/init.js"></script>
    <!-- fly blocks -->
    <script src="<?php echo getStaticUrl();?>/js/fly_feachers.js"></script>
    */ ?>
    <?php require_once '../../templates/includes/blog-analytics-header.tpl'; ?>
    
    <?php  if(get_the_ID() == 785) {  
        add_ga(); 
    } ?>
    
</head>

<body class="wp-blog">
     <?php 
        include_once('../../templates/includes/blog-after-body.tpl'); 
    ?>
    
    
    <a href="#" class="go_up"></a>
    
    <?php 
        //include_once('../../templates/includes/content/fly/blog_fly_features_v2.tpl');
    ?>
    
    <div class="wrapper">
        
	<?php 
		include_once('../../templates/includes/blog-top-menu.tpl'); 
	?>
        
        <?php if(hasFreeTrialStick()) include_once('../../templates/includes/content/fly/fly-free-trial.tpl'); ?>
    
        <?php 
		include_once('../../templates/includes/content/phone/blog-phone.tpl'); 
	?>
    
    <?php /*
    <div class="breadcrumbs">
        <?php if(function_exists('bcn_display')) {
                bcn_display();
        }?>
    </div> */ ?>
    