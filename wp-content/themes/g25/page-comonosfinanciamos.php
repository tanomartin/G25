<?php
/*
Template Name: Como nos financiamos
*/
?>
<?php get_header(); ?>
<header class="masthead text-center">
	<div class="container">
		<div class="row" style="background-color:#fff">
			<h2 class="title-home">COMOS NOS FINANCIAMOS</h2>
			<p><?php 
					$content = wpautop( $post->post_content );
					echo $content;
				?>
			</p>
		</div>
	</div>
</header>
<?php get_footer(); ?>