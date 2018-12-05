<?php
/*
Template Name: Red Federal
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
	        $args = array('showposts' => 2, 'category_name' => 'destacado+nota', 'orderby' => 'date', 'order' => 'DESC');
	        $wp_query->query($args);
	        $count = $wp_query->post_count;
	        $arrayDestacados = array();
	        if (have_posts()) {  
	            while ($wp_query->have_posts()) : $wp_query->the_post(); 
	               	$arrayDestacados[$post->ID] = $post->ID;
	               	if ($paged == 1) {?>
	                <div class="col-lg-6" style="position:relative;margin-bottom:20px;">
	                	<div class="card card-nota">
	                		<div class="imagen">
	                			<?php the_post_thumbnail('post-thumbnail', ['class' => 'img-responsive responsive--full', 'title' => 'Feature image']); ?>
	                		</div>
	                		<div class="contenedor-box">
	                			<p class="tag tag-provincia">
	                				<i class="fas fa-map-marker-alt" style="font-size: 10px;padding-right: 8px;"></i>

	                				<?php $child_category = post_child_category(get_the_ID()); ?>
	    							<?php if ( $child_category ) {         
	    									echo "<a href='".get_category_link($child_category->term_id)."'>".$child_category->cat_name."</a>"; 
	    								   } ?>
	    						</p>
	    						<span style="color:#ffc107;float:right;position:relative;top:15px;"><i class="fas fa-star"></i></span>
	                			<p class="titulo-nota-destacada"><b><a href="<?php the_permalink();?>"><?php the_title();?></a></b></p>
	                			<p class="descripcion-nota-destacada"><a href="<?php the_permalink();?>"><?php echo get_post_meta($post->ID, 'bajada', true); ?></a></p>
	                			<!--<p class="tag"><?php the_tags( '', ', ', '' ); ?></p>!-->
	                		</div>
	                	</div>
	               </div>
	         <?php } ?>
	     <?php endwhile; 
	        }
	  		$temp = $wp_query;
	        $wp_query= null;
	        $wp_query = new WP_Query();
	        if (sizeof($arrayDestacados) > 0) { $showposts = 6 - $count; }
	        $args = array('showposts' => $showposts, 'post__not_in' => $arrayDestacados, 'category_name' => 'nota', 'paged' => $paged,  'orderby' => 'date', 'order' => 'DESC');
	        $wp_query->query($args);
	        if (have_posts()) {
	       		while ($wp_query->have_posts()) : $wp_query->the_post(); ?>
	    			<div class="col-lg-6" style="position:relative;margin-bottom:20px;">
	    				<div class="card card-nota">
	    				    <div class="imagen">
	    				    	 <?php the_post_thumbnail('post-thumbnail', ['class' => 'img-responsive responsive--full', 'title' => 'Feature image']); ?>
	    				    </div>
	    				    <div class="contenedor-box">
	    				     	<p class="tag tag-provincia">
	    				     	<i class="fas fa-map-marker-alt" style="font-size: 10px;padding-right: 8px;"></i>
	        				     	<?php $child_category = post_child_category(get_the_ID()); ?>
	    							<?php if ( $child_category ) {         
	    									echo "<a href='".get_category_link($child_category->term_id)."'>".$child_category->cat_name."</a>"; 
	    								  } ?>
								</p>
	    				      	<p class="titulo-nota"><b><a href="<?php the_permalink();?>"><?php the_title();?></a></b></p>
	    				      	<p class="descripcion-nota"><a href="<?php the_permalink();?>"><?php echo get_post_meta($post->ID, 'bajada', true); ?></a></p>
	    				   		<!--<p class="tag"><?php the_tags( '', ', ', '' ); ?></p>!-->
	    				   	</div>
	    				 </div>
	    			</div>
	  		<?php endwhile; ?> 
	  	<?php } ?>
			</div>
		<div class="container">
			<div class="row">	
				<div class="col-lg-12 text-center">
		        	<?php previous_posts_link('&laquo; Anterior') ?>
		        	<?php next_posts_link('Siguiente &raquo;') ?>
	        	</div>
			</div>
		</div>
		</div>
<?php get_footer(); ?>
	</section>

</body>
</html>