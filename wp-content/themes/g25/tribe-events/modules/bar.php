<?php
$filters = tribe_events_get_filters();
$views   = tribe_events_get_views();
$current_url = tribe_events_get_current_filter_url();
?>
<?php do_action( 'tribe_events_bar_before_template' ) ?>
<div id="tribe-events-bar">
	<h2 class="tribe-events-visuallyhidden"><?php printf( esc_html__( '%s Search and Views Navigation', 'the-events-calendar' ), tribe_get_event_label_plural() ); ?></h2>
	
	<form id="tribe-bar-form" class="tribe-clearfix" name="tribe-bar-form" method="post" onsubmit="redireccionar(this)" action="#" autocomplete="off"> <!-- buscador x fecha y por palabra clave !-->
		
		<!-- Mobile Filters Toggle -->
		<div id="tribe-bar-collapse-toggle" <?php if ( count( $views ) == 1 ) { ?> class="tribe-bar-collapse-toggle-full-width"<?php } ?>>
			<?php printf( esc_html__( 'Find %s', 'the-events-calendar' ), tribe_get_event_label_plural() ); ?><span class="tribe-bar-toggle-arrow"></span>
		</div>

		<!-- Views -->	
		<?php if (!empty( $filters )) { ?>		
			<div class="tribe-bar-filters" style="background-color:#fff">
				<div class="tribe-bar-filters-inner tribe-clearfix">
					<div class="row" style="margin: 0px">
						<div class="tribe-bar-date-filter col-md-3">
							<label class="label-tribe-bar-search" for="tribe-bar-search">EVENTOS ZONA</label>
							<?php $cateEventos = get_event_category(); 
								  $url = $_SERVER['REQUEST_URI'];?>
							<div>
								<select class="form-control tribe-select-form" id="categoriasEventos" style="height: 30">
									<option value="0">Seleccione Geografico</option>
								<?php foreach($cateEventos as $cat) {
										$slug = $cat['slug'];
										$pos = strpos($url, $slug);
										if ($pos !== false) { $selected = 'selected="selected"'; } else { $selected = ''; }?>
										<option <?php echo $selected ?> value="<?php echo $slug ?>"><?php echo $cat['name']; ?></option>
								<?php } ?>
								</select>
							</div>
						</div>
						<?php foreach ( $filters as $filter ) : ?>
								<div class="<?php echo esc_attr( $filter['name'] ) ?>-filter col-md-3">
									<label class="label-<?php echo esc_attr( $filter['name'] ) ?>" for="<?php echo esc_attr( $filter['name'] ) ?>"><?php echo $filter['caption'] ?></label>
									<?php echo $filter['html'] ?>
								</div>
						<?php endforeach; ?>
						<div class="tribe-bar-submit col-md-3" style="margin-left: 0px;">
							<input  class="tribe-events-button tribe-no-param"
									type="submit"
									name="submit-bar"
									aria-label="<?php printf( esc_attr__( 'Submit %s search', 'the-events-calendar' ), tribe_get_event_label_plural() ); ?>"
									value="<?php printf( esc_attr__( 'Find %s', 'the-events-calendar' ), tribe_get_event_label_plural() ); ?>" />
						</div>
					</div>
				</div>
			</div>
		<?php } ?>
	</form>
</div>
<?php do_action( 'tribe_events_bar_after_template' ); ?>

<style>
.tribe-select-form {
	background: 0;
	border: none;
	border-bottom: 1px dashed #b9b9b9;
	border-radius: 0;
	font-style: italic;
	font-weight: 400;
	line-height: 1;
	width: 100%
}
</style>
<script type="text/javascript">
function redireccionar(formulario) {
	var cod = document.getElementById("categoriasEventos").value;
	var	redire = "";
	if (cod == 0) {
		redire = "<?php echo esc_url(tribe_get_events_link()) ?>?post_type=tribe_events&eventDisplay=default";	 
	} else {
		redire = "<?php echo esc_url(tribe_get_events_link()) ?>categoria/"+cod+"?post_type=tribe_events&tribe_events_cat="+cod+"&eventDisplay=default";	 
	}
	formulario.setAttribute('action', redire)
	formulario.submit();
}
</script>
