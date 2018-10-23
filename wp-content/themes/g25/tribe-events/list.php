<?php
/**
 * List View Template
 * The wrapper template for a list of events. This includes the Past Events and Upcoming Events views
 * as well as those same views filtered to a specific category.
 *
 * Override this template in your own theme by creating a file at [your-theme]/tribe-events/list.php
 *
 * @package TribeEventsCalendar
 * @version 4.6.19
 *
 */
if ( ! defined( 'ABSPATH' ) ) {
	die( '-1' );
}

do_action( 'tribe_events_before_template' );
?>

<header class="masthead-noticias text-white text-center">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-left mx-auto">
            <h1 class="mb-5">Agenda Federal</h1>
            <h4><?php tribe_get_template_part( 'list/title-bar' ); ?></h4>
            <?php if (isset($_POST['tribe-bar-search'])) {
            		if ($_POST['tribe-bar-search'] != "") { ?>
            	 		<h4>Palabra de Busqueda - <?php echo $_POST['tribe-bar-search'] ?></h4>
            <?php 	}
            	  }?>
          </div>
        </div>
      </div>
</header>

<!-- Tribe Bar -->
<?php tribe_get_template_part( 'modules/bar' ); ?>

<!-- Main Events Content -->
<?php tribe_get_template_part( 'list/content' ); ?>

	<div class="tribe-clear"></div>

<?php
do_action( 'tribe_events_after_template' );
?>