


<?php get_header(); ?>
<main class="pagina seccion no-sidebars c"ontenedor">
    <?php
        $category = get_queried_object();
    ?>
    <h2 class="text-center texto-primario">
        <?php  
                echo $category->name;
        ?>
    </h2>
    <ul class="listado-blog">
       <?php get_template_part('template-parts/loop', 'blog'); ?>
    </ul>
</main>
<?php get_footer(); ?>