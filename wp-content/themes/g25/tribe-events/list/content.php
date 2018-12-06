<?php
if ( ! defined( 'ABSPATH' ) ) {
	die( '-1' );
} ?>

<div id="tribe-events-content" class="tribe-events-list">
	<?php //do_action( 'tribe_events_list_before_the_content' );
		  //tribe_the_notices()
		  // Events Loop 
		  if (have_posts()) :
			//do_action( 'tribe_events_before_loop' );
			tribe_get_template_part( 'list/loop' );
			//do_action( 'tribe_events_after_loop' );
		  endif; ?>
	<div class="row">	
	    <?php previous_posts_link('&laquo; Anterior') ?>
	    <?php next_posts_link('Siguiente &raquo;') ?>
	</div>
</div><!-- #tribe-events-content -->
