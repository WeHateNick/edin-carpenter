          <!-- Hero Shot
          ================================================== -->
          <div class="row">
            <div class="col-xs-12 hero-shot"> 
              <div id="carousel-work" class="carousel slide" data-ride="carousel">
                <?php 
                  $args = array(
                    'post_type' => 'slide',
                    'posts_per_page' => 6
                  );

                  $the_query = new WP_Query($args);

                ?>
                  <!-- Indicators -->
                  <ol class="carousel-indicators">
                    <?php if ( have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                      <li data-target="#carousel-work" data-slide-to="<?php echo $the_query->current_post; ?>" <?php if($the_query->current_post == 0 ):?>class="active"<?php endif; ?>></li>
                    <?php endwhile; endif; ?>
                  </ol>
                  <?php rewind_posts(); ?>
                  <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                          <?php if ( have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                            <div class="item <?php if($the_query->current_post == 0 ):?>active<?php endif; ?>">
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