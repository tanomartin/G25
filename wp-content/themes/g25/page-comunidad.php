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
            <h4 style="padding-top:40px;">FUNDADORES - CONSEJO DE ADMINISTRACIÓN - CONSEJO CONSULTIVO - DIRECTORIO EJECUTIVO</h4>
          </div>
        </div>
      </div>
   </div>
</header>

<!--QUIENES SOMOS.php!-->

<?php query_posts('post_type=comunidad' ); // Seleccionamos el post type "portfolio" y cogemos los 5 últimos ?>
<?php if ( have_posts() ) : // Si existen resultados ?>
  <?php while (have_posts()) : the_post(); // Mientra haya resultados, repite lo siguiente: ?>
    <div class="image-caption featured">
        <?php the_post_thumbnail( 'medium' ); // La imagen destacada ?>
        <div class="caption">
          <h2 class="description"><?php the_title(); // El título ?></h2>
          <p><?php echo get_post_meta($post->ID, 'cargo', true) ; ?></p> 
    <?php $facebook = get_post_meta($post->ID, 'facebook', true) ;
          $twitter = get_post_meta($post->ID, 'twitter', true) ;
          $instagram = get_post_meta($post->ID, 'instagram', true) ;
          $linkedin = get_post_meta($post->ID, 'linkedin', true) ;
          $web = get_post_meta($post->ID, 'web', true) ; ?>
    <?php if ($facebook != "") { ?>
          	<a href="<?php echo $facebook['url']?>" target="_blank"><i class="fab fa-facebook fa-2x fa-fw"></i></a>	
    <?php } ?>
          
        </div>
    </div>
  <?php endwhile; ?>
<?php endif; ?>

<?php get_footer(); ?>

</body>
</html>