
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <?php wp_head(); ?>
</head>
<body>
    
<header class="site-header">
    <div class="contenedor">
        <div class="barra-navegacion">
            <div class="logo">
                <img src="<?php echo get_template_directory_uri(); ?>/img/GameMate.png" alt="slogo site">
            </div>
            <?php
            //Bring the Menu into the header from function.php
                $args = array(
                    'theme_location' => 'main-menu', 
                    'container' => 'nav',
                    'container_class' => 'main_menu'
                );
                wp_nav_menu($args);
            ?>
        </div>
    </div>
</header>
