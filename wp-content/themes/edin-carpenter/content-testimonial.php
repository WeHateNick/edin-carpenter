      <?php 
        if (is_front_page()):

          $args = array(
            'post_type' => 'testimonial',
            'posts_per_page' => 1,
            'orderby' => 'rand'
          );

        else :
          $args = array(
                    'post_type' => 'testimonial',
                    'posts_per_page' => 15
                  );

                  $the_query = new WP_Query($args);
        endif;  
        $the_query = new WP_Query($args);
      ?>
      <?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
          <div class="row">
            <figure class="col-sm-10 col-md-offset-1 testimonial">
              <blockquote>
                <?php the_field('testimonial') ?>
              </blockquote>
              <figcaption>
                <?php the_field('author'); ?>
              </figcaption>
            </figure>
          </div>
      <?php endwhile; endif; ?>