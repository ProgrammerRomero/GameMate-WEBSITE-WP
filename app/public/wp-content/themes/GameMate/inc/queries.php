
<?php

function gamemate_list_classes() { ?>

    <ul class="lista-clases">
        <?php
            $args = array(
                'post_type' => 'gymfitness_clases',
                'posts_per_page' => 10,
                'order_by' => 'title'
            );
            $classes = new WP_Query($args);
            while( $classes->have_posts() ): $classes->the_post();  ?>

            <li class="clase card">
                <?php the_post_thumbnail('medium'); ?>
                <div class="contenido">
                    <a href="<?php the_permalink(); ?>">
                    <h3><?php the_title(); ?></h3>
                </a>
                <?php
                    $start_time = get_field('start_time');
                    $end_time = get_field('end_time');
                ?>
                <p><?php the_field('tournament_days'); ?> - <?php echo $start_time . " to " . $end_time; ?></p>
                </div>
            </li>

            <?php endwhile; wp_reset_postdata(); ?>
    </ul>


<?php
}

?>
