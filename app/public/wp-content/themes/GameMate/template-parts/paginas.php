
 <?php   while( have_posts() ) : the_post(); ?>
        <h1 class="text-center texto-primario"><?php the_title(); ?></h1>

            <!-- Calling featured image -->
            <?php if(has_post_thumbnail() ) :
                the_post_thumbnail('log', array('class' => 'imagen-destacada'));
                endif;
            ?>

            <?php
                //Check the POST TYPE, POST TYPE IS THE PLUGING CREATED
                if(get_post_type() === 'gymfitness_clases') {
                    
                    $start_time = get_field('start_time');
                    $end_time = get_field('end_time');
            ?>
                <p class="informacion-clase"><?php the_field('tournament_days'); ?> - <?php echo $start_time . " to " . $end_time; ?></p>
            <?php }  ?>

        <?php the_content(); ?>
        Writen By  <?php the_author(); ?>
        Created <?php the_date(); ?>

<?php   endwhile;    ?>