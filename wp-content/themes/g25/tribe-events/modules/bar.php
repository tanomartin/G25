<?php
$filters = tribe_events_get_filters();
$views   = tribe_events_get_views();
$current_url = tribe_events_get_current_filter_url();
?>
<?php do_action( 'tribe_events_bar_before_template' ) ?>
<div id="tribe-events-bar">
	<h2 class="tribe-events-visuallyhidden"><?php printf( esc_html__( '%s Search and Views Navigation', 'the-events-calendar' ), tribe_get_event_label_plural() ); ?></h2>
	
	<form id="tribe-bar-form" class="tribe-clearfix" name="tribe-bar-form" method="post" onsubmit="redireccionar(this)" action="#" autocomplete="off"> <!-- buscador x fecha y por palabra clave !-->
		
		<div style="margin-bottom: 15px; background-color: #f5f5f5">
			<div style="padding: 15px">
				<label class="label-tribe-bar-search" for="tribe-bar-search">EVENTOS POR ZONA</label>
				<?php $cateEventos = get_event_category(); 
					  $url = $_SERVER['REQUEST_URI'];?>
				<div class="row">
					<div class="col-md-7">
						<select class="form-control" id="categoriasEventos">
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
			</div>
		</div>
		<!-- Mobile Filters Toggle -->

		<div id="tribe-bar-collapse-toggle" <?php if ( count( $views ) == 1 ) { ?> class="tribe-bar-collapse-toggle-full-width"<?php } ?>>
			<?php printf( esc_html__( 'Find %s', 'the-events-calendar' ), tribe_get_event_label_plural() ); ?><span class="tribe-bar-toggle-arrow"></span>
		</div>

		<!-- Views -->
		<?php if ( count( $views ) > 1 ) { ?>
			<div id="tribe-bar-views">
				<div class="tribe-bar-views-inner tribe-clearfix">
					<h3 class="tribe-events-visuallyhidden"><?php printf( esc_html__( '%s Views Navigation', 'the-events-calendar' ), tribe_get_event_label_singular() ); ?></h3>
					<label><?php esc_html_e( 'View As', 'the-events-calendar' ); ?></label>
					<select
						class="tribe-bar-views-select tribe-no-param"
						name="tribe-bar-view"
						aria-label="<?php printf( esc_attr__( 'View %s As', 'the-events-calendar' ), tribe_get_event_label_plural() ); ?>"
					>
						<?php foreach ( $views as $view ) : ?>
							<option
								<?php echo tribe_is_view( $view['displaying'] ) ? 'selected' : 'tribe-inactive' ?>
								value="<?php echo esc_attr( $view['url'] ); ?>"
								data-view="<?php echo esc_attr( $view['displaying'] ); ?>"
							>
								<?php echo $view['anchor']; ?>
							</option>
						<?php endforeach; ?>
					</select>
				</div>
				<!-- .tribe-bar-views-inner -->
			</div><!-- .tribe-bar-views -->
		<?php } // if ( count( $views ) > 1 ) ?>

		<?php if ( ! empty( $filters ) ) { ?>
			<div class="tribe-bar-filters">
				<div class="tribe-bar-filters-inner tribe-clearfix">
					<h3 class="tribe-events-visuallyhidden"><?php printf( esc_html__( '%s Search', 'the-events-calendar' ), tribe_get_event_label_plural() ); ?></h3>
					<?php foreach ( $filters as $filter ) : ?>
						<div class="<?php echo esc_attr( $filter['name'] ) ?>-filter">
							<label class="label-<?php echo esc_attr( $filter['name'] ) ?>" for="<?php echo esc_attr( $filter['name'] ) ?>"><?php echo $filter['caption'] ?></label>
							<?php echo $filter['html'] ?>
						</div>
					<?php endforeach; ?>
					<div class="tribe-bar-submit">
						<input
							class="tribe-events-button tribe-no-param"
							type="submit"
							name="submit-bar"
							aria-label="<?php printf( esc_attr__( 'Submit %s search', 'the-events-calendar' ), tribe_get_event_label_plural() ); ?>"
							value="<?php printf( esc_attr__( 'Find %s', 'the-events-calendar' ), tribe_get_event_label_plural() ); ?>"
						/>
					</div>
					<!-- .tribe-bar-submit -->
				</div>
				<!-- .tribe-bar-filters-inner -->
			</div><!-- .tribe-bar-filters -->
		<?php } // if ( !empty( $filters ) ) ?>

	</form>
	<!-- #tribe-bar-form -->

</div><!-- #tribe-events-bar -->
<?php do_action( 'tribe_events_bar_after_template' ); ?>

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
