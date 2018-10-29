<?php
/*
Template Name: Category Page
*/
?>
<body style="position:relative;">
    <!-- Masthead -->

<header class="masthead-redfederal text-white text center">
    <div class="container">
	<?php get_header(); ?>
      <div class="contenedor-header redfederal">
        <div class="row">
          <div class="col-lg-12 text-left" style="position:absolute;bottom:0px;padding:40px;">
            <h1 class="mb-5">Red Federal</h1>
            <h3><?php echo $wp_query->found_posts; ?> <?php _e( 'Resultado encontrado para Tag Geografico', 'locale' ); ?>: "<?php single_cat_title(); ?>" </h3>
            <div class="dash" style="background-color:#EE4A6D"></div>
            <h4 style="padding-top:40px;">ENTERATE LO QUE PASA EN TODO EL PAÃ�S</h4>
          </div>
        </div>
      </div>
   </div>
</header>
    
<section style="background-color:#f0f0f0;padding-top:80px;padding-bottom:80px;">
	<div class="container">
		<div class="row">	
		<?php  if (have_posts()) : while (have_posts()) : the_post(); ?> 
			<div class="col-lg-6" style="position:relative;margin-bottom:20px;">
				<div class="card card-nota">
				    <div class="imagen">
				    	 <?php the_post_thumbnail('post-thumbnail', ['class' => 'img-responsive responsive--full', 'title' => 'Feature image']); ?>
				    </div>
				    <div style="width:50%;height:auto;float:right">
				     	<p class="tag">
                			<?php $child_category = post_child_category(get_the_ID()); ?>
    						<?php if ( $child_category ) {         
    								echo "<a href='".get_category_link($child_category->term_id)."'>".$child_category->cat_name."</a>"; 
    							  } ?>
    					</p>
				      	<p class="titulo-nota"><b><a href="<?php the_permalink();?>"><?php the_title();?></a></b></p>
				      	<p class="descripcion-nota"><a href="<?php the_permalink();?>"><?php echo get_post_meta($post->ID, 'bajada', true); ?></a></p>
				   		<p class="tag"><?php the_tags( '', ', ', '' ); ?></p>
				   	</div>
				 </div>
			</div>
		 <?php endwhile; endif; ?> 
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