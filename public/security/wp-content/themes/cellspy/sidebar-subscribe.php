<?php if ( is_active_sidebar( 'sidebar-subscribe' ) and !is_category() and !is_tag()) : ?>
        <div id="sidebar-subscribe" class="widget-sidebar-subscribe">
                <?php dynamic_sidebar( 'sidebar-subscribe' ); ?>
        </div><!-- #sidebar-subscribe -->
<?php endif; ?>
 