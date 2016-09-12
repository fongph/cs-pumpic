<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */
global $config;
$config or require dirname(dirname(__DIR__)) . '/includes/config.php';
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', $config['db_blog']['dbname']);

/** MySQL database username */
define('DB_USER', $config['db_blog']['username']);

/** MySQL database password */
define('DB_PASSWORD', $config['db_blog']['password']);

/** MySQL hostname */
define('DB_HOST', $config['db_blog']['host']);

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define('FS_METHOD', 'direct');


/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'a!-3{i`P*u=)Ha]5Fx-a8jw z*NNb;mhSCJO4x7qJfZ@3b$>KkhLDZp73%#uLY(,');
define('SECURE_AUTH_KEY',  '-g I| oT)h:&p-IZ02-t5l#!Loa-vk/|pGPES7DUC?- =.9Q/20PLM}WLDXWnSO*');
define('LOGGED_IN_KEY',    '*&s5r7*L%z8.t{:0;6@`z9ZZj1mL)rV`+HD,!AJ<H9Gy8Dab$3P+t>9tG:6QSDM[');
define('NONCE_KEY',        'c9~q.rES7 =E[CQ|UX`YNxUmJat]4W&%<DqPgz*v}!-zCQ0=Grps{x_o`Go 8E0;');
define('AUTH_SALT',        'rSWsQH<gDwqLHuxg-J$[->sV+$F{Hf.8}[V^Xy&uuUDU[OsB8m(*ZQ5X6uT-p:|R');
define('SECURE_AUTH_SALT', '&s%`b  h_N<5o!FerLl^z0fg44duT]qUWqQkf8X@%m#!CW:,BcJ:^V_X[RDC9 pU');
define('LOGGED_IN_SALT',   'F?,)(v{%Y*hY~x+x-=+n.8K8<E4~va-_tp|VI3SuFn%x,VtCsT7|/|G|-&vR+2{=');
define('NONCE_SALT',       'V.i90m=U@z>|VF<)1y7BkR*G`<-B7ec-t|z`kqqB($X<>p|T&r{!)pJ#m&$w@OGw');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
    define('ABSPATH', dirname(__FILE__) . '/');

define('WP_HOME', 'http://'.$_SERVER['HTTP_HOST'].'/security/');
define('WP_SITEURL', 'http://'.$_SERVER['HTTP_HOST'].'/security/');
/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
