

<?php get_header(); ?>

    <main class="contenedor pagina seccion con-sidebar">
        <div class="contenido-principal">
            <?php
            while( have_posts() ) : the_post();
            ?>
            <h1 class="text-center texto-primario"><?php the_title(); ?></h1>

                <!-- Calling featured image -->
                <?php if(has_post_thumbnail() ) :
                    the_post_thumbnail('portrait', array('class' => 'imagen-destacada'));
                    endif;
                ?>

            <?php the_content(); ?>
            Writen By  <?php the_author(); ?>
            Created <?php the_date(); ?>

            <?php
                endwhile;
            ?>

        </div>
        <?php get_sidebar(); ?>
    </main>

<?php get_footer(); ?>