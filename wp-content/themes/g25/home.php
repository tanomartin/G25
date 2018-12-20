<?php
/*
Template Name: Home
*/
?>
<body>
	<header class="masthead text-center" style="min-height: 100vh; position: relative;">
		<!-- aca chequear el height por el gris !-->
		<div class="container padding-footer" style="background-color: #fff;">
      	<?php get_header(); ?>
       		<div class="row" style="margin-top: 40px;">
				<div class="col-lg-4 col-md-4">
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
				<div class="col-lg-4 col-md-4">
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
				<div class="col-lg-4 col-md-4">
					<div class="contenedor-titulo">
						<h2 class="title-home"><a href="novedades">Novedades</a></h2>
						<a href="novedades"><i class="fas fa-angle-right" 
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
							<a href="novedades"><button
									class="btn btn-home btn-descubrilos"
									style="position: absolute; bottom: 0px;">DESCUBRILOS</button></a>
						</div>
					</div>
				</div>
        	</div>
		</div>
		<div style="position: absolute; bottom: 0px; width: 100%;">
      		<?php get_footer(); ?>
    	</div>
	</header>
</body>
</html>
