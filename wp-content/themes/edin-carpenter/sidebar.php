      <!-- Sidebar
      ================================================== -->
      <div class="col-sm-3 hidden-xs sidebar">
        <ul class="clearfix sidebar-nav brackets-effect">
          <?php wp_list_pages( array('title_li'=>'','include'=>get_post_top_ancestor_id()) ); ?>
          <?php wp_list_pages( array('title_li'=>'','depth'=>1,'child_of'=>get_post_top_ancestor_id()) ); ?>
        </ul>
        <a href="<?php bloginfo('url'); ?>" title="Homepage">
          <img src="<?php bloginfo('template_directory'); ?>/img/ecma-logo-sidebar.png" alt="Edin Carpenter Makeup Artistry Logo">
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