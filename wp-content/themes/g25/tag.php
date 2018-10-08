<?php
/*
Template Name: Tag Page
*/
?>
<?php get_header(); ?>
  <body>
    <!-- Masthead -->
    <header class="masthead-noticias text-white text-center">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-left mx-auto">
            <h1 class="mb-5">Red Federal</h1>
            <h4>Enterate lo que pasasen todo el país</h4>
            <h4><?php echo $wp_query->found_posts; ?> <?php _e( 'Resultado encontrado para Etiqueta', 'locale' ); ?>: "<?php single_tag_title(); ?>" </h4>
          </div>

        </div>
      </div>
    </header>
<?php 
$tag_id = get_queried_object()->term_id;
$temp = $wp_query;
$wp_query = null;
$wp_query = new WP_Query();
$wp_query->query('showposts=2'.'&paged='.$paged.'&tag_id='.$tag_id);

?>
<section style="background-color:#f0f0f0;padding-top:80px;padding-bottom:80px;">
	<div class="container">
		<div class="row">	
		<?php if (have_posts()) : while (have_posts()) : the_post();?> 
			<div class="col-lg-6" style="position:relative;margin-bottom:20px;">
				<div class="card card-nota">
				    <div class="imagen">
				    	 <?php the_post_thumbnail('post-thumbnail', ['class' => 'img-responsive responsive--full', 'title' => 'Feature image']); ?>
				    </div>
				    <div style="width:50%;height:auto;float:right">
				     	<p class="tag"><?php the_category('','nota',''); ?></p>
				      	<p class="titulo-nota"><b><a href="<?php the_permalink();?>"><?php the_title();?></a></b></p>
				      	<p class="descripcion-nota"><a href="<?php the_permalink();?>"><?php echo get_post_meta($post->ID, 'bajada', true); ?></a></p>
				   		<p class="tag"><?php the_tags( '', ', ', '' ); ?></p>
				   	</div>
				 </div>
			</div>
		 <?php endwhile; endif;?> 
		</div>
		<div class="row">	
			<?php previous_posts_link('&laquo; Anterior') ?>
			<?php next_posts_link('Siguiente &raquo;') ?>
		</div>
	</div>
</section>

<?php get_footer(); ?>
  </body>

</html>