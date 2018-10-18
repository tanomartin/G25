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
define('DB_NAME', 'G25');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'wP$3!2XHa4,cbjKnLN@o#Eft3Ed_+_oP?O4Y)U}*w_H#6?TwX*vIpeo4(FooySQd');
define('SECURE_AUTH_KEY',  'Z)]#14LUg`q[IYdB>|cCeQ?`]RY>zdCoxuKNPZc=cdpJAQz$UT%KgG[<_rA>{6[5');
define('LOGGED_IN_KEY',    'x4V|m<LO+v0C`iKldzt?f89Q1%xT<]#qVGcA4!Kwoh([1KTb7rr57`}Eu?cPghKw');
define('NONCE_KEY',        'd5 .vCY9UQ*UU5Lwq$G|)+VO/U@OD`Edo]FZh/5k`&#(7?7;cp!RA-Le-;8d8*[]');
define('AUTH_SALT',        'Lg?^{2LR=^`SU-`>&p)U260x=)JnMn#<^Xkv4uxmEaa0?lkI86h~$U_+HSm{C0Cp');
define('SECURE_AUTH_SALT', 'f`lW[7Zk*N%^O7hck<$1CP3sb1v&EnaVpIdHzoQMSx[_<NX|Y*LzZ`AufZet}b1j');
define('LOGGED_IN_SALT',   'ce;VoQVyxx-Z87^~)`4}Vzns*@0x2-8x3)J;hPP4?IG+2Vgg&]%t[o*@m5MT f7(');
define('NONCE_SALT',       'Nlj6gP~OhJ[Y3JY~L,3Rzk0-W3OlEyo|Kdw=Mh5bgpxxLBHM.>uBI0+Lq2;-ra*m');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'g25_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
