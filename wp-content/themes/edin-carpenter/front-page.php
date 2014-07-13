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
          <!-- Hero Shot
          ================================================== -->
          <div class="row">
            <div class="col-xs-12 hero-shot"> 
              <div id="carousel-work" class="carousel slide">
                  <!-- Indicators -->
                  <ol class="carousel-indicators">
                    <li data-target="#carousel-work" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-work" data-slide-to="1"></li>
                    <li data-target="#carousel-work" data-slide-to="2"></li>
                  </ol>

                  <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                           <!--  <div class="item active">
                              <img src="img/crazy-eyes.png">
                            </div> -->
                          <?php 

                            $args = array(
                              'post_type' => 'slide',
                              'posts_per_page' => 6
                            );

                            $the_query = new WP_Query($args);

                          ?>

                          <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                            <div class="item">
                              <img src="<?php the_field('image'); ?>">
                            </div>
                          <?php endwhile; endif; ?>
                        </div>
                  <!-- Controls -->
                  <a class="left carousel-control" href="#carousel-work" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                  </a>
                  <a class="right carousel-control" href="#carousel-work" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                  </a>
                </div> <!-- END CAROUSSELL  -->
            </div>
          </div> <!-- End Hero Shot -->
          <?php
            get_template_part('content', 'testimonial')
          ?>
        </div>  <!-- End container -->
      </div>
      <!-- Flyout Canvas Menu -->
<?php get_footer(); ?>