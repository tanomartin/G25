<script type="text/javascript">
function control(formulario) {
	var palabra = formulario.s.value;
	if (palabra.length < 4) {
		alert("La palabra a buscar debe contener por lo menos 4 caracteres");
		return false;
	}
	return true;
}
</script>

<form class="form-inline my-2 my-lg-0" method="get" id="searchform" onsubmit="return control(this)" action="<?php echo esc_url( home_url( '/' ) ); ?>" autocomplete="off">
	<input class="form-control mr-sm-2" type="text" class="field" name="s" id="s" placeholder="Buscar" style="text-align: right;">
	<button style="background-color: transparent; border: none" type="submit" name="submit" id="searchsubmit" value="<?php esc_attr_e( 'Search', 'g25' ); ?>" ><i class="fas fa-search"></i></button>
</form>