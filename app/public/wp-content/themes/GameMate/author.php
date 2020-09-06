



<?php get_header(); ?>
<main class="pagina seccion no-sidebars c"ontenedor">
    <?php
        $author = get_queried_object();
        // echo "<pre>";
        // var_dump($category);
        // echo "</pre>";
    ?>
    <h2 class="text-center texto-primario">Author: 
        <?php  
                echo $author->data->display_name;
        ?>
    <p class="text-center">
        <?php
            echo get_the_author_meta('description', $author->data->ID);
        ?>
    </p>
    </h2>
    <ul class="listado-blog">
       <?php get_template_part('template-parts/loop', 'blog'); ?>
    </ul>
</main>
<?php get_footer(); ?>