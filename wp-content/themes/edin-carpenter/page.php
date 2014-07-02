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

        <img src="<?php echo get_template_directory_uri() . '/img/ecma-logo-sidebar.png';?>">
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
                            <div class="item active">
                              <img src="img/crazy-eyes.png">
                            </div>
                            <div class="item">
                              <img src="img/blonde-just-face.png">
                            </div>
                            <div class="item">
                              <img src="img/crazy-eyes.png">
                            </div>
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
          <p> This is the page.php template</p>
        </div>  <!-- End container -->
      </div>
      <!-- Flyout Canvas Menu -->
<?php get_footer(); ?>