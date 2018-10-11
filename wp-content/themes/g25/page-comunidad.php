<?php
/*
Template Name: Comunidad
*/
?>

<?php query_posts('post_type=comunidad&posts_per_page=5' ); // Seleccionamos el post type "portfolio" y cogemos los 5 últimos ?>
<?php if ( have_posts() ) : // Si existen resultados ?>
  <?php while (have_posts()) : the_post(); // Mientra haya resultados, repite lo siguiente: ?>
                <?php // En este ejemplo tendríamos el  ?>
    <div class="image-caption featured">
      <a href="<?php the_permalink(); ?>">
        <?php the_post_thumbnail( 'medium' ); // La imagen destacada ?>
        <div class="caption">
          <h2 class="description"><?php the_title(); // El título ?></h2>
        </div>
      </a>
          <?php the_excerpt(); // Un breve resumen de la entrada ?>
    </div>
  <?php endwhile; ?>
<?php endif; ?>