<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="">
<meta name="description" content="<?php theme_get_the_description();?>" />
<title><?php theme_get_the_title();?></title>
<link href="<?php echo THEME_URL ?>/resourse/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="<?php echo THEME_URL ?>/resourse/fontawesome-free/css/all.min.css" rel="stylesheet">
<link href="<?php echo THEME_URL ?>/resourse/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<link href="<?php echo THEME_URL ?>/css/landing-page.css" rel="stylesheet">
<link href="<?php echo THEME_URL ?>/css/style.css" rel="stylesheet">
<script src="<?php echo THEME_URL ?>/resourse/jquery/jquery.min.js"></script>
<script src="<?php echo THEME_URL ?>/resourse/bootstrap/js/bootstrap.bundle.min.js"></script>
<?php wp_head(); ?>
</head>






<nav class="navbar navbar-expand-md navbar-light" role="navigation">
	<a class="navbar-brand" href="<?php echo SITE_URL;?>"> 
		<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
			xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
			viewBox="0 0 176.1 79.6"
			style="enable-background: new 0 0 176.1 79.6; width: 100px;"
			xml:space="preserve">
			<g>
				<path style="fill:#F5B11A;"
						d="M4.1,40.6v-0.2c0-18.6,14.5-33.9,34.3-33.9c9.9,0,16.5,2.2,22.4,6.4c1.4,1,3,3,3,5.8
			       		c0,3.9-3.2,7.1-7.1,7.1c-2.1,0-3.4-0.7-4.4-1.5c-3.9-2.8-8.1-4.5-14.3-4.5c-10.5,0-18.8,9.3-18.8,20.4v0.2c0,12,8.2,20.8,19.8,20.8
			        	c5.2,0,9.9-1.3,13.6-3.9v-9.4h-9.7c-3.5,0-6.3-2.7-6.3-6.2c0-3.5,2.8-6.3,6.3-6.3h16.5c4,0,7.2,3.2,7.2,7.2v15.9
			        	c0,4.2-1.6,7.1-5.1,9.2c-5.3,3.3-13.1,6.5-22.9,6.5C18.2,74.3,4.1,60,4.1,40.6z" />
			    <path style="fill:#00B8F1;"
						d="M120.9,67c0,3.7-2.9,6.6-6.7,6.6H78.7c-4.9,0-8.2-2.9-8.2-7.2c0-2.9,1.3-5.4,3.9-7.5L93,43.6
			        	c7.7-6.3,11.2-10,11.2-15.4c0-5-3.2-8.1-8.4-8.1c-3.8,0-6.6,1.5-10.4,5.6c-0.6,0.7-2.3,2.2-5.2,2.2c-3.9,0-7-3.1-7-7
			        	c0-1.7,0.7-3.4,1.8-4.8C81,9.3,87.5,6.4,96.7,6.4c13.9,0,23,8.1,23,20.6v0.2c0,11-5.6,16.5-17.4,25.7l-9.7,7.5h21.6
			        	C117.9,60.3,120.9,63.3,120.9,67z" />
			    <path style="fill:#EE4A6D;"
						d="M150.1,30.5c-3.6,0-6,0.5-8.6,1.1l0.7-11.3h22.1c3.5,0,6.4-2.8,6.4-6.3s-2.9-6.4-6.4-6.4h-28.4
			        	c-3.5,0-6.2,2.7-6.4,6.2l-1.3,22.2c-0.2,2.4,0.7,4.4,2.6,5.8c2.9,2.1,4.5,2.9,6.5,2.9c2,0,4.4-1.7,9.9-1.7c6.8,0,11.6,3.3,11.6,8.9
			        	v0.2c0,5.8-4.5,9.1-10.6,9.1c-4.6,0-8.4-1.3-12.4-4.2c-1.1-0.8-2.2-1.3-3.9-1.3c-3.7,0-6.8,3.2-6.8,6.9c0,2.4,1.2,4.3,2.9,5.5
			        	c5.2,3.7,11.5,6.2,20.6,6.2c14.4,0,24.4-8.8,24.4-22.6v-0.2C173,36.7,163,30.5,150.1,30.5z" />
			</g>
		</svg>
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-controls="bs-example-navbar-collapse-1" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<?php	wp_nav_menu( array(
				'theme_location'    => 'primary',
				'depth'             => 2,
				'container'         => 'div',
				'container_class'   => 'collapse navbar-collapse',
				'container_id'      => 'bs-example-navbar-collapse-1',
				'menu_class'        => 'nav navbar-nav',
				'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
				'walker'            => new WP_Bootstrap_Navwalker(),
			) );
			?>
</nav>
