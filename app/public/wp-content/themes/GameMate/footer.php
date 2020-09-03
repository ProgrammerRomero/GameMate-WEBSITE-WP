    
    
        <footer class="site-footer contenedor">
            <hr>

            <div class="footer-content">
            <?php
            //Bring the Menu into the header from function.php
                $args = array(
                    'theme_location' => 'main-menu', 
                    'container' => 'nav',
                    'container_class' => 'main-menu'
                );
                wp_nav_menu($args);
            ?>
            <!-- Name is the website name and Y means current year -->
            <p class="copyright"> All Rights Reserved. <?php echo get_bloginfo('name') . " " . date('Y'); ?></p>
            </div>
        </footer>

        <!-- to show WP menu bar when login -->
        <?php wp_footer(); ?>
    </body>
</html>