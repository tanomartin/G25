<?php
if ( ! defined( 'ABSPATH' ) ) {
	die( '-1' );
}
?>
<!-- Event Title -->
<h3 class="tribe-events-list-event-title">
	<?php the_title() ?>
</h3>

<!-- Event Meta -->
<div class="tribe-events-event-meta">
	<div class="author">
		<!-- Schedule & Recurrence Details -->
		<div class="tribe-event-schedule-details">
			<?php echo tribe_get_start_date()." - ".tribe_get_end_date();?>
		</div>
	</div>
</div><!-- .tribe-events-event-meta -->

<!-- Event Content -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal<?php echo get_the_ID() ?>">VER MAS</button>

<!-- Modal -->
<div class="modal fade" id="myModal<?php echo get_the_ID() ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" id="<?php echo get_the_ID() ?>" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="<?php echo get_the_ID() ?>Label"><?php the_title() ?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
     	 <?php the_content(); ?> 
      </div>
      <div class="modal-footer">
      	<?php	$args = wp_parse_args( $args, $defaults );
		        $categories = tribe_get_event_taxonomy( $post_id, $args );
		        echo strip_tags($categories)." - "; 
		        
		        $email = tribe_get_organizer_email();
		        $website = tribe_get_event_website_link();
		        if ( ! empty( $email ) ) {
		        	echo esc_html($email)." - "; 
		        }
		        if ( ! empty( $website ) ) {
		        	 echo strip_tags($website); 
		        }
		?>   
	  </div>
    </div>
  </div>
</div>