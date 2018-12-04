<?php
/**
 * Fires during plugin deactivation.
 *
 * This class defines all code necessary to run during the plugin's deactivation.
 *
 * @since      1.0.0
 * @package    IS
 * @subpackage IS/includes
 * @author     Ivory Search <admin@ivorysearch.com>
 */

class IS_Deactivator {

	/**
	 * The code that runs during plugin deactivation.
	 *
	 * @since    1.0.0
	 */
	public static function deactivate() {

		$opt = Ivory_Search::load_options();

		if ( isset( $opt['dismiss_admin_notices'] ) ) {
			unset( $opt['dismiss_admin_notices'] );
			update_option( 'is_settings', $opt );
		}
	}
}
