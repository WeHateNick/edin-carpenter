<?php 

function theme_styles() {

	wp_enqueue_style('normalize', get_template_directory_uri() . '/css/normalize.css');
	wp_enqueue_style('image-gallery_css', get_template_directory_uri() . '/css/bootstrap-image-gallery.min.css');
	wp_enqueue_style('bootstrap_css', get_template_directory_uri() . '/css/bootstrap.min.css');
	wp_enqueue_style('style', get_template_directory_uri() . '/style.css');

}
add_action('wp_enqueue_scripts', 'theme_styles');

function theme_js() {

	global $wp_scripts;

	wp_register_script('html5_shiv', 'https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"', '', '', false);
	wp_register_script('respond_js', 'https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"', '', '', false);

	$wp_scripts->add_data('html5_shiv', 'conditional', 'lt IE 9');
	$wp_scripts->add_data('respond_js', 'conditional', 'lt IE 9');

	wp_enqueue_script('bootstrap_js', get_template_directory_uri() . '/js/bootstrap.min.js', array('jquery'), '', true);
	wp_enqueue_script('docs_js', get_template_directory_uri() . '/js/docs.min.js', array('jquery'), '', true);
	wp_enqueue_script('plugins_js', get_template_directory_uri() . '/js/plugins.js', array('jquery'), '', true);
	wp_enqueue_script('custom', get_template_directory_uri() . '/js/custom.js', array('jquery'), '', true);
	wp_enqueue_script('image_gallery_js', get_template_directory_uri() . '/js/bootstrap-image-gallery.min.js', array('jquery'), '', true);
	wp_enqueue_script('custom_image_gallery_js', get_template_directory_uri() . '/js/custom-bootstrap-image-gallery.js', array('jquery'), '', true);

}
add_action('wp_enqueue_scripts', 'theme_js');

?>