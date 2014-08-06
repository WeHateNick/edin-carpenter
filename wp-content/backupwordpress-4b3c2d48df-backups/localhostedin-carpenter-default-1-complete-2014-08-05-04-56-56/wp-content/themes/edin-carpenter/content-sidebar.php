      <?php
        if ( is_front_page() ) {
          get_sidebar( 'front-page' );
        } elseif ( is_404() ) {
          get_sidebar( 'front-page' );
        } else {
          get_sidebar();
        }
      ?>