<?php 
    if ( is_active_sidebar( 'sidebar-subscribe-'.get_the_ID() ) ) : ?>
        <div id="sidebar-subscribe" class="widget-sidebar-subscribe">
         <?php dynamic_sidebar( 'sidebar-subscribe-'.get_the_ID() ); ?>
         </div><!-- #sidebar-subscribe -->
<?php         
    endif;
?>
 