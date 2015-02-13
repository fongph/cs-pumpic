<?php createReferral(); ?>
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

    <link rel="shortcut icon" type="image/png" href="<?php echo getStaticUrl();?>/images/favicon.png"/>
    
    <?php wp_head(); ?>

    <!-- Bootstrap -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,300italic,400italic,600italic,700italic' rel='stylesheet' type='text/css'>
    <link href="<?php echo getStaticUrl();?>/css/bootstrap.css" rel="stylesheet">
    <link href="<?php echo getStaticUrl();?>/css/fontello.css" rel="stylesheet">
    <link href="<?php echo getStaticUrl();?>/css/all.css" rel="stylesheet">
    
    <link href="<?php echo getStaticUrl();?>/css/parent.css" rel="stylesheet">
    <link href="<?php echo getStaticUrl();?>/css/wp-post.css" rel="stylesheet">

    <link href="<?php echo getStaticUrl();?>/css/wp-subscribe.css" rel="stylesheet">
    
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
    <script src="<?php echo getStaticUrl();?>/js/outWindows.js"></script>
    
    <?php require_once '../../templates/includes/blog-analytics-header.tpl'; ?>
    
</head>

<body class="wp-blog">
    
    <a href="#" class="go_up"></a>
    <div class="wrapper">
        
	<?php 
		include_once('../../templates/includes/blog-top-menu.tpl'); 
	?>
    
    
    <?php /*
    <div class="breadcrumbs">
        <?php if(function_exists('bcn_display')) {
                bcn_display();
        }?>
    </div> */ ?>
    