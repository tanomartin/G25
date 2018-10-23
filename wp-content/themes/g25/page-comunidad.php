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
        </div>
    </div>
  <?php endwhile; ?>
<?php endif; ?>

<?php get_footer(); ?>