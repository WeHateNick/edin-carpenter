<?php get_header(); ?>
  <div class="container-fluid main-content">
    <div class="row row-offcanvas row-offcanvas-right">
      <?php get_template_part('content', 'sidebar'); ?>
      <div class="col-sm-9">
        <div class="container-fluid">
          <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
      
            <?php get_template_part('content', 'hero'); ?>
            <!-- Main Content
            ================================================== -->
            <div class="row">
              <div class="col-sm-10 col-md-offset-1">
                <?php the_field('content'); ?>
              </div>
            </div>        <!-- End main content -->
          <?php endwhile; else: ?>
            <p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
          <?php endif; ?>
        </div> 
      </div>
      <!-- Flyout Canvas Menu -->
<?php get_footer(); ?>