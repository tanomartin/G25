<?php get_header(); ?>
<div class="section-3">
	<div class="page-content container ejes" style="padding-top:60px;padding-bottom:120px;">
		<div class="row">
	<?php	$page = get_page_by_path('home');
			if ($page) {
				$parent_id = $page->ID;
			}else{
				$parent_id = null;
			}
			$args = array(
				    'post_type' => 'page',
				    'post_parent' => $parent_id,
				    'orderby'  => 'menu_order',
				    'order' => 'ASC' );
			$the_query = new WP_Query( $args );
			while ( $the_query->have_posts() ) {
				$the_query->the_post();?>
				<a href="<?php echo get_permalink(); ?>">
					<div class="col-md-4 col-sm-6 track">
						<div class="fondo">
							<h2><?php the_title() ?></h2>
						</div>
					</div>
				</a>
	  <?php };
		    wp_reset_postdata(); ?>
		</div>
	</div>
</div>
<?php get_footer(); ?>