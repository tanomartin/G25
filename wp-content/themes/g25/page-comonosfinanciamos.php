<?php
/*
Template Name: Como nos financiamos
*/
?>

<header class="masthead text-center">

	<div class="container">
			<?php get_header(); ?>
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