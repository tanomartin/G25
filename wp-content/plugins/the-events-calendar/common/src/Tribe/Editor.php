<?php
/**
 * Initialize Gutenberg editor blocks
 *
 * @since 4.8
 */
class Tribe__Editor {

	/**
	 * Meta key for flaging if a post is from classic editor
	 *
	 * @since 4.8
	 *
	 * @var string
	 */
	public $key_flag_classic_editor = '_tribe_is_classic_editor';

	/**
	 * Utility function to check if we should load the blocks or not based on two assumptions
	 *
	 * a) Is gutenberg active?
	 * b) Is the blocks editor active?
	 *
	 * @since 4.8
	 *
	 * @return bool
	 */
	public function should_load_blocks() {
		return (
			$this->is_gutenberg_active()
			|| $this->is_wp_version()
		)
		&& $this->is_blocks_editor_active();
	}

	/**
	 * Checks if we are on version 5.0-alpha or higher where we no longer have
	 * Gutenberg Project, but the Blocks Editor
	 *
	 * @since 4.8
	 *
	 * @return boolean
	 */
	public function is_wp_version() {
		global $wp_version;

		return version_compare( $wp_version, '5.0-alpha', '>=' );
	}

	/**
	 * Checks if we have Gutenberg Project online, only useful while
	 * its a external plugin
	 *
	 * @since 4.8
	 *
	 * @return boolean
	 */
	public function is_gutenberg_active() {
		return function_exists( 'the_gutenberg_project' );
	}

	/**
	 * Checks if we have Editor Block active
	 *
	 * @since 4.8
	 *
	 * @return boolean
	 */
	public function is_blocks_editor_active() {
		return function_exists( 'register_block_type' ) && function_exists( 'unregister_block_type' );
	}

	/**
	 * Adds the required fields into the Events Post Type so that we can use Block Editor
	 *
	 * @since 4.8
	 *
	 * @param  array $args Arguments used to setup the Post Type
	 *
	 * @return array
	 */
	public function add_support( $args = array() ) {
		// Make sure we have the Support argument and it's an array
		if ( ! isset( $args['supports'] ) || ! is_array( $args['supports'] ) ) {
			$args['supports'] = array();
		}

		// Add Editor Support
		if ( ! in_array( 'editor', $args['supports'] ) ) {
			$args['supports'][] = 'editor';
		}

		return $args;
	}

	/**
	 * Adds the required fields into the Post Type so that we can the Rest API to update it
	 *
	 * @since 4.8
	 *
	 * @param  array $args Arguments used to setup the Post Type
	 *
	 * @return array
	 */
	public function add_rest_support( $args = array() ) {
		// Blocks Editor requires REST support
		$args['show_in_rest'] = true;

		// Make sure we have the Support argument and it's an array
		if ( ! isset( $args['supports'] ) || ! is_array( $args['supports'] ) ) {
			$args['supports'] = array();
		}

		if ( ! in_array( 'revisions', $args['supports'] ) ) {
			$args['supports'][] = 'revisions';
		}

		// Add Custom Fields (meta) Support
		if ( ! in_array( 'custom-fields', $args['supports'] ) ) {
			$args['supports'][] = 'custom-fields';
		}

		// Add Post Title Support
		if ( ! in_array( 'title', $args['supports'] ) ) {
			$args['supports'][] = 'title';
		}

		// Add Post Excerpt Support
		if ( ! in_array( 'excerpt', $args['supports'] ) ) {
			$args['supports'][] = 'excerpt';
		}

		// Add Post Content Support
		if ( ! in_array( 'editor', $args['supports'] ) ) {
			$args['supports'][] = 'editor';
		}

		// Add Post Author Support
		if ( ! in_array( 'author', $args['supports'] ) ) {
			$args['supports'][] = 'author';
		}

		// Add Thumbnail Support
		if ( ! in_array( 'thumbnail', $args['supports'] ) ) {
			$args['supports'][] = 'thumbnail';
		}

		return $args;
	}

	/**
	 * classic_editor_replace is function that is created by the plugin:
	 *
	 * - https://wordpress.org/plugins/classic-editor/
	 *
	 * @since 4.8
	 *
	 * @return bool
	 */
	public function is_classic_plugin_active() {
		return function_exists( 'classic_editor_replace' );
	}

	/**
	 * Check if the setting `'classic-editor-replace'` is set to `replace` that option means to
	 * replace the gutenberg editor with the classic editor
	 *
	 * @since 4.8
	 *
	 * @return bool
	 */
	public function is_classic_option_active() {
		return 'replace' === get_option( 'classic-editor-replace' );
	}

	/**
	 * Detect if is the classic editor is forced activated via plugin or if it comes from a request
	 *
	 * @since 4.8
	 *
	 * @return bool
	 */
	public function is_classic_editor() {
		$disabled_by_plugin = $this->is_classic_plugin_active() && $this->is_classic_option_active();
		$is_classic_editor_request = tribe_get_request_var( 'classic-editor', null );
		return $is_classic_editor_request || $disabled_by_plugin;
	}
}
