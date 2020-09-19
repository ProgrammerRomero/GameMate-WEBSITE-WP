


<?php get_header('front'); ?>

    <section class="bienvenida text-center seccion">
        <h2 class="texto-primario"><?php the_field('welcome_header');?></h2>
        <p><?php the_field('welcome_text'); ?></p>
    </section>

    <div class="seccion-areas">
        <ul class="contenedor-areas">
            <li class="area">
                <?php
                    $area = get_field('area_1');
                    // var_dump($area);
                    $image = wp_get_attachment_image_src($area['image_area'], 'square')[0];
                ?>
                <img src="<?php echo esc_attr($image); ?>" />
                <p><?php echo esc_html($area['text_area']); ?></p>
            </li>

            <li class="area">
                <?php
                    $area2 = get_field('area_2');
                    // var_dump($area);
                    $image = wp_get_attachment_image_src($area2['image_area'], 'square')[0];
                ?>
                <img src="<?php echo esc_attr($image); ?>" />
                <p><?php echo esc_html($area2['text_area']); ?></p>
            </li>

            <li class="area">
                <?php
                    $area3 = get_field('area_3');
                    // var_dump($area);
                    $image = wp_get_attachment_image_src($area3['image_area'], 'square')[0];
                ?>
                <img src="<?php echo esc_attr($image); ?>" />
                <p><?php echo esc_html($area3['text_area']); ?></p>
            </li>

            <li class="area">
                <?php
                    $area4 = get_field('area_4');
                    // var_dump($area);
                    $image = wp_get_attachment_image_src($area4['image_area'], 'square')[0];
                ?>
                <img src="<?php echo esc_attr($image); ?>" />
                <p><?php echo esc_html($area4['text_area']); ?></p>
            </li>

        </ul>
    </div>

    <section class="clases">
        <div class="contenerdor seccion">
            <h2 class="text-center texto-primario">Our Tournaments</h2>
            <?php gamemate_list_classes(4) ?>
            <div class="contenedor-boton">
                <a href="<?php echo esc_url( get_permalink( get_page_by_title('Tournaments'))); ?>" 
                 class="boton boton-primario">
                    See Tournaments
                </a>
            </div>
        </div>
    </section>

<?php get_footer(); ?>