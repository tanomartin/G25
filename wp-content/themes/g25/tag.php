<?php
/*
Template Name: Tag Page
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
            <h3><?php echo $wp_query->found_posts; ?> <?php _e( 'Resultado encontrado para Etiqueta', 'locale' ); ?>: "<?php single_tag_title(); ?>" </h3>
            <div class="dash" style="background-color:#EE4A6D"></div>
            <h4 style="padding-top:40px;">ENTERATE LO QUE PASA EN TODO EL PAÍS</h4>
          </div>
        </div>
      </div>
   </div>
</header>
    
<section style="background-color:#f0f0f0;padding-top:80px">
	<div class="container" style="padding-bottom:100px;">
		<div class="row">	
		<?php if (have_posts()) : while (have_posts()) : the_post();?> 
			<div class="col-lg-6" style="position:relative;margin-bottom:20px;">
	    				<div class="card card-nota">
	    				    <div class="imagen">
	    				    	 <?php if ( has_post_thumbnail() ) {
	                						the_post_thumbnail('medium');
	           						  } else { ?>
	           						  		<img width="246" height="191" title="Feature image" src="<?php bloginfo('url'); ?>/wp-content/themes/g25/screenshot.png" class="img-responsive responsive--full wp-post-image" >
	            				 <?php } ?>
	    				    </div>
	    				    <div class="contenedor-box">
	                				<?php $post_categories = get_the_category($post->ID); 
	    								  if ( $post_categories ) {
	    								  	foreach($post_categories as $cate) { ?>
	    								  		<p class="tag tag-provincia">
	    								  			<i class="fas fa-map-marker-alt" style="font-size: 10px;padding-right: 8px;"></i>
	    											<a href='<?php echo get_category_link($cate->term_id) ?>'><?php echo $cate->cat_name ?></a> 
	    										</p>
	    							<?php	} 
	    								  } ?>
	    						
	    				      	<p class="titulo-nota"><b><a href="<?php the_permalink();?>"><?php the_title();?></a></b></p>
	    				      	<p class="descripcion-nota"><a href="<?php the_permalink();?>"><?php echo get_post_meta($post->ID, 'bajada', true); ?></a></p>
	    				   	</div>
	    				 </div>
	    			</div>
		 <?php endwhile; endif;?> 
		</div>
		<div class="row">	
			<div class="col-lg-12 text-center">
		        <span style="padding: 10px"><?php previous_posts_link('&laquo; Anterior') ?></span>
		        <span style="padding: 10px"><?php next_posts_link('Siguiente &raquo;') ?></span>
	        </div>
		</div>
	</div>
	<?php get_footer(); ?>
</section>
 </body>
</html>