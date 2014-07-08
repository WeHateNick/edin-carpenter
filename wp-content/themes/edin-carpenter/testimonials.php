<?php get_header(); ?>
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
            <!-- Hero Shot
            ================================================== -->
            <div class="row">
              <div class="col-xs-12 hero-shot"> 
                <img src="<?php the_field('main_image'); ?>">
              </div>
            </div>
            <!-- End Hero Shot -->
            <div class="row">
              <div class="col-xs-12">
                <div class="page-title">
                  <h2><?php the_title(); ?></h2>
                  <hr>
                </div>
              </div>
            </div>
            <!-- Main Content
            ================================================== -->
            <div class="row">
              <div class="col-sm-10 col-md-offset-1">
                
                <?php 

                  $args = array(
                    'post_type' => 'testimonials'
                  );

                  $the_query = new WP_Query($args);

                ?>

                <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>

                <figure class="testimonial">
                  <blockquote>
                  <?php the_field('testimonial'); ?>
                  </blockquote>
                  <figcaption>
                  <?php the_field('author'); ?>
                  </figcaption>
                </figure>
                  <?php endwhile; else: ?>
                    <p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
                  <?php endif; ?>
              </div>
            </div>        <!-- End main content -->
          </div> 
        </div>
      <?php endwhile; else: ?>
        <p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
      <?php endif; ?>
      <!-- Flyout Canvas Menu -->
<?php get_footer(); ?>