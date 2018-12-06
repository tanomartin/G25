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

//do_action( 'tribe_events_before_template' ); ?>

<header class="masthead-agenda text-white text center">
    <div class="container">
      <?php get_header(); ?>
      <div class="contenedor-header agenda">
        <div class="row">
          <div class="col-lg-12 text-left" style="position:absolute;bottom:0px;padding:40px;">
            <h1 class="mb-5">Agenda Federal</h1>
            <div class="dash" style="background-color:#B46BD1"></div>
            <h4><?php tribe_get_template_part( 'list/title-bar' );?></h4>
          <?php if (isset($_POST['tribe-bar-search'])) {
                if ($_POST['tribe-bar-search'] != "") { ?>
                  <p>Palabra de Busqueda - <?php echo $_POST['tribe-bar-search'] ?></p>
            <?php   }
                }
                if (isset($_POST['tribe-bar-date'])) {
                if ($_POST['tribe-bar-date'] != "") { ?>
                  <p>Fecha de Busqueda - <?php echo $_POST['tribe-bar-date'] ?></p>
            <?php   }
                } ?>
          </div>
        </div>
      </div>
   </div>
</header>

<section style="background:#f0f0f0;padding-top:0px;position:relative;">
  <div style="width: 75%;  margin: 0 auto; padding-top:40px;padding-bottom:0px;">
  	<?php tribe_get_template_part( 'modules/bar' ); 
  		  tribe_get_template_part( 'list/content' ); ?>
  	<div class="tribe-clear"></div>
  </div>
<?php get_footer(); 
	//do_action( 'tribe_events_after_template'); ?>
</section>
