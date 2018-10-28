<?php
/*
Template Name: Comunidad
*/
?>
<?php get_header(); ?>

<header class="masthead-noticias text-white text-center">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-left mx-auto">
            <h1 class="mb-5">COMUNIDAD</h1>
            <h4>Miembros de la Comunidad</h4>
          </div>
        </div>
      </div>
</header>

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