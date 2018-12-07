<?php
if ( ! defined( 'ABSPATH' ) ) {
	die( '-1' );
}
?>
<section style="background-color: #fff;padding:20px;">
<div class="container">
	<div class="row">
		<div class="col-lg-2" >
			<!-- Event Meta -->
			<div class="tribe-events-event-meta">
				<div class="author">
					<!-- Schedule & Recurrence Details -->
					<div class="tribe-event-schedule-details">
						<span class="mes-agenda"><?php echo tribe_get_start_date( null, false, 'M' ) ?></span>
						<br>
						<span class="dia-agenda"><?php echo tribe_get_start_date( null, false, 'j' ) ?></span>
						<br>
					</div>
				</div>
			</div><!-- .tribe-events-event-meta -->
		</div>

		<div class="col-lg-10 border-col">
		<!-- Event Title -->
		<div>
			<h3 class="tribe-events-list-event-title" style="display:block">
				<?php the_title() ?>
			</h3>

			<p class="tag" style="display:inline-block">
		<?php	$args = wp_parse_args( $args, $defaults ); 
				$categories = tribe_get_event_taxonomy( $post_id, $args );
				if ($categories) { ?>
					<i class="fas fa-user" style="color:#B46BD1"></i>
		<?php		echo strip_tags($categories,'<a>');  
				}	?>
			</p>
			<div class="float-agenda">
				<button type="button" class="btn btn-primary boton-agenda"  data-toggle="modal" data-target="#myModal<?php echo get_the_ID() ?>" style="margin-top:0px;">VER MAS</button>
			</div>
		</div>
			
		</div>
	</div>
</div><!--FIN CONTAINER!-->

</section>

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
      <div class="modal-footer" style="display:block">
      	<?php	$args = wp_parse_args( $args, $defaults );
		        $categories = tribe_get_event_taxonomy( $post_id, $args );
		        if ($categories) { ?>
		        	<i class="fas fa-map-marker-alt" style="color:#B46BD1;padding-right:5px;"></i> 
		     		<?php echo strip_tags($categories)." - "; 
		     	}
		        $email = tribe_get_organizer_email();
		        if ( ! empty( $email ) ) { ?>
		        	<i class="fas fa-envelope" style="color:#B46BD1;padding-right:5px;"></i> 
		     		<?php echo esc_html($email)." - "; 
		     	}
		        $website = tribe_get_event_website_link();
		        if ( ! empty( $website ) ){ ?>
		      	 	<i class="fas fa-globe-americas" style="color:#B46BD1;padding-right:5px;"></i> 
		     		<?php echo strip_tags($website); 
		     	} ?>   
	  </div>
    </div>
  </div>
</div>