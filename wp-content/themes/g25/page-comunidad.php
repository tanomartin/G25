<?php
/*
Template Name: Comunidad
*/
?>

<body>
<header class="masthead-comunidad text-white text center">
    <div class="container">
      <?php get_header(); ?>
      <div class="contenedor-header comunidad">
        <div class="row">
          <div class="col-lg-12 text-left" style="position:absolute;bottom:0px;padding:40px;">
            <h1 class="mb-5">Comunidad G25</h1>
            <div class="dash" style="background-color:#00B9F2"></div>
            <h4 style="padding-top:40px;">FUNDADORES - CONSEJO DE ADMINISTRACION - CONSEJO CONSULTIVO - DIRECTORIO EJECUTIVO</h4>
          </div>
        </div>
      </div>
   </div>
</header>

<!--QUIENES SOMOS.php!-->
<section style="background: #F0F0F0;padding-top:0px;position:relative;">
<?php 
$args = array('showposts' => -1, 'post_type' => 'comunidad');
$wp_query->query($args); ?>

<div class="container" style="padding-bottom:100px;">
  <div class="row">

<?php if ( have_posts() ) : // Si existen resultados ?>
    <?php while (have_posts()) : the_post(); // Mientra haya resultados, repite lo siguiente: 
            $facebook = get_post_meta($post->ID, 'facebook', true) ;
            $twitter = get_post_meta($post->ID, 'twitter', true) ;
            $instagram = get_post_meta($post->ID, 'instagram', true) ;
            $linkedin = get_post_meta($post->ID, 'linkedin', true) ;
            $web = get_post_meta($post->ID, 'web', true) ; ?>
  <div class="col-lg-3 col-md-4 col-xs-12" style="margin-top:20px;">

    <div class="image-caption featured card">

      <?php if (($facebook != "") || ($twitter != "") || ($instagram != "") || ($linkedin != "") || ($web != "")){ ?>
              <div style="position:absolute;right:5;top:170px;font-size:35px;">
                <a data-toggle="collapse" href="#social<?php echo $post->ID ?>" role="button" aria-expanded="false" aria-controls="add">
                 <div class="icoCollapse max">
                   <div></div>
                   <div></div>
                  </div>
                </a>
              </div>
      <?php } ?>

      <!--<?php the_post_thumbnail('medium', ['class' => 'img-responsive responsive--full img-comunidad', 'title' => 'Feature image']); ?>!-->



<?php
$thumbnail = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'medium');
list($url, $width, $height, $is_intermediate) = $thumbnail;
?>

<div class="large" style="height:200px;background-image:url(<?php echo $url; ?>);background-repeat:no-repeat;background-position:center center;background-size:cover;"></div>


        <div class="caption">
          <h2 class="description"><?php the_title(); // El título ?></h2>
          <p class="cargo"><?php echo get_post_meta($post->ID, 'cargo', true) ; ?></p> 
          <div class="rrss-comunidad collapse" id="social<?php echo $post->ID ?>" >
            <?php if (($facebook != "") || ($twitter != "") || ($instagram != "") || ($linkedin != "")) { ?>
                    <hr style="padding-top:0px;margin-top:0px;">
            <?php } ?>
            <?php if ($facebook != "") { ?>
                  	<a href="<?php echo $facebook['url']?>" target="_blank"><i class="fab fa-facebook-f fa-2x fa-fw"></i></a>	
            <?php } ?>

            <?php if ($twitter != "") { ?>
                    <a href="<?php echo $twitter['url']?>" target="_blank"><i class="fab fa-twitter fa-2x fa-fw"></i></a> 
            <?php } ?>

            <?php if ($instagram != "") { ?>
                    <a href="<?php echo $instagram['url']?>" target="_blank"><i class="fab fa-instagram fa-2x fa-fw"></i></a> 
            <?php } ?>

            <?php if ($linkedin != "") { ?>
                    <a href="<?php echo $linkedin['url']?>" target="_blank"><i class="fab fa-linkedin-in fa-2x fa-fw"></i></a> 
            <?php } ?>

            <?php if ($web != "") { ?>
                    <hr style="padding-top:0px;margin-top:15px;">
                    <a href="<?php echo $web['url']?>" target="_blank"><p style="text-decoration:underline">Sitio Web</p></a> 
            <?php } ?>
        </div>
      </div>

    </div>  
  </div>
  <?php endwhile; ?>
<?php endif; ?>

  </div>
</div>
<?php get_footer(); ?>
</section>

<script type="text/javascript">
$(".icoCollapse").on("click", function(){
  if($(this).hasClass("max")){
    $(this).removeClass("max").addClass("min");
  }else{
    $(this).removeClass("min").addClass("max");
  }
})
</script>

</body>
</html>