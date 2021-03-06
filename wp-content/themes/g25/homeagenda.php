<?php
//Tomo los eventos con tag destacado
$events = tribe_get_events( array(
	'eventDisplay'   => 'list',
	'posts_per_page' => 2,
	'tag'        	 => 'home'
));
?>

<script type="text/javascript">
function showModal(id) {
	var nombre = "#myModal"+id;
	$(nombre).modal('show');
}
</script>

<body>
	<header class="masthead text-center" style="min-height: 100vh; position: relative;">
		<!-- aca chequear el height por el gris !-->
		<div class="container padding-footer" style="background-color: #fff;">
      	<?php get_header(); ?>
       		<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="contenedor-titulo">
						<h2 class="title-home"><a href="quienes-somos">Somos un puente entre lo privado y lo
							público </a></h2>
						<a href="quienes-somos"><i class="fas fa-angle-right"
							style="float: right; font-size: 30px; line-height: 100px; color: #F5B11A; padding-right: 15px;"></i></a>

						<div class="position-absolute-cero">
							<div class="dash" style="background-color: #FCB813"></div>
						</div>
					</div>
					<hr class="line-divider">

					<div class="box-text-btn">
						<p class="text-home">Un equipo formado por talento y honestidad</p>
						<div style="width: 100%; text-align: left;">
							<a href="quienes-somos"><button
									class="btn btn-home btn-conocenos"
									style="position: absolute; bottom: 0px;">CONOCENOS</button></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="contenedor-titulo">
						<h2 class="title-home"><a href="comunidad-g25">Comunidad G25</a></h2>
						<a href="comunidad">
						<i class="fas fa-angle-right" style="float: right; font-size: 30px; line-height: 100px; color: #00B8F1; padding-right: 15px;"></i>
						</a>

						<div class="position-absolute-cero">
							<div class="dash" style="background-color: #00B8F1"></div>
						</div>
					</div>

					<hr class="line-divider">

					<div class="box-text-btn">
						<p class="text-home">Queremos incentivar y potenciara los grandes
							talentos del país para darles un lugar de desarollo</p>
						<div style="width: 100%; text-align: left;">
							<a href="comunidad-g25"><button
									class="btn btn-home btn-acompananos" style="position:absolute; bottom:0px;">ACOMPAÑANOS</button></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="contenedor-titulo">
						<h2 class="title-home"><a href="red-federal">Red Federal</a></h2>
						<a href="comunidad-g25"><i class="fas fa-angle-right" 
							style="float: right; font-size: 30px; line-height: 100px; color: #EE4A6D; padding-right: 15px;"></i></a>
						<div class="position-absolute-cero">
							<div class="dash" style="background-color: #EE4A6D"></div>
						</div>
					</div>

					<hr class="line-divider">

					<div class="box-text-btn">
						<p class="text-home">Conocé a las personas que trabajaron junto a
							nosotros y cómo se desarrollaron</p>
						<div style="width: 100%; text-align: left;">
							<a href="red-federal"><button
									class="btn btn-home btn-descubrilos"
									style="position: absolute; bottom: 0px;">DESCUBRILOS</button></a>
						</div>
					</div>
				</div>
 		<?php if (sizeof($events) > 0) { ?>
        <div class="col-lg-3 col-md-6" style="background-color: #B46BD1;">
					<div style="min-height: 250px; position: relative;">
						<h2 class="title-home" style="width:100%;"><a href="agenda" style="color: #fff">Agenda Federal</a></h2>
						<div style="color: #fff; text-align: left">
							
           				<?php foreach ($events as $evento) { ?>
            				<div onclick="showModal(<?php echo $evento->ID ?>)" style="cursor: pointer;">
            					<div style="background-color: #fff; color: #5D5D5D; padding: 10px; margin-bottom: 10px;">
            						<?php  echo ucwords(tribe_get_start_date( $evento, false, 'l' ))." ".tribe_get_start_date( $evento, false, 'j' );
            						       if (!tribe_event_is_all_day($evento)) {
            						          echo " - ".tribe_get_start_date( $evento, false, 'H:i' ); 
            						       } ?>
            						<div style="float: right;">
            							<?php echo tribe_get_start_date( $evento, false, 'M'); ?>
									</div>
            					</div>
								<div>
									<?php echo $evento->post_title;?>
								</div>
								<div style="text-align: left; color: #fff">
									<p class="tag" style="padding: 0px!important;padding-top: 10px!important;padding-bottom: 20px!important;">
										<?php $args = wp_parse_args( $args, $defaults );
										      $categories = tribe_get_event_taxonomy( $evento->ID, $args );
										      if ($categories) { ?>
										      	<i class="fas fa-map-marker-alt" style="color: #fff"></i>
                                		     	<?php echo strip_tags($categories);
										      } ?>
                                    </p>
                                </div>
                                <div class="modal fade" id="myModal<?php echo $evento->ID ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="color: black">
								  <div class="modal-dialog" id="<?php echo $evento->ID ?>" >
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="<?php echo $evento->ID ?>Label"><?php echo $evento->post_title ?></h5>
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
								          <span aria-hidden="true">&times;</span>
								        </button>
								      </div>
								      <div class="modal-body">
								     	 <?php 
								     	 	$content = $evento->post_content; 
								     	 	$content = apply_filters('the_content', $content);
								     	 	$content = str_replace(']]>', ']]&gt;', $content);
								     	 	echo $content;
								     	 ?> 
								      </div>
								      <div class="modal-footer" style="display:block">
								      	<?php	$args = wp_parse_args( $args, $defaults );
										        $categories = tribe_get_event_taxonomy( $evento->ID, $args );
										        if ($categories) { ?>
										        	<i class="fas fa-map-marker-alt" style="color:#B46BD1;padding-right:5px;"></i> 
										     		<?php echo strip_tags($categories)." - "; 
										     	}
										        $email = tribe_get_organizer_email($evento);
										        if ( ! empty( $email ) ) { ?>
										        	<i class="fas fa-envelope" style="color:#B46BD1;padding-right:5px;"></i> 
										     		<?php echo esc_html($email)." - "; 
										     	}
										        $website = tribe_get_event_website_link($evento);
										        if ( ! empty( $website ) ){ ?>
										      	 	<i class="fas fa-globe-americas" style="color:#B46BD1;padding-right:5px;"></i> 
										     		<?php echo strip_tags($website); 
										     	} ?>   
									  </div>
								    </div>
								  </div>
								</div>
                              </div>  
					  <?php   } ?>
						</div>
					</div>
            <div style="position: absolute; bottom:15px;">
              <div style="width: 100%; text-align: left;">
                <a href="agenda">
                  <button class="btn btn-home btn-agenda" style="position: absolute; bottom: 0px; color: #fff; border: 1px solid #fff !important">VER TODOS</button> 
                </a>
              </div>
            </div>

				</div>
   		<?php } else { ?>
   				<div class="col-lg-3 col-md-6">
					<div class="contenedor-titulo">
						<h2 class="title-home"><a href="agenda">Agenda Federal</a></h2>
						<a href="agenda">
							<i class="fas fa-angle-right"style="float: right; font-size: 30px; line-height: 100px; color: #B46BD1; padding-right: 15px;"></i>
						</a>
						<div class="position-absolute-cero">
							<div class="dash" style="background-color: #B46BD1"></div>
						</div>
					</div>
					<hr class="line-divider">
					<div class="box-text-btn">
						<p class="text-home">Descubrí las jóvenes promesas que se están capacitando en nuestor ámbito</p>
						<div style="width: 100%; text-align: left;">
							<a href="agenda"><button class="btn btn-home btn-agenda" style="position: absolute; bottom: 0px;">VER TODOS</button> </a>
						</div>
					</div>
				</div>
  	  <?php } ?>
        	</div>
		</div>
		<div style="position: absolute; bottom: 0px; width: 100%;">
      		<?php get_footer(); ?>
    	</div>
	</header>
</body>
</html>
