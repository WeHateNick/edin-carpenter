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
      <div class="col-sm-9">
        <div class="container-fluid">
          <?php // get_template_part('content', 'hero'); ?>

            <!-- Main Content
            ================================================== -->
          <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
            <div class="row">
              <div class="col-sm-10 col-md-offset-1">

                <article class="excerpt">
                  <h2><?php the_title(); ?></h2>
                  <div class="preview-img">
                    <img src="<?php the_field('main-image'); ?>">
                  </div>
                  <p><?php the_field('excerpt'); ?></p>
                  <a href="<?php the_permalink(); ?>" class="btn">Read More &rarr;</a>
                  <hr>
                </article>

              </div>
            </div>        <!-- End main content -->
      <?php endwhile; else: ?>
        <p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
      <?php endif; ?>
      </div> 
        </div>
      <!-- Flyout Canvas Menu -->
<?php get_footer(); ?>