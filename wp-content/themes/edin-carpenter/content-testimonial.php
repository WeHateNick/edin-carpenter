      <?php 
        $args = array(
          'post_type' => 'testimonials',
          'posts_per_page' => 1,
          'orderby' => 'rand'
        );
        $the_query = new WP_Query($args);
      ?>
      <?php if ( have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
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