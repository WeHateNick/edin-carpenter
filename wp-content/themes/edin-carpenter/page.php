<?php get_header(); ?>
  <div class="container-fluid main-content">
    <div class="row row-offcanvas row-offcanvas-right">
      <!-- Sidebar
      ================================================== -->
      <div class="col-sm-3 hidden-xs sidebar">
        <ul class="clearfix sidebar-nav brackets-effect">
          <?php wp_list_pages( array('title_li'=>'','include'=>get_post_top_ancestor_id()) ); ?>
          <?php wp_list_pages( array('title_li'=>'','depth'=>1,'child_of'=>get_post_top_ancestor_id()) ); ?>
        </ul>
        <a href="<?php bloginfo('url'); ?>" title="Homepage">
          <img src="<?php echo get_template_directory_uri() . '/img/ecma-logo-sidebar.png';?>">
        </a>
        <hr>
        <div class="social-icons underline-effect">
          <a href="#"><span class="icon-pinterest"></span></a>
          <a href="#"><span class="icon-instagram"></span></a>
          <a href="#"><span class="icon-facebook"></span></a>
          <a href="#"><span class="icon-mail"></span></a>
        </div>
      </div>
      <!-- End sidebar -->
      <div class="col-sm-9">
        <div class="container-fluid">
          <!-- Hero Shot
          ================================================== -->
          <div class="row">
            <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
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
                <?php the_field('content'); ?>
                <?php endwhile; else: ?>
                  <p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
              <?php endif; ?>
            </div>
          </div>        <!-- End main content -->
        </div> 
      </div>
      <!-- Flyout Canvas Menu -->
<?php get_footer(); ?>