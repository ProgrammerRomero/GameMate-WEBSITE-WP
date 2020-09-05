<?php

/*
    Template Name: Template for Photos
*/


 get_header(); ?>

<main class="contenedor pagina seccion">
    <div class="contenido-principal">
        
        <?php   while( have_posts() ) : the_post(); ?>
                <h1 class="text-center texto-primario"><?php the_title(); ?></h1>


                <?php 
                    //Get photos from current page
                    $galeria = get_post_gallery(get_the_ID(), false);
                    //Get Ids
                    $galeria_imagenes_ID = explode(',',$galeria['ids']);
                    
                ?>
                <ul class="galeria-imagenes">
                    <?php
                        $i = 1;
                        foreach($galeria_imagenes_ID as $id) :
                            $size = ($i == 4 || $i == 6) ? 'portrait' : 'square';
                            $imagenThumb = wp_get_attachment_image_src( $id, $size )[0];
                            $image = wp_get_attachment_image_src( $id, 'full' )[0];
                    ?>
                        <li>
                            <!-- Data lightbox release lightbox function -->
                            <a href="<?php echo $image; ?>" data-lightbox="galeria"></a>
                            <img src="<?php echo $imagenThumb; ?>" alt="image">
                        </li>
                    <?php $i++; endforeach; ?>
                    
                </ul>
                Writen By  <?php the_author(); ?>
                Created <?php the_date(); ?>

        <?php   endwhile;    ?>
    </div>
</main>

<?php get_footer(); ?>