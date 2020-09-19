

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
    
<header class="site-header">
    <div class="contenedor header-grid">
        <div class="barra-navegacion">
            <div class="logo">
                <img src="<?php echo get_template_directory_uri(); ?>/img/GameMate.png" width="200px" height="200px" alt="slogo site">
            </div>
            <?php
            //Bring the Menu into the header from function.php
                $args = array(
                    'theme_location' => 'main-menu', 
                    'container' => 'nav',
                    'container_class' => 'main-menu'
                );
                wp_nav_menu($args);
            ?>
        </div> <!--Closes navbar-->

        <div class="tagline text-center">
                <h1><?php the_field('hero_header'); ?></h1>
                <p><?php the_field('content'); ?></p>
        </div>
    </div>
</header>
