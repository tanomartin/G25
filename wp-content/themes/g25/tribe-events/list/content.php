<?php
if ( ! defined( 'ABSPATH' ) ) {
	die( '-1' );
} ?>

<div id="tribe-events-content" class="tribe-events-list">
	<?php do_action( 'tribe_events_list_before_the_content' );?>

	<!-- Notices -->
	<?php tribe_the_notices() ?>

	<!-- Events Loop -->
	<?php if ( have_posts() ) : ?>
		<?php do_action( 'tribe_events_before_loop' ); ?>
		<?php tribe_get_template_part( 'list/loop' ) ?>
		<?php do_action( 'tribe_events_after_loop' ); ?>
	<?php endif; ?>
	
	<div class="row">	
	    <?php previous_posts_link('&laquo; Anterior') ?>
	    <?php next_posts_link('Siguiente &raquo;') ?>
	</div>
</div><!-- #tribe-events-content -->
