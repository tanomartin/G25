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

       			<div class="col-lg-12 text-center" style="padding-top:80px;">
       				<i class="far fa-frown-open" style="font-size:35px;padding-bottom:25px;color:#7a7a7a"></i>
       				<p class="title-home" style="text-align:center;margin:auto;width:100%;padding-top:0px;padding-bottom:20px;">La página no fue encontrada</p>
					<div class="dash" style="background-color: #7a7a7a;margin:auto;margin-bottom:50px;"></div>
					<p><a href="<?php echo SITE_URL;?>">Volver a la home</a></p>
       			</div>

        	</div>
		</div>
		<div style="position: absolute; bottom: 0px; width: 100%;">
      		<?php get_footer(); ?>
    	</div>
	</header>
</body>
</html>
