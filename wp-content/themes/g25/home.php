<?php
/*
Template Name: Home
*/
?>
<?php

//Tomo los eventos con tag destacado
$events = tribe_get_events( array(
	'eventDisplay'   => 'list',
	'posts_per_page' => 2,
	'tag'        	 => 'destacado'
));
?>

<body>
  <header class="masthead text-center" style="height:100vh;min-height:720px;"> <!-- aca chequear el height por el gris !-->
    <div class="container" style="background-color:#fff;"> <!-- aca chequear el height por el blanco !-->
      <?php get_header(); ?>
       <div class="row" >
        <div class="col-lg-3">
          <div style="min-height:250px;position:relative">
            <h2 class="title-home">Somos un puente entre lo privado y lo público</h2>
            <div style="position:absolute;bottom:0px;">
             <div class="dash" style="background-color:#FCB813"></div>
            </div>
          </div>
          <div style="min-height:160px;position:relative;padding-top:20px;">
             <p class="text-home">Un equipo formado por talento y honestidad</p>
             <div style="width:100%;text-align:left;">
             <a href="quienes-somos"><button class="btn btn-home btn-conocenos" style="position:absolute;bottom:0px;">CONOCENOS</button></a>
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div style="min-height:250px;position:relative">
            <h2 class="title-home">Comunidad G25</h2>
            <div style="position:absolute;bottom:0px;">
             <div class="dash" style="background-color:#00B8F1"></div>
            </div>
          </div>
          <div style="min-height:160px;position:relative;padding-top:20px;">
            <p  class="text-home">Queremos incentivar y potenciara los grandes talentos del país para darles un lugar de desarollo</p>
            <div style="width:100%;text-align:left;">
             <a href="comunidad-g25"><button class="btn btn-home btn-acompananos" style="position:absolute;bottom:0px;">ACOMPAÑANOS</button></a>        
            </div>
        </div>
        </div>
        <div class="col-lg-3">
          <div style="min-height:250px;position:relative">
            <h2 class="title-home">Red Federal</h2>
            <div style="position:absolute;bottom:0px;">
             <div class="dash" style="background-color:#EE4A6D"></div>
            </div>
          </div>
          <div style="min-height:160px;position:relative;padding-top:20px;">
            <p  class="text-home">Conocé a las personas que trabajaron junto a nosotros y cómo se desarrollaron</p>
            <div style="width:100%;text-align:left;">
             <a href="red-federal"><button class="btn btn-home btn-descubrilos" style="position:absolute;bottom:0px;">DESCUBRILOS</button></a>           
            </div>
          </div>
        </div>
   <?php if (sizeof($events) > 0) { ?>
        <div class="col-lg-3">
          <div style="min-height:250px;position:relative">
            <h2 class="title-home">Agenda Federal Destacada</h2>
            <?php if (sizeof($events) > 0) { 
            		foreach ($events as $evento) {
						echo $evento->post_title; echo "<br>";
            		 }
				  } ?>
            <div style="position:absolute;bottom:0px;">
             <div class="dash" style="background-color:#B46BD1"></div>
            </div>
          </div>
          <div style="min-height:160px;position:relative;padding-top:20px;">
            <p  class="text-home">Descubrí las jóvenes promesas que se están capacitando en nuestor ámbito</p>
            <div style="width:100%;text-align:left;">
             <a href="agenda"><button class="btn btn-home btn-agenda" style="position:absolute;bottom:0px;">VER TODOS</button> </a>           
            </div>
         </div>
        </div>
   <?php } else { ?>
   		<div class="col-lg-3">
          <div style="min-height:250px;position:relative">
            <h2 class="title-home">Agenda Federal</h2>
            <div style="position:absolute;bottom:0px;">
             <div class="dash" style="background-color:#B46BD1"></div>
            </div>
          </div>
          <div style="min-height:160px;position:relative;padding-top:20px;">
            <p  class="text-home">Descubrí las jóvenes promesas que se están capacitando en nuestor ámbito</p>
            <div style="width:100%;text-align:left;">
             <a href="agenda"><button class="btn btn-home btn-agenda" style="position:absolute;bottom:0px;">VER TODOS</button> </a>           
            </div>
         </div>
        </div>
   <?php } ?>
        </div>
    </div>
    <?php get_footer(); ?>
  </header>
</body>
</html>    