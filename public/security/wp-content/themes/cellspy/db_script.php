<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 18.07.16
 * Time: 15:30
 */
//require '../../../wp-admin/includes/schema.php';

require '../../../wp-includes/wp-db.php';

 $wpdb = new wpdb();

        $posts = $wpdb->get_results("SELECT * FROM wp_posts");
        var_dump($posts);

