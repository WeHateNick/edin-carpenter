<?php 

/* 
  TEMPLATE NAME: Testimonials
*/

get_header(); ?>
  <div class="container-fluid main-content">
    <div class="row row-offcanvas row-offcanvas-right">
      <?php
        if ( is_front_page() ) :
          get_sidebar( 'front-page' );
        elseif ( is_404() ) :
          get_sidebar( 'front-page' );
        else :
          get_sidebar();
        endif;
      ?>
      <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
        <div class="col-sm-9">
          <div class="container-fluid">
            <?php get_template_part('content', 'hero'); ?>
            <?php get_template_part('content', 'testimonial'); ?>
          </div> 
        </div>
      <?php endwhile; else: ?>
        <p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
      <?php endif; ?>
      <!-- Flyout Canvas Menu -->
<?php get_footer(); ?>