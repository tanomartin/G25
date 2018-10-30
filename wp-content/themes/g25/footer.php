<footer class="footer" style="bottom:0px;width:100%;">
	<div class="container">
    	<div class="row">
       		<div class="col-lg-6 text-center text-lg-left my-auto">
          		<?php wp_nav_menu(array('theme_location' => 'footer', 'depth'   => 1, 'menu_id' => 'footer', 'item_spacing'   => 'discard')); ?>
            	<p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2018. All Rights Reserved.</p>
          	</div>
          	<div class="col-lg-6  text-center text-lg-right my-auto">
            	<ul class="list-inline mb-0">
              		<li class="list-inline-item mr-3">
                		<a href="#"><i class="fab fa-facebook fa-2x fa-fw"></i></a>
              		</li>
              		<li class="list-inline-item mr-3">
                		<a href="#"><i class="fab fa-twitter-square fa-2x fa-fw"></i></a>
              		</li>
              		<li class="list-inline-item">
                		<a href="#"><i class="fab fa-instagram fa-2x fa-fw"></i></a>
              		</li>
           	 	</ul>
          	</div>
        </div>
	</div>
    <img src="<?php echo THEME_URL ?>/img/footer-color.jpg" style="width:100%;height:auto;padding-top:20px;">
</footer>

<style>
	#footer li {list-style:none}
	#footer { padding: 0; margin-bottom: 5}
</style>