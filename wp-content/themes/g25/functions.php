<?php
define('THEME_URL', get_template_directory_uri());
define('SITE_URL', home_url());

add_action('after_setup_theme', 'theme_setup');

function theme_setup()
{
    add_theme_support('post-thumbnails');
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
?>