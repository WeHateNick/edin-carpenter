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

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'edin-carpenter');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         'S<M~vY|+ngfYs</f?k$Ssm+b!sPAP|v-o@oJ3eWuFt*xd(++x+B>b!Ybf|,8gy.9');
define('SECURE_AUTH_KEY',  'wyqEQ^(c<IS5iosO~#]|<qRCARKqms>BWCqxe,ttH-@z~d_^_t468YN|_4LVoA)]');
define('LOGGED_IN_KEY',    'fmTAe(f]bN)-+_^BIWX(F:oWa!nnqV0h bm77)XLqtkFDr7aAL9<W2.mIzwz[4|>');
define('NONCE_KEY',        '|5i@.:_|A-qjVw?cj3;Xz.4};C)SUY$s- H6#-(w_T()3Ena^2PA(}&p{&#>t^DK');
define('AUTH_SALT',        'eVTC[Ec)x~,MQ46zW8kh~<rSB6F+~hkN.I.0|vA2Np^.BXg)84TWy5T_3C+Uu%~1');
define('SECURE_AUTH_SALT', 'e><l75g1=/h==PI(@L=gwA*oAc9f;VCR|t3-P+$&f|krX]LndDfl Q~-9@n?P#){');
define('LOGGED_IN_SALT',   'j0C%(zdW+Fn95o$wOO#pq|VBoSH65_V6kk^/O3: t4 BUiIY+hg 9zV(C-.u+&&9');
define('NONCE_SALT',       '*CcM`4)(I:|g5|.VE>$Aw!&@sCFy~yg9/!M}g9y!2&2a<{pLx-<2cQVA]ty8&XC3');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

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

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
