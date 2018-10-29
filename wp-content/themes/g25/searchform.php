<form class="form-inline my-2 my-lg-0" method="get" id="searchform" action="<?php echo esc_url( home_url( '/' ) ); ?>" autocomplete="off">
	<input class="form-control mr-sm-2" type="text" class="field" name="s" id="s" placeholder="Buscar" style="text-align: right;">
	<input style="display: none" type="submit" class="submit" name="submit" id="searchsubmit" value="<?php esc_attr_e( 'Search', 'g25' ); ?>" />
</form>