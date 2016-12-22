<?php
function my_init()
{
	if (!is_admin())
	{
		wp_deregister_script('jquery');

		// Load a copy of jQuery from the Google API CDN
		// The last parameter set to TRUE states that it should be loaded
		// in the footer.
//		wp_register_script('jquery', 'http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js', FALSE, '1.11.0', TRUE);
//
//		wp_enqueue_script('jquery');
	}
}
add_action('init', 'my_init');
if ( function_exists( 'session_cache_limiter' ) ) :
    session_cache_limiter('public');
endif;

function getUserID() {
    require_once '../../includes/lib/users/ManagerUser.php';
    $obj = new includes\lib\users\ManagerUser( array() );
    return ($obj->getUserIdByAuth()) ? $obj->getUserIdByAuth() : '';
}

/* ---------------- // GA.js ----------- */
function add_ga() {
    $js = "<script type=\"text/javascript\">
    // IMPORTANT: Remove this code snippet when upgrading to analytics.js

      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-68480087-1']);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();

    </script>";
    
//    $js = "<script>
//          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
//          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
//          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
//          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
//
//          ga('create', 'UA-68480087-1', 'auto');
//          ga('send', 'pageview');
//
//        </script>";
    
    echo $js;
}

function amp_analytics_footer() {
    ?>
<amp-analytics type="googleanalytics" id="analytics">
<script type="application/json">
    {
        "vars": {"account": "UA-56492507-1"},
        "triggers": {
            "trackPageview": {
                "on": "visible",
                "request": "pageview"
            }
        }
    }
</script>
</amp-analytics>
    <?php
}

add_action( 'amp_post_template_footer', 'amp_analytics_footer' );

function shailan_redirect_404( $_redirect ) {
    global $wp_query;
    if ( $_redirect ) {
        $wp_query->is_404 = true;
        require_once get_404_template();
        // wp_redirect(get_bloginfo('/404'), 404);
        
        // exit;
    }
    //exit;
    //if ( $wp_query->is_404 ) {
    //  wp_redirect( get_bloginfo('wpurl'), 301 );
    //  exit;
    //}
}
add_action('template_redirect', 'shailan_redirect_404');



/* --------------- AJAX ----------------- */
// Include the Ajax library on the front end
//function add_ajax_library() {
//
////    $html = '<script type="text/javascript">';
////        $html .= 'var ajaxurl = "' . site_url( '/wp-content/themes/dist/ajax/ajax.php' ) . '"';
////    $html .= '</script>';
////
////    echo $html;
//
//} // end add_ajax_library
//add_action( 'wp_head',  'add_ajax_library' );

if ( !function_exists('cellspy_r_banner_buy_1') ) {
    function cellspy_r_banner_buy_1() {

    $output = "<span class='img_thumb'>
                    <img src='/images/img_photo.png' height='72' width='138' alt=''>
               </span>
                <div class='caption'>
                    <h3>GET IN LINE TO TRY TOPSPY</h3>
                    <p>We've introduced our new cell phone spying software to help you track you underage kids, 
                        and increase your business safety.</p>
                    <p class='text-center'>
                        <span class='btn btn-default btn-banner-red'>Buy NOW</span>
                        <span class='btn btn-warning btn-banner-yellow'>View DEMO</span>
                    </p>
                </div> <!-- .caption -->";    
    
    /*<a href='#' class='btn btn-default' role='button'>Buy NOW</a>
      <a href='#' class='btn btn-warning' role='button'>View DEMO</a>
     */

    return $output;
    }
}

/**
* related post with category
* @param: int $limit limit of posts
* @param: bool $catName echo category name
* @param: string $title string before all entries
* Example: echo fb_cat_related_posts();
*/
if ( !function_exists('fb_get_cat_related_posts') ) {
    function fb_get_cat_related_posts( $limit = 5, $catName = TRUE, $title = '<strong>Related articles</strong>' ) {

        if ( !is_single() )
            return;
        $_count = 0;
        $limit = (int) $limit;
        $output = '<div class="related_row">';
        $output .= $title;

        $category = get_the_category();
        $category = (int) $category[0]->cat_ID;

        $_tags = '';

        if($_dataTags = get_the_tags( (int)get_the_ID() )
                and is_array($_dataTags) and count($_dataTags) > 0) {
            foreach($_dataTags as $_tag) :
                $_tags .= $_tag -> slug.' ';
            endforeach;
            $_tags = trim($_tags, ' ');
        }
        //$output .= __('<h4>Related articles</h4>');

        // if ( $catName )
            // $output .= __( 'Kategorie: ' ) . get_cat_name($category) . ' ';

        $args = array(
            'numberposts'   => $limit,
            // 'category'      => $category,
            'tag'           => $_tags,
            // 'tag_id'        => get_the_tag_list(),
        );

        $output .= "<ul>";

        $recentposts = get_posts( $args );
        foreach($recentposts as $post) {
            if($post->ID != (int)get_the_ID()) {
                set_post_thumbnail_size( 50, 50 );
                setup_postdata($post);
                $output .= '<li>';
                    $output .= '<div class="left">';
                        $output .= '<a href="' . get_permalink($post->ID) . '">' .get_the_post_thumbnail($post->ID, array(50, 50)). '</a>';
                    $output .= '</div>';
                    $output .= '<a href="' . get_permalink($post->ID) . '">' . get_the_title($post->ID) . '</a>';
                $output .= '</li>';
                $_count ++;
            }
        }

        $output .= "</ul>";

        $output .= '</div>';

    return ($_count > 0) ? $output : '';
    }
}

remove_action('wp_head', 'wp_shortlink_wp_head', 10, 0);
remove_action( 'wp_head', 'adjacent_posts_rel_link_wp_head' );


function get_content_template() {
    $_slug = this_Slug();  
    $_path = get_template_directory(). '/cellspy-pages/'. strtolower( $_slug ).'.php';
    
    if(file_exists( $_path )) {
        require_once $_path;
        ob_start();
        $_content = ob_get_contents();
        ob_clean();
        return $_content; 
    } else if(file_exists( get_template_directory(). '/cellspy-pages/content.php' )) {
        require_once get_template_directory(). '/cellspy-pages/content.php';
    } else {
        return the_content();
    }    
}

add_action('content_temp', 'get_content_template');

function getStaticUrl(){
	include('../../includes/config.php');
	return $config['domain_http'];
	
}

function getVersionOS($version){
    include('../../includes/config.php');
    return (isset($config[ $version ])) ? $config[ $version ] : '';

}

function hasUser() {
    require_once '../../includes/lib/users/ManagerUser.php';
    $obj = new includes\lib\users\ManagerUser( array() );
    $_result = false;
    
    if($obj -> getLoginUser()) {
        $_result = true;
    }
    
    return $_result;
}

function isPhone() {
    require_once '../../includes/lib/users/ManagerUser.php';
    $obj = new includes\lib\users\ManagerUser( array() );
    $_result = false;
    
    if($obj ->isPhone()) {
        $_result = true;
    }
    
    return $_result;
}

function userNotice() {
    require_once '../../includes/lib/users/ManagerUser.php';
    $obj = new includes\lib\users\ManagerUser( array() );    
    //if($userData = $obj -> getLoginUser()) {
    $obj -> setNotice();
    //}
}

function statistic() {
    // require_once '../../statistic/scroogefrog_tcp.php';
    // require_once '../../statistic/scroogefrog_udp_tcp.php';
    // require_once '../../statistic/scroogefrog_tcp.php';
}

function createReferral() {
    if (!empty($_SERVER["HTTP_REFERER"]) ) {
        $_url = parse_url($_SERVER['HTTP_REFERER']);  
        if(!isset($_COOKIE['orders_referer']) and isset($_url['host']) and !preg_match('/((.*)\.|^)pumpic\.com/i', trim($_url['host'])) ) {
            setcookie("orders_referer", $_SERVER['HTTP_REFERER'], time() + 3600 * 24, '/', '.pumpic.com' );
        } 
    }     
    
    
//    $_domain = "http://" . $_SERVER["HTTP_HOST"];
//    //$_arr_domain = array($_domain, );
//    if ( isset($_SERVER["HTTP_REFERER"]) and !empty($_SERVER["HTTP_REFERER"]) ) {
//        if(substr($_SERVER["HTTP_REFERER"],0,strlen($_domain)) != $_domain) {
//        // # Проверяем куки и если нужно устанавливаем
//            setcookie("orders_referer", $_SERVER['HTTP_REFERER'], time() + 86400, '/' ); // 600 - 1м. 86400 - 1д.
//        // setcookie("orders_referer", $_SERVER['HTTP_REFERER'], time() + 86400, '/' );
//        } elseif (!isset($_COOKIE['orders_referer']) 
//                or (isset($_COOKIE['orders_referer']) and empty($_COOKIE['orders_referer']))) {
//            setcookie("orders_referer", $_SERVER['HTTP_REFERER'], time() + 600, '/' );
//        }
//    }  
}


function get_banners_align($_align = 'top', $post_ID = false, $banner_id = false) {
    global $wpdb;
    $_result = '';
    $_banner = array();
    
//    if(!$post_ID)
//        $post_ID = (int)get_the_ID();
    
    if((int)$post_ID) {
        
        $banner_id = $wpdb->get_results("SELECT banner_id FROM banners WHERE post_id = ".(int)$post_ID." AND align = '".$_align."'");
        if(is_array($banner_id) and count($banner_id) > 0) {
            $_banner = get_posts_format('post-format-banners', array('p' => (int)$banner_id[0] -> banner_id), true);
        }
        
        
    } else if((int)$banner_id) {
        $_banner = get_posts_format('post-format-banners', array('p' => (int)$banner_id), true);
    }
    
    if(count($_banner) > 0) :
        foreach($_banner as $_item) :
            if(is_object($_item))
                $_result .= $_item -> post_content;
        endforeach;
    endif;
    
    return $_result;
}

/**
 * Pumpic setup.
 *
 * Sets up theme defaults and registers the various WordPress features that
 * Pumpic supports.
 *
 * @uses load_theme_textdomain() For translation/localization support.
 * @uses add_editor_style() To add a Visual Editor stylesheet.
 * @uses add_theme_support() To add support for post thumbnails, automatic feed links,
 * 	custom background, and post formats.
 * @uses register_nav_menu() To add support for navigation menus.
 * @uses set_post_thumbnail_size() To set a custom post thumbnail size.
 *
 * @since Pumpic 1.0
 */
function cellspy_setup() {
	/*
	 * Makes Pumpic available for translation.
	 *
	 * Translations can be added to the /languages/ directory.
	 * If you're building a theme based on Pumpic, use a find and replace
	 * to change 'twentytwelve' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'cellspy', get_template_directory() . '/languages' );

	// This theme styles the visual editor with editor-style.css to match the theme style.
	add_editor_style();

	// Adds RSS feed links to <head> for posts and comments.
	add_theme_support( 'automatic-feed-links' );

	// This theme supports a variety of post formats.
	add_theme_support( 'post-formats', array( 'aside', 'image', 'link', 'quote', 'status', 'banners' ) );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menu( 'primary', __( 'Primary Menu', 'cellspy' ) );

	/*
	 * This theme supports custom background color and image,
	 * and here we also set up the default background color.
	 */
	add_theme_support( 'custom-background', array(
		'default-color' => 'e6e6e6',
	) );

	// This theme uses a custom image size for featured images, displayed on "standard" posts.
	add_theme_support( 'post-thumbnails' );
	set_post_thumbnail_size( 624, 9999 ); // Unlimited height, soft crop
}
add_action( 'after_setup_theme', 'cellspy_setup' );

/**
 * Add support for a custom header image.
 */
// require( get_template_directory() . '/inc/custom-header.php' );

/**
 * Return the Google font stylesheet URL if available.
 *
 * The use of Open Sans by default is localized. For languages that use
 * characters not supported by the font, the font can be disabled.
 *
 * @since Pumpic 1.2
 *
 * @return string Font stylesheet or empty string if disabled.
 */
function cellspy_get_font_url() {
	$font_url = '';

        /*
	if ( 'off' !== _x( 'on', 'Open Sans font: on or off', 'twentytwelve' ) ) {
		$subsets = 'latin,latin-ext';

		$subset = _x( 'no-subset', 'Open Sans font: add new subset (greek, cyrillic, vietnamese)', 'twentytwelve' );

		if ( 'cyrillic' == $subset )
			$subsets .= ',cyrillic,cyrillic-ext';
		elseif ( 'greek' == $subset )
			$subsets .= ',greek,greek-ext';
		elseif ( 'vietnamese' == $subset )
			$subsets .= ',vietnamese';

		$protocol = is_ssl() ? 'https' : 'http';
		$query_args = array(
			'family' => 'Open+Sans:400italic,700italic,400,700',
			'subset' => $subsets,
		);
		$font_url = add_query_arg( $query_args, "$protocol://fonts.googleapis.com/css" );
	}
        */

	return $font_url;
}

/**
 * Enqueue scripts and styles for front-end.
 *
 * @since Pumpic 1.0
 */
function cellspy_scripts_styles() {
	global $wp_styles;

	/*
	 * Adds JavaScript to pages with the comment form to support
	 * sites with threaded comments (when in use).
	 */
	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) )
		wp_enqueue_script( 'comment-reply' );

        /*
	// Adds JavaScript for handling the navigation menu hide-and-show behavior.
	wp_enqueue_script( 'twentytwelve-navigation', get_template_directory_uri() . '/js/navigation.js', array( 'jquery' ), '20140711', true );

	$font_url = twentytwelve_get_font_url();
	if ( ! empty( $font_url ) )
		wp_enqueue_style( 'twentytwelve-fonts', esc_url_raw( $font_url ), array(), null );

	// Loads our main stylesheet.
	wp_enqueue_style( 'twentytwelve-style', get_stylesheet_uri() );

	// Loads the Internet Explorer specific stylesheet.
	wp_enqueue_style( 'twentytwelve-ie', get_template_directory_uri() . '/css/ie.css', array( 'twentytwelve-style' ), '20121010' );
	$wp_styles->add_data( 'twentytwelve-ie', 'conditional', 'lt IE 9' );
        */
}
add_action( 'wp_enqueue_scripts', 'cellspy_scripts_styles' );

/**
 * Filter TinyMCE CSS path to include Google Fonts.
 *
 * Adds additional stylesheets to the TinyMCE editor if needed.
 *
 * @uses twentytwelve_get_font_url() To get the Google Font stylesheet URL.
 *
 * @since Pumpic 1.2
 *
 * @param string $mce_css CSS path to load in TinyMCE.
 * @return string Filtered CSS path.
 */
function cellspy_mce_css( $mce_css ) {
	$font_url = cellspy_get_font_url();

	if ( empty( $font_url ) )
		return $mce_css;

	if ( ! empty( $mce_css ) )
		$mce_css .= ',';

	$mce_css .= esc_url_raw( str_replace( ',', '%2C', $font_url ) );

	return $mce_css;
}
add_filter( 'mce_css', 'cellspy_mce_css' );

/**
 * Filter the page title.
 *
 * Creates a nicely formatted and more specific title element text
 * for output in head of document, based on current view.
 *
 * @since Pumpic 1.0
 *
 * @param string $title Default title text for current view.
 * @param string $sep Optional separator.
 * @return string Filtered title.
 */
function cellspy_wp_title( $title, $sep ) {
	global $paged, $page;

	if ( is_feed() )
		return $title;

	// Add the site name.
	$title .= get_bloginfo( 'name', 'display' );

	// Add the site description for the home/front page.
	$site_description = get_bloginfo( 'description', 'display' );
	if ( $site_description && ( is_home() || is_front_page() ) )
		$title = "$title $sep $site_description";

	// Add a page number if necessary.
	if ( ( $paged >= 2 || $page >= 2 ) && ! is_404() )
		$title = "$title $sep " . sprintf( __( 'Page %s', 'cellspy' ), max( $paged, $page ) );

	return $title;
}
add_filter( 'wp_title', 'cellspy_wp_title', 10, 2 );

/**
 * Filter the page menu arguments.
 *
 * Makes our wp_nav_menu() fallback -- wp_page_menu() -- show a home link.
 *
 * @since Pumpic 1.0
 */
function cellspy_page_menu_args( $args ) {
	if ( ! isset( $args['show_home'] ) )
		$args['show_home'] = true;
	return $args;
}
add_filter( 'wp_page_menu_args', 'cellspy_page_menu_args' );


/**
 * Register sidebars.
 *
 * Registers our main widget area and the front page widget areas.
 *
 * @since Pumpic 1.0
 */
function cellspy_widgets_init() {
        register_sidebar( array(
		'name' => __( 'Below banner', 'cellspy' ),
		'id' => 'sidebar-below-banner',
		'description' => __( 'The create sidebar right', 'cellspy' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">', // <aside id="%1$s" class="widget %2$s">
		'after_widget' => '</aside>', // </aside>
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );

        register_sidebar( array(
		'name' => __( 'All pages right box', 'cellspy' ),
		'id' => 'sidebar-main-right',
		'description' => __( 'The create sidebar right', 'cellspy' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">', // <aside id="%1$s" class="widget %2$s">
		'after_widget' => '</aside>', // </aside>
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );
    
	register_sidebar( array(
		'name' => __( 'Main Sidebar', 'cellspy' ),
		'id' => 'sidebar-1',
		'description' => __( 'Appears on posts and pages except the optional Front Page template, which has its own widgets', 'twentytwelve' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget' => '</aside>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );

	register_sidebar( array(
		'name' => __( 'First Front Page Widget Area', 'cellspy' ),
		'id' => 'sidebar-2',
		'description' => __( 'Appears when using the optional Front Page template with a page set as Static Front Page', 'twentytwelve' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget' => '</aside>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );

	register_sidebar( array(
		'name' => __( 'Second Front Page Widget Area', 'cellspy' ),
		'id' => 'sidebar-3',
		'description' => __( 'Appears when using the optional Front Page template with a page set as Static Front Page', 'twentytwelve' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget' => '</aside>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );
        
        register_sidebar( array(
		'name' => __( 'Bottom Widget Sidebar Left', 'cellspy' ),
		'id' => 'sidebar-4',
		'description' => __( 'The create footer menu links', 'cellspy' ),
		'before_widget' => '<div id="%1$s" class="col-sm-4 col-md-4 col-lg-4 col-sm-offset-1 col-md-offset-1 col-lg-offset-1 %2$s">', // <aside id="%1$s" class="widget %2$s">
		'after_widget' => '</div>', // </aside>
		'before_title' => '<h3>',
		'after_title' => '</h3>',
	) );
        
        register_sidebar( array(
		'name' => __( 'Bottom Widget Sidebar Center', 'cellspy' ),
		'id' => 'sidebar-5',
		'description' => __( 'The create footer menu links', 'cellspy' ),
		'before_widget' => '<div id="%1$s" class="col-sm-2 col-md-2 col-lg-2 col-sm-offset-1 col-md-offset-1 col-lg-offset-1 %2$s">', // <aside id="%1$s" class="widget %2$s">
		'after_widget' => '</div>', // </aside>
		'before_title' => '<h3>',
		'after_title' => '</h3>',
	) );
        
        register_sidebar( array(
		'name' => __( 'Bottom Widget Sidebar Right', 'cellspy' ),
		'id' => 'sidebar-6',
		'description' => __( 'The create footer menu links', 'cellspy' ),
		'before_widget' => '<div id="%1$s" class="col-sm-3 col-md-3 col-lg-3 %2$s">', // <aside id="%1$s" class="widget %2$s">
		'after_widget' => '</div>', // </aside>
		'before_title' => '<h3>',
		'after_title' => '</h3>',
	) );
        
        register_sidebar( array(
		'name' => __( 'Popular Sidebar Post', 'cellspy' ),
		'id' => 'sidebar-7',
		'description' => __( 'The create sidebar poplar post ( category and tags )', 'cellspy' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">', // <aside id="%1$s" class="widget %2$s">
		'after_widget' => '</aside>', // </aside>
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );
        
        // mailChimp subscribe
        register_sidebar( array(
		'name' => __( 'Subscribe mailChimp', 'cellspy' ),
		'id' => 'sidebar-subscribe',
		'description' => __( 'MailChimp subscribe ', 'cellspy' ),
		'before_widget' => '<div id="%1$s" class="box-sidebar-subscribe sidebar-subscribe-type sidebar-subscribe-item %2$s">',
		'after_widget' => '</div>', // </aside>
		'before_title' => '',
		'after_title' => '',
            ) );


	register_sidebar(array(
			'name' => 'Entrepreneurial Skills',
			'id' => 'homepage-sidebar',
			'before_widget' => '<div id="%1$s" class="box-sidebar-subscribe sidebar-subscribe-type sidebar-subscribe-item %2$s">',
			'after_widget' => '</div>',
			'before_title' => '<h2>',
			'after_title' => '</h2>',
	));



	register_sidebar(array(
			'name' => 'Children Safe',
			'id' => 'gfd',
			'before_widget' => '',
			'after_widget' => '',
			'before_title' => '<h2>',
			'after_title' => '</h2>',
	));

        /*
        // genarated sidevar all pages
        $pages = get_pages_list();
        
        foreach($pages as $page) :
            register_sidebar( array(
		'name' => __( 'Subscribe ('.$page['post_type'].'-'.$page['ID'].')', 'cellspy' ),
		'id' => 'sidebar-subscribe-'.$page['ID'],
		'description' => __( 'MailChimp subscribe '.$page['post_type'], 'cellspy' ),
		'before_widget' => '<div id="%1$s" class="box-sidebar-subscribe sidebar-subscribe-type-'.$page['post_type'].' sidebar-subscribe-item-'.$page['ID'].' %2$s">',
		'after_widget' => '</div>', // </aside>
		'before_title' => '',
		'after_title' => '',
            ) );
        endforeach; */
        
        
        
}
add_action( 'widgets_init', 'cellspy_widgets_init' );



function get_pages_list() {
    global $wpdb;
    
    
    $pages = $wpdb->get_results("SELECT * FROM $wpdb->posts WHERE $wpdb->posts.post_type IN ('page', 'post')
                        AND $wpdb->posts.post_status = 'publish'
                        AND $wpdb->posts.post_parent = '0' ORDER BY menu_order ASC ", ARRAY_A );
    return $pages; 
}


if ( ! function_exists( 'cellspy_content_nav' ) ) :
function cellspy_content_nav( $html_id ) {
	global $wp_query;

	$html_id = esc_attr( $html_id );

	if ( $wp_query->max_num_pages > 1 ) : ?>
		<nav id="<?php echo $html_id; ?>" class="navigation" role="navigation">
			<h3 class="assistive-text"><?php _e( 'Post navigation', 'cellspy' ); ?></h3>
			<div class="nav-previous"><?php next_posts_link( __( '<span class="meta-nav">&larr;</span> Older posts', 'cellspy' ) ); ?></div>
			<div class="nav-next"><?php previous_posts_link( __( 'Newer posts <span class="meta-nav">&rarr;</span>', 'cellspy' ) ); ?></div>
		</nav><!-- #<?php echo $html_id; ?> .navigation -->
	<?php endif;
}
endif;

if ( ! function_exists( 'cellspy_comment' ) ) :

function cellspy_comment( $comment, $args, $depth ) {
	$GLOBALS['comment'] = $comment;
	switch ( $comment->comment_type ) :
		case 'pingback' :
		case 'trackback' :
		// Display trackbacks differently than normal comments.
	?>
	<li <?php comment_class(); ?> id="comment-<?php comment_ID(); ?>">
		<p><?php _e( 'Pingback:', 'cellspy' ); ?> <?php comment_author_link(); ?> <?php edit_comment_link( __( '(Edit)', 'cellspy' ), '<span class="edit-link">', '</span>' ); ?></p>
	<?php
			break;
		default :
		// Proceed with normal comments.
		global $post;
	?>
	<li <?php comment_class(); ?> id="li-comment-<?php comment_ID(); ?>">
		<article id="comment-<?php comment_ID(); ?>" class="comment">
			<header class="comment-meta comment-author vcard">
				<?php
					echo get_avatar( $comment, 44 );
					printf( '<cite><b class="fn">%1$s</b> %2$s</cite>',
						get_comment_author_link(),
						// If current post author is also comment author, make it known visually.
						( $comment->user_id === $post->post_author ) ? '<span>' . __( 'Post author', 'cellspy' ) . '</span>' : ''
					);
					printf( '<a href="%1$s"><time datetime="%2$s">%3$s</time></a>',
						esc_url( get_comment_link( $comment->comment_ID ) ),
						get_comment_time( 'c' ),
						
						sprintf( __( '%1$s at %2$s', 'cellspy' ), get_comment_date(), get_comment_time() )
					);
				?>
			</header><!-- .comment-meta -->

			<?php if ( '0' == $comment->comment_approved ) : ?>
				<p class="comment-awaiting-moderation"><?php _e( 'Your comment is awaiting moderation.', 'cellspy' ); ?></p>
			<?php endif; ?>

			<section class="comment-content comment">
				<?php comment_text(); ?>
				<?php edit_comment_link( __( 'Edit', 'cellspy' ), '<p class="edit-link">', '</p>' ); ?>
			</section><!-- .comment-content -->

			<div class="reply">
				<?php comment_reply_link( array_merge( $args, array( 'reply_text' => __( 'Reply', 'cellspy' ), 'after' => ' <span>&darr;</span>', 'depth' => $depth, 'max_depth' => $args['max_depth'] ) ) ); ?>
			</div><!-- .reply -->
		</article><!-- #comment-## -->
	<?php
		break;
	endswitch; // end comment_type check
}
endif;



if ( ! function_exists( 'cellspy_entry_meta' ) ) :
/**
 * Set up post entry meta.
 *
 * Prints HTML with meta information for current post: categories, tags, permalink, author, and date.
 *
 * Create your own twentytwelve_entry_meta() to override in a child theme.
 *
 * @since Pumpic 1.0
 */
function cellspy_entry_meta() {
	// Translators: used between list items, there is a space after the comma.
	$categories_list = get_the_category_list( __( ', ', 'cellspy' ) );

	// Translators: used between list items, there is a space after the comma.
	$tag_list = get_the_tag_list( '', __( ', ', 'cellspy' ) );

	$date = sprintf( '<a href="%1$s" title="%2$s" rel="bookmark"><time class="entry-date" datetime="%3$s">%4$s</time></a>',
		esc_url( get_permalink() ),
		esc_attr( get_the_time() ),
		esc_attr( get_the_date( 'c' ) ),
		esc_html( get_the_date() )
	);

	$author = sprintf( '<span class="author vcard"><a class="url fn n" href="%1$s" title="%2$s" rel="author">%3$s</a></span>',
		esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ),
		esc_attr( sprintf( __( 'View all posts by %s', 'cellspy' ), get_the_author() ) ),
		get_the_author()
	);

	// Translators: 1 is category, 2 is tag, 3 is the date and 4 is the author's name.
	if ( $tag_list ) {
		$utility_text = __( 'This entry was posted in %1$s and tagged %2$s on %3$s<span class="by-author"> by %4$s</span>.', 'cellspy' );
	} elseif ( $categories_list ) {
		$utility_text = __( 'This entry was posted in %1$s on %3$s<span class="by-author"> by %4$s</span>.', 'cellspy' );
	} else {
		$utility_text = __( 'This entry was posted on %3$s<span class="by-author"> by %4$s</span>.', 'cellspy' );
	}

	printf(
		$utility_text,
		$categories_list,
		$tag_list,
		$date,
		$author
	);
}
endif;

/**
 * Extend the default WordPress body classes.
 *
 * Extends the default WordPress body class to denote:
 * 1. Using a full-width layout, when no active widgets in the sidebar
 *    or full-width template.
 * 2. Front Page template: thumbnail in use and number of sidebars for
 *    widget areas.
 * 3. White or empty background color to change the layout and spacing.
 * 4. Custom fonts enabled.
 * 5. Single or multiple authors.
 *
 * @since Pumpic 1.0
 *
 * @param array $classes Existing class values.
 * @return array Filtered class values.
 */
function cellspy_body_class( $classes ) {
	$background_color = get_background_color();
	$background_image = get_background_image();

//	if ( ! is_active_sidebar( 'sidebar-1' ) || is_page_template( 'page-templates/full-width.php' ) )
//		$classes[] = 'full-width';
//
//	if ( is_page_template( 'page-templates/front-page.php' ) ) {
//		$classes[] = 'template-front-page';
//		if ( has_post_thumbnail() )
//			$classes[] = 'has-post-thumbnail';
//		if ( is_active_sidebar( 'sidebar-2' ) && is_active_sidebar( 'sidebar-3' ) )
//			$classes[] = 'two-sidebars';
//	}
//
//	if ( empty( $background_image ) ) {
//		if ( empty( $background_color ) )
//			$classes[] = 'custom-background-empty';
//		elseif ( in_array( $background_color, array( 'fff', 'ffffff' ) ) )
//			$classes[] = 'custom-background-white';
//	}
//
//	// Enable custom font class only if the font CSS is queued to load.
//	if ( wp_style_is( 'twentytwelve-fonts', 'queue' ) )
//		$classes[] = 'custom-font-enabled';

	if ( ! is_multi_author() )
		$classes[] = 'single-author';

	return $classes;
}
add_filter( 'body_class', 'cellspy_body_class' );

/**
 * Adjust content width in certain contexts.
 *
 * Adjusts content_width value for full-width and single image attachment
 * templates, and when there are no active widgets in the sidebar.
 *
 * @since Pumpic 1.0
 */
function cellspy_content_width() {
	if ( is_page_template( 'page-templates/full-width.php' ) || is_attachment() || ! is_active_sidebar( 'sidebar-1' ) ) {
		global $content_width;
		$content_width = 960;
	}
}
add_action( 'template_redirect', 'cellspy_content_width' );

/**
 * Register postMessage support.
 *
 * Add postMessage support for site title and description for the Customizer.
 *
 * @since Pumpic 1.0
 *
 * @param WP_Customize_Manager $wp_customize Customizer object.
 */
function cellspy_customize_register( $wp_customize ) {
	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';
	$wp_customize->get_setting( 'header_textcolor' )->transport = 'postMessage';
}
add_action( 'customize_register', 'cellspy_customize_register' );

/**
 * Enqueue Javascript postMessage handlers for the Customizer.
 *
 * Binds JS handlers to make the Customizer preview reload changes asynchronously.
 *
 * @since Pumpic 1.0
 */
function cellspy_customize_preview_js() {
	wp_enqueue_script( 'cellspy-customizer', get_template_directory_uri() . '/js/theme-customizer.js', array( 'customize-preview' ), '20130301', true );
}
add_action( 'customize_preview_init', 'cellspy_customize_preview_js' );

function coupon_func( ) {
	return '<div class="box-form-subscribe dark">
                
<form method="POST" action="http://pumpic.com/security-subscribe-form-mailChimp.html" name="subscribe-'.get_the_ID().'">

    <input type="hidden" name="link" value="http://pumpic.us9.list-manage.com/subscribe?u=121503f636b81be9179c9f178&id=4fda74feb8" />

    <div class="row">
        <div class="col-s-sm-12 col-sm-3 col-md-3 col-lg-3">
            <img class="image" src="http://pumpic.com/security/wp-content/uploads/2015/02/img-subscribe-1.png" alt="" />
        </div>
        <div class="col-s-sm-12 col-sm-12 col-md-12 col-lg-12">
            <div class="visual-text">
                <label class="title uppercase">Want to receive exclusive Pumpic coupons? </label>
                <p class="description">Subscribe to be the first to get unique offers! </p>
                <section>
                    <div class="clearfix">
                        <div class="block-input left">
                            <input type="text" class="email required" name="MERGE0" value="" placeholder="Your email" />
                        </div>
                        <div class="block-button left">
                            <button class="btn-green" name="submit">Subscribe</button>
                        </div>
                    </div>    
                    <div class="block-error"></div>
                </section>
                
                <label class="block-info">We’ll never share your email adress and you can opt out at any time, we promise.</label>
                
            </div>    
        </div>
    </div>

</form>

</div>';
}
add_shortcode( 'coupon_form', 'coupon_func' );
function subscription_form_func( $atts ) {
	extract(shortcode_atts(array(
		'title'      => '',          // Plan title name
		'link'		=> '',
		'description' => '',
		'button_text' => '',
		'info'		 => '',

	), $atts));
	return '<div class="box-form-subscribe dark">
                
<form method="POST" action="http://pumpic.com/security-subscribe-form-mailChimp.html" name="subscribe-'.get_the_ID().'">

    <input type="hidden" name="link" value="'.$link.'" />

    <div class="row">
        <div class="col-s-sm-12 col-sm-3 col-md-3 col-lg-3">
            <img class="image" src="http://pumpic.com/security/wp-content/uploads/2015/02/img-subscribe-1.png" alt="" />
        </div>
        <div class="col-s-sm-12 col-sm-9 col-md-9 col-lg-9">Q
            <div class="visual-text">
                <label class="title uppercase">'.$title.'</label>
                <p class="description">'.$description.'</p>
                <section>
                    <div class="clearfix">
                        <div class="block-input left">
                            <input type="text" class="email required" name="MERGE0" value="" placeholder="Your email" />
                        </div>
                        <div class="block-button left">
                            <button class="btn-green" name="submit">'.$button_text.'</button>
                        </div>
                    </div>    
                    <div class="block-error"></div>
                </section>
                
                <label class="block-info">'.$info.'</label>
                
            </div>    
        </div>
    </div>

</form>

</div>';
}
add_shortcode( 'subscription_form', 'subscription_form_func' );