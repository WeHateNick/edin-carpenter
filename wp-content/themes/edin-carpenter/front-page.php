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
          <?php
            get_template_part('content', 'slides');
            get_template_part('content', 'testimonial')
          ?>
        </div>  <!-- End container -->
      </div>
      <!-- Flyout Canvas Menu -->
<?php get_footer(); ?>