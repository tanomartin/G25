<?php
   /*
   Template Name: Contacto
   */
   ?>
<header class="masthead-contacto text-white text center">
   <div class="container">
      <?php get_header(); ?>
      <div class="contenedor-header contacto">
         <div class="row">
            <div class="col-lg-12 text-left" style="position:absolute;bottom:0px;padding:40px;">
               <h1 class="mb-5">Contacto</h1>
               <div class="dash" style="background-color:#ef7024"></div>
               <h4 style="padding-top:40px;">Dejanos tu mensaje</h4>
            </div>
         </div>
      </div>
   </div>
</header>


<section style="background: #F0F0F0;padding-top:50px;position:relative;">

<!--
<div style="width:150px;height:20px;background-color:red;position:absolute;left:0px;z-index:-10;top:0px">
</div>
!-->




      <div class="container" style="padding-bottom:100px;">
      	<div class="row">
      		<div class="col-lg-12">
      			<div class="card" style="padding:30px;">
	               <h3>FORMULARIO</h3>
	               <div class="dash" style="background-color:#ef7024;margin-top:20px;"></div>


					<form>
						<div class="row">
		             		 <div class="col-lg-6">
		               			<input type="text" placeholder="Nombre y Apellido">
		               			<input type="mail" placeholder="Mail">
		               			<input type="numbero" placeholder="Telefono">
		               		</div>
		              		 <div class="col-lg-6">
								<textarea>Dejanos tu mensaje</textarea>               			
							</div>

							<div class="col-lg-12 text-center">
								<button type="submit" class="btn btn-default btn-contacto">Enviar</button>
							</div>
		 				</div>
					</form>

      			</div>
      		</div>
      	</div>



      </div>

      <?php get_footer(); ?>
</section>
