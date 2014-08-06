            <div class="row">
              <div class="col-sm-10 col-md-offset-1">
                <article class="excerpt">
                    <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
                    <div class="preview-img">
                      <img src="<?php the_field('main-image'); ?>">
                    </div>
                    <p class="post-time"><em>Posted on: <?php the_time('F j, Y'); ?></em></p>
                    <?php if(is_single()): ?>
                      <?php the_content(); ?>
                      <?php comments_template(); ?>
                    <?php else: ?>
                      <p><?php the_field('excerpt'); ?></p>
                      <a href="<?php the_permalink(); ?>" class="btn">Read Full Post &rarr;</a>
                      <hr>
                    <?php endif; ?>
                </article>
              </div>
            </div>