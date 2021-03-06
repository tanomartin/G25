<?php
/*
Template Name: Novedades
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
                <div class="dash" style="background-color:#EE4A6D"></div>
                <h4 style="padding-top:40px;">ENTERATE LO QUE PASA EN TODO EL PAÍS</h4>
              </div>
            </div>
          </div>
       </div>
    </header>

	<!-- seccion noticias -->
	<section style="background-color:#f0f0f0;padding-top:40px;position:relative;">
		<div class="container" style="padding-bottom:100px;">
			<div class="row">	
    	<?php   $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
    			$args = array('showposts' => 2, 'meta_query'  => array(
                	array(
                   	 	'key' => 'destacado',
                    	'value' => true
                	)
            	));
    			$wp_query->query($args);
    	        $count = $wp_query->post_count;
    	        $arrayDestacados = array();  
    	        while ($wp_query->have_posts()) : $wp_query->the_post(); 
    	            $arrayDestacados[$post->ID] = $post->ID;
    	            if ($paged == 1) {?>
    	                <div class="col-lg-6" style="position:relative;margin-bottom:20px;">
    	                	<div class="card card-nota">
    	                		<div class="imagen">
        	    				    	<a href="<?php the_permalink();?>">
        	    				    	<?php if ( has_post_thumbnail() ) {
        	    				    	          $thumbID = get_post_thumbnail_id( $post->ID );
        	    				    	          $url = wp_get_attachment_url( $thumbID ); ?>
    	                			              <div class="width-img-card" style="background-image:url(<?php echo $url; ?>);background-repeat:no-repeat;background-position:center center;background-size:cover;" ></div>
        	           					<?php } else { ?>
                                        		  <div class="width-img-card" style="background-image:url(<?php bloginfo('url'); ?>/wp-content/themes/g25/screenshot.png);background-repeat:no-repeat;background-position:center center;background-size:cover;" ></div>			  																	  
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
    	    						<span style="color:#ffc107;float:right;position:relative;top:15px;"><i class="fas fa-star"></i></span>
    	                			<p class="titulo-nota-destacada"><b>
    	                				<a href="<?php the_permalink();?>">
    	                					<?php $puntos = "";
    	                					      $limite = 55;
    	                					      $title = get_the_title($post->ID);
    	                					      if (strlen($title) > $limite ) { $puntos = "(...)"; }
    	                					      echo substr($title , 0, $limite ).$puntos; ?>
    	                				</a>
    	                			</b></p>
    	                			<p class="descripcion-nota-destacada">
    	                				<a href="<?php the_permalink();?>">
    	                					<?php $puntos = "";
    	                					      $limite = 70;
    	                					      $bajada = get_post_meta($post->ID, 'bajada', true);
    	                					      if (strlen($bajada) > $limite ) { $puntos = "(...)"; }
    	                					      echo substr( $bajada, 0, 80 ).$puntos; ?>
    	                				</a>
    	                			</p>
    	                		</div>
    	                	</div>
    	               </div>
    	      <?php } ?>
    	  <?php endwhile; ?>
	  		</div>
	  <?php if ($paged == 1 && $count != 0) { ?>
	  			<hr style="margin-top:0px;">
	  <?php } ?>
	  		<div class="row">	
        	  <?php $args = array('post__not_in' => $arrayDestacados, 'paged' => $paged);
        	        $wp_query->query($args);
        	       	while ($wp_query->have_posts()) : $wp_query->the_post(); ?>
        	    			<div class="col-lg-6" style="position:relative;margin-bottom:20px;">
        	    				<div class="card card-nota">
        	    				    <div class="imagen">
        	    				    	<a href="<?php the_permalink();?>">
        	    				    	<?php if ( has_post_thumbnail() ) {
        	    				    	          $thumbID = get_post_thumbnail_id( $post->ID );
        	    				    	          $url = wp_get_attachment_url( $thumbID ); ?>
    	                			              <div class="width-img-card" style="background-image:url(<?php echo $url; ?>);background-repeat:no-repeat;background-position:center center;background-size:cover;" ></div>
        	           					<?php } else { ?>
                                        		  <div class="width-img-card" style="background-image:url(<?php bloginfo('url'); ?>/wp-content/themes/g25/screenshot.png);background-repeat:no-repeat;background-position:center center;background-size:cover;" ></div>			  																	  
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
        	  	<?php endwhile; ?> 
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