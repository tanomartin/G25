<footer class="footer" style="bottom:0px;width:100%;">
	<div class="container">
    	<div class="row">
       		<div class="col-lg-4 text-center text-lg-left my-auto">
          		<?php wp_nav_menu(array('theme_location' => 'footer', 'depth'   => 1, 'menu_id' => 'footer', 'item_spacing'   => 'discard')); ?>
            	<p class="text-muted small mb-4 mb-lg-0">&copy; G25. Todos los derechos reservados</p>
          	</div>
          	<div class="col-lg-4 text-center my-auto">
            	<ul class="list-inline mb-0">
              		<li class="list-inline-item mr-3">
                		<a href="https://www.facebook.com/G25Argentina/?ref=br_rs" target="_blank"><i class="fab fa-facebook-f fa-2x fa-fw" style="color:#F5B11A"></i></a>
              		</li>
              		<li class="list-inline-item mr-3">
                		<a href="https://twitter.com/g25argentina?lang=es"  target="_blank"><i class="fab fa-twitter fa-2x fa-fw" style="color:#F5B11A"></i></a>
              		</li>
                  
              		<li class="list-inline-item">
                		<a href="https://www.instagram.com/G25Argentina/"  target="_blank"><i class="fab fa-instagram fa-2x fa-fw" style="color:#F5B11A"></i></a>
              		</li>
                  
           	 	</ul>
          	</div>

            <div class="col-lg-4 text-center text-lg-right my-auto odoestudio">
              <span style="color:#929292">Desarrollado por <a href="http://www.odoestudio.com.ar" target="_blank" style="color:#de5964"></span>ODO.<span style="color:#59595b">Estudio</span></a>
            </div>

        </div>
	</div>
    <img src="<?php echo THEME_URL ?>/img/footer-color.jpg" style="width:100%;height:auto;padding-top:20px;">
</footer>

<style>
	#footer li {list-style:none}
	#footer { padding: 0; margin-bottom: 5}
</style>