<article id="post-<?php the_ID(); ?>" class="post artice_bordered">
    <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
    <div class="list_tags">
        <span class="date"><?php echo get_the_date();  // wp_date_format() ?></span>
        <?php /* the_tags(__('<strong>Posted by to</strong>'), '') */ ?>
    </div>
    <div class="pull-left">
        <?php the_post_thumbnail(); ?>
    </div>   
    <p>
    <?php 
        if(get_post_content()) {
            $content = preg_replace('#\[(.*)\](.*?)\[/(.*)?\]#si', '', get_post_content());
            $content = strip_tags($content);
            echo substr((string)$content, 0, 309).' …';
        }    
        ?> 
    </p>
    <?php /*<a href="<?php the_permalink(); ?>">Read more</a>*/ ?>
</article> <!-- .artice_bordered 2 -->
