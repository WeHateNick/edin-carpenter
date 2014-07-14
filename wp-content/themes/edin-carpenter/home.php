<?php get_header(); ?>
  <div class="container-fluid main-content">
    <div class="row row-offcanvas row-offcanvas-right">
      <?php //wp_page_menu( array( 'show_home' => 'Blog', 'sort_column' => 'menu_order' ) ); ?>
      <?php get_template_part('content', 'sidebar'); ?>
      <div class="col-sm-9">

            <!-- Main Content
            ================================================== -->
          <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
            <?php get_template_part('content', 'post'); ?>
          <?php endwhile; else: ?>
            <p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
          <?php endif; ?>
        </div> 
      </div>
<?php get_footer(); ?>