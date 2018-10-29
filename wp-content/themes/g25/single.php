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
            <h4 style="padding-top:40px;">ENTERATE LO QUE PASA EN TODO EL PAÃ�S</h4>
          </div>
        </div>
      </div>
   </div>
</header>


<!-- seccion noticias -->
<?php  if( have_posts() ){
	the_post();
	$category_post = get_the_category();
	$parent_id = get_the_ID(); ?>
<section style="background-color:#f0f0f0;padding-top:80px;padding-bottom:80px;">
<div class="container">
  <div class="row">
    <div class="col-md-8 offset-md-2 text-center" style="background-color:#fff;padding:80px;padding-bottom:20px;">
     <?php $child_category = post_child_category(get_the_ID()); ?>
     <?php if ( $child_category ) {         
    		  echo "<a href='".get_category_link($child_category->term_id)."'>".$child_category->cat_name."</a>"; 
    	   } ?>
      <?php echo get_the_date('M d, Y'); ?>
      <hr>
      <h1 style="color:#ee4a6d;" class="text-left"><?php the_title();?></h1>
     
      <p class="text-left" style="font-size:18px;"><?php echo get_post_meta($post->ID, 'bajada', true); ?></p>
      <div style="width:30px;height:5px;background-color:#ee4a6d;margin-bottom:60px"></div>
       <?php the_content(); ?> 
    </div>

  </div>
<?php 
		$facebook = get_post_meta($post->ID, 'facebook', true) ;
		$twitter = get_post_meta($post->ID, 'twitter', true) ;
		$whatsapp =  get_post_meta($post->ID, 'whatsapp', true) ;
		
		$shortURL = get_permalink();
		$shortTitle = get_the_title();
		
		
	?>
  <div class="row">
    <div class="col-md-8 offset-md-2 text-center" style="background-color:#fff;">
      <hr>
      <div class="row">
      <?php if ($facebook) {
               $facebookURL = 'https://www.facebook.com/sharer.php?u='.$shortURL.'&t=Compartir urls en Face';?>
        <div class="col-lg-4" onclick="window.open('<?php echo $facebookURL ?>','','width=600,height=400,left=50,top=50,toolbar=yes')" style='cursor:pointer;'>
          <div style="background-color:#629ae6;padding:10px;">
            <p style="margin-bottom:0px;">Compartir en Facebook</p>
          </div>
        </div>
     <?php } ?>
      <?php if ($twitter) {
          $twitterURL = 'https://twitter.com/intent/tweet?text='.$shortTitle.'&amp;url='.$shortURL;?>
        <div class="col-lg-4" onclick="window.open('<?php echo $twitterURL ?>','','width=600,height=400,left=50,top=50,toolbar=yes')" style='cursor:pointer;' >
          <div style="background-color:#55acee;padding:10px;">
            <p style="margin-bottom:0px;">Compartir en Twitter</p>
          </div>
        </div>
       <?php } ?>
        <?php if ($whatsapp) { 
            $whatsappURL = 'https://api.whatsapp.com/send?text='.$shortURL;?>
        <div class="col-lg-4" onclick="window.open('<?php echo $whatsappURL ?>','','width=600,height=400,left=50,top=50,toolbar=yes')" style='cursor:pointer;' >
          <div style="background-color:#25d366;padding:10px;">
            <p style="margin-bottom:0px;">Compartir en Whatsapp</p>
            
          </div>
        </div>
        <?php } ?>
      </div>
    </div>
  </div>


  <div class="row">
    <div class="col-md-8 offset-md-2 text-center" style="background-color:#fff;">
      <hr>
      <div class="row">
<?php $posttags = get_the_tags();
		if ($posttags) {
		  foreach($posttags as $tag) { ?>
		   <div class="col-lg-3">
           		<p><a href="<?php echo get_tag_link($tag->term_id); ?>"><?php echo ($tag->name) ?></a></p>
           </div>
<?php	  }
		}  ?>
      </div>
    </div>
  </div>

<?php } ?>


  <div class="row">
    <div class="col-md-8 offset-md-2 text-center" style="background-color:#fff;">
      <hr>

    <a href="<?php echo SITE_URL;?>"><p> volver a las noticias </p>  </a>   

    </div>
  </div>



</div>

</section>

<?php get_footer(); ?>
  </body>

</html>
