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
<?php  
if( have_posts() ){
	the_post();
	$category_post = get_the_category();
	$parent_id = get_the_ID(); ?>
	<section style="background-color:#f0f0f0;padding-top:80px;position:relative">
		<div class="container" style="padding-bottom:40px;">
  			<div class="row">
    			<div class="col-md-8 offset-md-2 text-center header-nota estilo-nota">
     			<?php $post_categories = get_the_category($post->ID); 
        	    	      if ( $post_categories ) {
        	    		     foreach($post_categories as $cate) { ?>
        	    				<p class="tag tag-provincia" style="float:left;margin-top:0px;">
        	    					<i class="fas fa-map-marker-alt" style="font-size: 10px;padding-right: 5px;"></i>
        	    					<a href='<?php echo get_category_link($cate->term_id) ?>' style="float:none"><?php echo $cate->cat_name ?></a> 
        	    				</p>
        	    	<?php	} 
        	    		  } ?>	
		      		<span style="float:right"><?php echo get_the_date('M d, Y'); ?></span>
		      		<hr style="margin-top:40px;">
		      		
		      		<h1 class="titulo-nota-interior" class="text-left"><?php the_title();?></h1>
		     
		      		<p class="bajada-nota-interior"><?php echo get_post_meta($post->ID, 'bajada', true); ?></p>
		      		<div style="width:30px;height:5px;background-color:#ee4a6d;margin-bottom:40px"></div>
		       		<span class="content-nota"><?php the_content(); ?> </span>
    			</div>
  			</div>
	  <?php $facebook = get_post_meta($post->ID, 'facebook', true) ;
			$twitter = get_post_meta($post->ID, 'twitter', true) ;
			$whatsapp =  get_post_meta($post->ID, 'whatsapp', true) ;
			$shortURL = get_permalink();
			$shortTitle = get_the_title(); ?>
 	  <?php if ($facebook || $twitter || $whatsapp) { ?>  			
	  			<div class="row">
	    			<div class="col-md-8 offset-md-2 text-center" style="background-color:#fff;">
	     	 			<hr style="padding-top:10px">
	      				<div class="row">
	      			  <?php if ($facebook) {
	               				$facebookURL = 'https://www.facebook.com/sharer.php?u='.$shortURL.'&t=Compartir urls en Face';?>
		        				<div class="col-lg-4" onclick="window.open('<?php echo $facebookURL ?>','','width=600,height=400,left=50,top=50,toolbar=yes')" style='cursor:pointer;'>
		          					<div style="background-color:#629ae6;padding:10px;margin-bottom:10px;margin-top:10px;">
		            					<p style="margin-bottom:0px;color:#fff"><i class="fab fa-facebook-f fa-2x fa-fw" style="color:#fff;font-size:14px;"></i> Compartir en Facebook</p>
		          					</div>
		        				</div>
	     			  <?php }
	      					if ($twitter) {
	         					$twitterURL = 'https://twitter.com/intent/tweet?text='.$shortTitle.'&amp;url='.$shortURL;?>
	        					<div class="col-lg-4" onclick="window.open('<?php echo $twitterURL ?>','','width=600,height=400,left=50,top=50,toolbar=yes')" style='cursor:pointer;' >
	          						<div style="background-color:#55acee;padding:10px;margin-bottom:10px;margin-top:10px;">
	            						<p style="margin-bottom:0px;color:#fff"><i class="fab fa-twitter fa-2x fa-fw" style="color:#fff;font-size:14px;"></i> Compartir en Twitter</p>
	          						</div>
	        					</div>
	       			  <?php }
	       				    if ($whatsapp) { 
	            				$whatsappURL = 'https://api.whatsapp.com/send?text='.$shortURL;?>
	        					<div class="col-lg-4" onclick="window.open('<?php echo $whatsappURL ?>','','width=600,height=400,left=50,top=50,toolbar=yes')" style='cursor:pointer;' >
	          						<div style="background-color:#25d366;padding:10px;margin-bottom:10px;margin-top:10px;">
	            						<p style="margin-bottom:0px;color:#fff"><i class="fab fa-whatsapp fa-2x fa-fw" style="color:#fff;font-size:14px;"></i> Compartir en Whatsapp</p>
	          						</div>
	        					</div>
	        		  <?php } ?>
	      				</div>
    				</div>
  				</div>
 	 	<?php } ?>

	<?php $posttags = get_the_tags();
			if ($posttags) { ?>
  			<div class="row">
    			<div class="col-md-8 offset-md-2 text-center" style="background-color:#fff;">
      				<hr style="padding-top:10px;margin-top:30px;">
      				<div class="row">
	
				<?php  foreach($posttags as $tag) { ?>
			   			<div class="col-lg-3">
	           				<p class="tag-nota"><a href="<?php echo get_tag_link($tag->term_id); ?>"><?php echo ($tag->name) ?></a></p>
	           			</div>
			     <?php } ?>
      				</div>
    			</div>
  			</div>
	<?php	} ?>
	  		<div class="row">
		    	<div class="col-md-8 offset-md-2 text-center" style="background-color:#fff;">
		      		<hr style="padding-top:20px;margin-top:20px;">
		      		<p style="padding-bottom:20px;"><a href="<?php echo SITE_URL."/red-federal";?>">Volver a las Noticias  </a>  </p>  
		    	</div>
		  	</div>
		</div>
<?php get_footer(); ?>
	</section>
<?php } ?>
</body>
</html>