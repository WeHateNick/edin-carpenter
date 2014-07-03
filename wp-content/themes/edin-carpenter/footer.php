      <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
        <div class="flyout">
            <div class="menu-label">
              <button type="button" data-toggle="offcanvas" data-target=".navbar-collapse">Menu</button>
            </div>
            <?php
              $args = array(
                'theme_location' => 'footer-menu',
                'container' => 'false'
                );
              wp_nav_menu($args);
             ?>
        </div>
      </div><!--/Flyout-->
    </div>
  </div> 
  <!-- FOOTER -->
  <footer class="footer">
        <?php
        $args = array(
          'theme_location' => 'footer-menu',
          'menu_class' => 'footer-nav brackets-effect',
          'container' => 'false'
          );
        wp_nav_menu($args);
       ?>
    <p>&copy; <?php echo date('Y')?> <?php bloginfo('name'); ?> | Designed and Developed by <a href="http://wehatenick.com">Nick Ocampo</a> | <a href="http://getbootstrap.com/examples/carousel/#">Terms &amp; Conditions</a></p>
  </footer class="footer">

    <div id="window-resizer-tooltip" style="display: none;">
      <a href="http://getbootstrap.com/examples/carousel/#" title="Edit settings" style="background-image: url(chrome-extension://kkelicaakdanhinjdeammmilcgefonfh/images/icon_19.png);"></a>
      <span class="tooltipTitle">Window size: </span><span class="tooltipWidth" id="winWidth">1054</span> x <span class="tooltipHeight" id="winHeight">714</span><br><span class="tooltipTitle">Viewport size: </span><span class="tooltipWidth" id="vpWidth">1054</span> x <span class="tooltipHeight" id="vpHeight">619</span>
    </div>

   <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
      <script>
          (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
          function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
          e=o.createElement(i);r=o.getElementsByTagName(i)[0];
          e.src='//www.google-analytics.com/analytics.js';
          r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
          ga('create','UA-XXXXX-X');ga('send','pageview');
      </script>
      <?php wp_footer(); ?>
</body>
</html>