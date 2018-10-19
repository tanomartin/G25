<?php
define('THEME_URL', get_template_directory_uri());
define('SITE_URL', home_url());

add_action('after_setup_theme', 'theme_setup');

require_once get_template_directory() . '/resourse/class-wp-bootstrap-navwalker.php';

function theme_setup()
{
    add_theme_support('post-thumbnails');
}

register_nav_menus( array(
    'primary' => __( 'Primary Menu', 'G25' ),
));

add_filter( 'wp_nav_menu_items', 'add_first_nav_item', 10, 2 );
function add_first_nav_item($items, $args)
{
	if ($args->menu->name == 'MenuPrincipal') {
		$items = '<li>'.do_shortcode('[ivory-search id="28" title="nota"]').'</li>'.$items;
		return $items;
	} else {
		return $items;
	}
}


function theme_get_the_title()
{
    if (is_home()) {
        $title = get_bloginfo('name');
    } else if (is_category()) {
        $title = single_cat_title() . ' | G25';
    } else {
        $title = get_the_title() . ' | G25';
    }
    echo $title;
}


function theme_get_the_description()
{
    if (is_page() || is_single()) {
        if (has_excerpt()) {
            $description = get_the_excerpt();
        } else {
            $description = explode(PHP_EOL, (explode('<!--more-->', get_page(get_the_ID())->post_content)[0]))[0];
        }
    } else if (is_category()) {
        $description = category_description();
    }
    if (empty($description)) {
        $description = get_bloginfo('description');
    }
    echo strip_tags($description);
}

function post_child_category($id = null)
{
    if ($id = null)
        return false;
    $categories = get_the_category($id);
    if (count($categories) > 0) {
        return $categories[count($categories)-2];
    } else {
        return false;
    }
}

add_action('init', 'cpt_comunidad', 1);
function cpt_comunidad() {
	$labels = array(
			'name' => _x('Comunidad', 'post type general name'),
			'singular_name' => _x('Comunidad', 'post type singular name'),
			'add_new' => _x('A&ntilde;adir Nuevo', 'Comunidad'),
			'add_new_item' => __('A&ntilde;adir Nuevo'),
			'edit_item' => __('Editar'),
			'new_item' => __('Nuevo'),
			'view_item' => __('Ver'),
			'search_items' => __('Buscar'),
			'not_found' => __('No se han encontrado ningun resultado'),
			'not_found_in_trash' => __('No se han encontrado ningun resultado en la papelera')
	);
	$args = array(
			'labels' => $labels,
			'public' => true,
			'hierarchical' => false,
			'menu_position' => 4,
			'has_archive' => true,
			'query_var' => true,
			'supports' => array('title'),
			'rewrite' => array('slug' => 'comunidad'),
	);
	register_post_type( 'comunidad', $args );
}


/*add_action('init', 'cpt_agenda', 1);
function cpt_agenda() {
	$labels = array(
			'name' => _x('Agenda', 'post type general name'),
			'singular_name' => _x('Evento', 'post type singular name'),
			'add_new' => _x('A&ntilde;adir Nuevo Evento', 'Evento'),
			'add_new_item' => __('A&ntilde;adir Nuevo Evento'),
			'edit_item' => __('Editar'),
			'new_item' => __('Nuevo'),
			'view_item' => __('Ver'),
			'search_items' => __('Buscar'),
			'not_found' => __('No se han encontrado ningun resultado'),
			'not_found_in_trash' => __('No se han encontrado ningun resultado en la papelera')
	);
	$args = array(
			'labels' => $labels,
			'public' => true,
			'hierarchical' => false,
			'menu_position' => 3,
			'has_archive' => false,
			'query_var' => true,
			'supports' => array('title','editor','thumbnail'),
			'rewrite' => array('slug' => 'agenda'),
	);

	register_post_type( 'agenda', $args );
}

add_action( 'init', 'crear_agenda_taxonomy' );
function crear_agenda_taxonomy() {
	register_taxonomy(
			'geografico',
			'agenda',
			array(
					'label' => __( 'Geografico' ),
					'rewrite' => array( 'slug' => 'geografico' ),
					'hierarchical' => true,
			)
	);
}*/
?>