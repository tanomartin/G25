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
            <h1 class="mb-5">Novedades</h1>
            <h3><?php echo $wp_query->found_posts; ?> <?php _e( 'Resultados para Tag Geografico', 'locale' ); ?>: "<?php single_cat_title(); ?>" </h3>
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
		<?php  if (have_posts()) : while (have_posts()) : the_post(); ?> 
			<div class="col-lg-6" style="position:relative;margin-bottom:20px;">
	    				<div class="card card-nota">
	    				   	<div class="imagen">
        	    				<a href="<?php the_permalink();?>">
        	    				<?php if ( has_post_thumbnail() ) {
        	    				    	 $thumbID = get_post_thumbnail_id( $post->ID );
        	    				    	 $url = wp_get_attachment_url( $thumbID ); ?>
    	                			      <div style="height:200px;width:220px;background-image:url(<?php echo $url; ?>);background-repeat:no-repeat;background-position:center center;background-size:cover;" ></div>
        	           			<?php } else { ?>
                                          <div style="height:200px;width:220px;background-image:url(<?php bloginfo('url'); ?>/wp-content/themes/g25/screenshot.png);background-repeat:no-repeat;background-position:center center;background-size:cover;" ></div>			  																	  
        	            		<?php } ?>
        	            		 </a>
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
	    						
	    				      	<p class="titulo-nota"><b>
        	    				     <a href="<?php the_permalink();?>">
        	    				      <?php $puntos = "";
        	    				      		$limite = 55;
    	                					$title = get_the_title($post->ID);
    	                					if (strlen($title) > $limite ) { $puntos = "(...)"; }
    	                					echo substr($title , 0, $limite ).$puntos; ?>
        	    				     </a>
        	    				</b></p>
	    				      	<p class="descripcion-nota">
        	    				     <a href="<?php the_permalink();?>">
        	    				      <?php $puntos = "";
        	    				      	    $limite = 70;
    	                					$bajada = get_post_meta($post->ID, 'bajada', true);
    	                					if (strlen($bajada) > $limite ) { $puntos = "(...)"; }
    	                					echo substr( $bajada, 0, $limite ).$puntos; ?>
        	    				     </a>
        	    				</p>
	    				   	</div>
	    				 </div>
	    			</div>
		 <?php endwhile; endif; ?> 
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