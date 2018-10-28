<?php
/**
 * Events Navigation Bar Module Template
 * Renders our events navigation bar used across our views
 *
 * $filters and $views variables are loaded in and coming from
 * the show funcion in: lib/Bar.php
 *
 * Override this template in your own theme by creating a file at:
 *
 *     [your-theme]/tribe-events/modules/bar.php
 *
 * @package  TribeEventsCalendar
 * @version 4.6.19
 */
?>

<?php

$filters = tribe_events_get_filters();
$views   = tribe_events_get_views();

$current_url = tribe_events_get_current_filter_url();
?>


<?php do_action( 'tribe_events_bar_before_template' ) ?>
<div id="tribe-events-bar">
	<h2 class="tribe-events-visuallyhidden"><?php printf( esc_html__( '%s Search and Views Navigation', 'the-events-calendar' ), tribe_get_event_label_plural() ); ?></h2>
	
	<div style="margin-bottom: 15px; background-color: #f5f5f5"> <!-- buscador por zona !-->
		<div style="padding: 15px">
			<label class="label-tribe-bar-search" for="tribe-bar-search">EVENTOS POR ZONA</label>
			<?php $cateEventos = get_event_category(); 
				  $url = $_SERVER['REQUEST_URI'];?>
			<div class="row">
				<div class="col-md-7">
					<select class="form-control" id="categoriasEventos">
						<option value="#">Seleccione Geografico</option>
					<?php foreach($cateEventos as $cat) {
							$slug = $cat['slug'];
							$pos = strpos($url, $slug);
							if ($pos !== false) { $selected = 'selected="selected"'; } else { $selected = ''; }?>
							<option <?php echo $selected ?> value="<?php echo $cat['link'] ?>"><?php echo $cat['name']; ?></option>
					<?php } ?>
					</select>
				</div>
				<div class="col-md-2">
				</div>
				<div class="col-md-3">
					<button style="background-color: #666; color: white" type="button" class="btn btn-block" onclick="ShowSelected()">BUSCAR EVENTO</button> 
				</div>
			</div>
		</div>
	</div>
	
	<form id="tribe-bar-form" class="tribe-clearfix" name="tribe-bar-form" method="post" action="<?php echo esc_attr( $current_url ); ?>" autocomplete="off"> <!-- buscador x fecha y por palabra clave !-->

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
function ShowSelected() {
	/* Para obtener el valor */
	var cod = document.getElementById("categoriasEventos").value;
	location.href=cod;
}
</script>
