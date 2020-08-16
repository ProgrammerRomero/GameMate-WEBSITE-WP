<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'YfveDaMbE13L9raaJnvpgJDKh2rqLN7+47Q/bwSEkFFyLVNMaVhH5zKQQ1W0zYRU+1raWFJX/3YmXPu6dzMEbA==');
define('SECURE_AUTH_KEY',  'eZcWcaWqsY+djqha+ELZ97Vj9tAyUcBMZ81yAm5hUD6iHD+fr9Sc1lgvxz3+EmvjbeIyHShljpMEtGC/lv8J4Q==');
define('LOGGED_IN_KEY',    'KnfCM14aV2xvtiyioNMC6YNpbdR45pUW2bnBU+Xc/kljJNsUzycmm/KmIzYXNLWn88w+umysWnRKAuGoUF9zZQ==');
define('NONCE_KEY',        'vUP8clh/mOjbdEFHf2jgXe29gZowwanYlA9hzorY1v8+QANbakezA7BdFPcGCx+1jOHR4GueBjpSKC9TghnotQ==');
define('AUTH_SALT',        '+MoFmVmX+uyD7vagoCabr21PV92b7Ng41bpj2tIc6icX4Bh3WLcNMLG21CH4CtZfgWuaH0ZzGknPnH66tuPWDQ==');
define('SECURE_AUTH_SALT', 'XjlZoztgYUyIf/pwiswzRjKwnJqzdplAZ/Qof4SWHXrLSjuFdEO9oW/rH2c5K2Z1HXoIeBCDiloWbeJbeifszw==');
define('LOGGED_IN_SALT',   'a+DY93gQvbae09wAO2Y8H20k/XLCUxbwMLc742EVcNVD8GdEgIkuDEnzF+FFMdylSLqhWUi8hpbqmYKdtINAIw==');
define('NONCE_SALT',       'i/7oUGe1hBMuAPiRIGHSevX5/1KYS95X8WQ0BwMV5wnhi7qehNU1/nflI95bSOmyWEKBvQywdzdN4PfzzvfbIw==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
