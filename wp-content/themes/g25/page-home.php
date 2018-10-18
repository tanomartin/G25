<?php
/*
Template Name: Home
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


<?php get_header(); ?>
<body>
    <!-- Masthead -->

  <header class="masthead text-center">
    <div class="container">
       <div class="row" style="background-color:#fff">
        <div class="col-lg-3">
          <div style="min-height:200px;position:relative">
            <h2 class="title-home">Somos un puente entre lo privado y lo público</h2>
            <div style="position:absolute;bottom:0px;">
             <div class="dash" style="background-color:#FCB813"></div>
            </div>
          </div>
          <div style="min-height:160px;position:relative;padding-top:20px;">
             <p class="text-home">Un equipo formado por talento y honestidad</p>
             <div style="width:100%;text-align:left;">
             <a href="#"><button class="btn btn-home btn-conocenos" style="position:absolute;bottom:0px;">CONOCENOS</button></a>
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div style="min-height:200px;position:relative">
            <h2 class="title-home">Comunidad G25</h2>
            <div style="position:absolute;bottom:0px;">
             <div class="dash" style="background-color:#00B8F1"></div>
            </div>
          </div>
          <div style="min-height:160px;position:relative;padding-top:20px;">
            <p  class="text-home">Queremos incentivar y potenciara los grandes talentos del país para darles un lugar de desarollo</p>
            <div style="width:100%;text-align:left;">
             <a href="#"><button class="btn btn-home btn-acompananos" style="position:absolute;bottom:0px;">ACOMPAÑANOS</button></a>        
            </div>
        </div>
        </div>
        <div class="col-lg-3">
          <div style="min-height:200px;position:relative">
            <h2 class="title-home">Red Federal</h2>
            <div style="position:absolute;bottom:0px;">
             <div class="dash" style="background-color:#EE4A6D"></div>
            </div>
          </div>
          <div style="min-height:160px;position:relative;padding-top:20px;">
            <p  class="text-home">Conocé a las personas que trabajaron junto a nosotros y cómo se desarrollaron</p>
            <div style="width:100%;text-align:left;">
             <a href="#"><button class="btn btn-home btn-descubrilos" style="position:absolute;bottom:0px;">DESCUBRILOS</button></a>           
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div style="min-height:200px;position:relative">
            <h2 class="title-home">Agenda Federal</h2>
            <div style="position:absolute;bottom:0px;">
             <div class="dash" style="background-color:#B46BD1"></div>
            </div>
          </div>
          <div style="min-height:160px;position:relative;padding-top:20px;">
            <p  class="text-home">Descubrí las jóvenes promesas que se están capacitando en nuestor ámbito</p>
            <div style="width:100%;text-align:left;">
             <a href="#"><button class="btn btn-home btn-agenda" style="position:absolute;bottom:0px;">VER TODOS</button> </a>           
            </div>
         </div>

        </div>
      </div>
    </div>
  </header>






<?php get_footer(); ?>
</body>
</html>    