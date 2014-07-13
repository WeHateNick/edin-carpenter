            <!-- The Bootstrap Image Gallery lightbox, should be a child element of the document body -->
            <div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
                <!-- The container for the modal slides -->
                <div class="slides"></div>
                <!-- Controls for the borderless lightbox -->
                <h3 class="title"></h3>
                <p class="description"></p>
                <a class="prev">‹</a>
                <a class="next">›</a>
                <a class="close">×</a>
                <a class="play-pause"></a>
                <ol class="indicator"></ol>
                <!-- The modal dialog, which will be used to wrap the lightbox content -->
                <div class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" aria-hidden="true">&times;</button>
                                <h4 class="modal-title"></h4>
                            </div>
                            <div class="modal-body next"></div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default pull-left prev">
                                    <i class="glyphicon glyphicon-chevron-left"></i>
                                    Previous
                                </button>
                                <button type="button" class="btn btn-primary next">
                                    Next
                                    <i class="glyphicon glyphicon-chevron-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Image Links 
            ========================================-->
            <div class="gallery-preview" id="links">
              <?php 
                $args = array(
                          'post_type' => 'gallery',
                          'posts_per_page' => 64
                        );

                        $the_query = new WP_Query($args);
                $the_query = new WP_Query($args);
              ?>
              <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                <div class="col-md-4 col-sm-6 col-xs-12">
                  <div class="gallery-preview-img" style="background-image: url(<?php the_field('image'); ?>)">
                    <a href="<?php the_field('image'); ?>" class="btn-gallery" title="<?php the_title(); ?>" data-description="<?php the_field('description'); ?>" data-gallery>View in Gallery</a>
                      <img src="<?php the_field('image'); ?>" alt="the_field('description');">
                  </div>
                </div>
              <?php endwhile; endif; ?>
            </div>