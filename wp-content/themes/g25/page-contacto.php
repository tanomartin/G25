<?php
/*
 * Template Name: Contacto
 */
?>
<header class="masthead-contacto text-white text center">
	<div class="container">
      <?php get_header(); ?>
      <div class="contenedor-header contacto">
			<div class="row">
				<div class="col-lg-12 text-left"
					style="position: absolute; bottom: 0px; padding: 40px;">
					<h1 class="mb-5">Contacto</h1>
					<div class="dash" style="background-color: #ef7024"></div>
					<h4 style="padding-top: 40px;">Dejanos tu mensaje</h4>
				</div>
			</div>
		</div>
	</div>
</header>

<section style="background: #F0F0F0; padding-top: 50px; position: relative;">
	<div class="container" style="padding-bottom: 100px;">
		<div class="row">
			<div class="col-lg-12">
				<div class="card" style="padding: 30px;">
					<h3>FORMULARIO</h3>
					<div class="dash" style="background-color: #ef7024; margin-top: 20px;"></div>
					<form role="form" id="formulario" name="formulario" action="contactoenvio.php" method="POST">
						<div class="row">
							<div class="col-lg-6">
								<input id="nombre" type="text" placeholder="Nombre y Apellido *" required="required"> 
								<input id="email" type="email" placeholder="Mail *" required="required"> 
								<input id="numero" type="number" placeholder="Telefono *" required="required">
							</div>
							<div class="col-lg-6">
								<textarea id="mensaje">Dejanos tu mensaje *</textarea>
							</div>
							<div class="col-lg-12 text-center">
								<button type="submit" class="btn btn-default btn-contacto">Enviar</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div id="respuesta" style="display: none;"></div>
	</div>
    <?php get_footer(); ?>
</section>

<script>
$(document).ready(function(){
    $("#formulario").submit(function(  ){
    	var nombre = $("input#nombre").val();
        var numero = $("input#numero").val();
        var email = $("input#email").val();
        var mensaje = $("textarea#mensaje").val();
		$.ajax({
			type: 'POST',
			url: '../contactoenvio',
			data: {
				nombre: nombre,
				numero: numero,
                email: email,
                mensaje: mensaje
            },
			success: function(data){
				$("#respuesta").slideDown();
				$("#respuesta").html(data);
                $('#respuesta2').modal('show');
                document.getElementById('Formulario').reset();
			}
		});
		return false;
	});
});
</script>
