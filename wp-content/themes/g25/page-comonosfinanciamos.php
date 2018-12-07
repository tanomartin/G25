<?php
/*
Template Name: Como nos financiamos
*/
?>
<section style="background: #fff;position:relative;height:100vh">
	<header>
		<div class="container">
			<?php get_header(); ?>
			<div class="row">
				<div class="col-lg-12 text-center" >
					<h2 class="title-home" style="width:100%;text-align:center;font-size:22px;padding-bottom:20px;">COMOS NOS FINANCIAMOS</h2>
				</div>
			</div>
		</div>
	</header>

	<div class="container" style="padding-bottom:250px;"> 
		<div class="row">
			<div class="col-lg-8 offset-lg-2 col-xs-12 offset-md-0">
				<span class="content-nota"><?php 
						$content = wpautop( $post->post_content );
						echo $content;
					?>
				</span>
			</div>
		</div>
	</div>



<?php get_footer(); ?>

</section>



