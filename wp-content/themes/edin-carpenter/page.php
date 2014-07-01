<?php get_header(); ?>
  <div class="container-fluid main-content">
    <div class="row row-offcanvas row-offcanvas-right">
      <!-- Sidebar
      ================================================== -->
      <div class="col-sm-3 hidden-xs sidebar">
          <ul class="sidebar-nav brackets-effect">
              <li class="section"><a href="#">About</a></li>
              <li class="active-page"><a href=".blog.html">Blog</a></li>
              <li><a href="#">Testimonials</a></li>
          </ul>
        <img src="wp-content/themes/edin-carpenter/img/ecma-logo-sidebar.png">
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
        </div>  <!-- End container -->
      </div>
      <!-- Flyout Canvas Menu -->
      <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
        <div class="flyout">
          <ul>
            <li class="menu-label"><button type="button" data-toggle="offcanvas" data-target=".navbar-collapse">Menu</button></li>
            <li>
              <a href="index.html">Home</a>
            </li>
            <li>
              <a href="page.html">About</a>
              <ul>
                <li><a href="blog.html">Blog</a></li>
                <li><a href="testimonials.html">Testimonials</a></li>
              </ul>
            </li>
            <li>
              <a href="work.html">Work</a>
              <ul>
                <li><a href="#">Weddings</a></li>
                <li><a href="#">Photo Shoots</a></li>
                <li><a href="#">Special Events</a></li>
              </ul>
            </li>
            <li>
              <a href="#">Contact</a>
              <ul>
                <li><a href="#">Get a Quote</a></li>
                <li><a href="#">Pricing</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div><!--/Flyout-->
    </div>
    <div class="row">
      <figure class="col-sm-10 col-md-offset-1 testimonial">
        <blockquote>
          Edin is amazing. You can't go wrong with her for any type of event!
        </blockquote>
        <figcaption>
          Nick Ocampo
        </figcaption>
      </figure>
    </div>
  </div> 
  <!-- FOOTER -->
<?php get_footer(); ?>