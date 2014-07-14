      <!-- Sidebar
      ================================================== -->
      <div class="col-sm-3 hidden-xs sidebar">
        <ul class="clearfix sidebar-nav brackets-effect">

        <?php $args = array(
          'style'              => 'list',
          'hide_empty'         => 1,
          'use_desc_for_title' => 0,
          'child_of'           => 0,
          'hierarchical'       => 0,
          'title_li'           => 0,
          'show_option_none'   => __( 'No categories' ),
          'current_category'   => 0,
          'taxonomy'           => 'category',
        ); ?>
           <?php wp_list_categories($args); ?> 
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