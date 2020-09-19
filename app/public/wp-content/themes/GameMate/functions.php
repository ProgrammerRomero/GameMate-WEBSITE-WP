

<?php

    //Reuse Queries
    require get_template_directory() . '/inc/queries.php';
    //Calling Shorcodes file
    require get_template_directory() . '/inc/shortcodes.php';

    //when theme is activated
    function gamemate_setup() {

        //Anable important or featured images
        add_theme_support('post-thumbnails');

        //SEO TITLES
        add_theme_support('title-tag');

        // Add Images to personalized sizes
        add_image_size('square', 350, 350, true);
        add_image_size('portrait', 350, 700, true);
        add_image_size('boxes', 400, 375, true);
        add_image_size('medium', 700, 400, true);
        add_image_size('blog', 966, 644, true);
    }
    add_action('after_setup_theme', 'gamemate_setup');


    //To Open MENU option into Appearance nav into WP dashboard
    function gamemate_menus() {
        // register a new function
        register_nav_menus(array(
            'main-menu' => __( 'Main Menu', 'gamemate' )
        ));
    }

    //run this function when WP starts
    add_action('init', 'gamemate_menus');

    //Scrips and Styles
    function gamemate_scripts_styles() {

        //Load normalize file from css folder
        wp_enqueue_style('normalize', get_template_directory_uri().'/css/normalize.css', array(), '8.0.1');
        //Load Fonts from google
        wp_enqueue_style('googleFonts', 'https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&family=Raleway:wght@400;700;900&family=Staatliches&display=swap', array(), '1.0.0');
        
        //load Main styles
        wp_enqueue_style('style', get_stylesheet_uri(), array('normalize', 'googleFonts'), '1.0.0');

        //Load slick animation
        // wp_enqueue_style('slicknavCSS', 'https://cdnjs.cloudflare.com/ajax/libs/SlickNav/1.0.10/slicknav.min.css', array(), '1.0.0');

        // LOADING CSS DATA
        if(is_page('blog')) : 
            wp_enqueue_style('lightboxCSS', get_template_directory_uri().'/css/lightbox.min.css' , array('normalize'), '2.11.3');
        endif;


        if(is_page('contact')) : 
            wp_enqueue_style('leafletCSS', 'https://unpkg.com/leaflet@1.7.1/dist/leaflet.css' , array('normalize'), '1.7.1');
        endif;

        wp_enqueue_style('slicknavCSS', get_template_directory_uri().'/css/slicknav.css' , array('normalize'), '1.0.10');

        wp_enqueue_script('slicknavJS', get_template_directory_uri() . '/js/jquery.slicknav.min.js', array('jquery'), '1.0.0', 'true'); 


        // LOADING JAVA SCRIPT DATA
        // blog is the Slug
        if(is_page('blog')) : 
        wp_enqueue_script('lightboxJS', get_template_directory_uri() . '/js/jquery.lightbox.min.js', array('jquery'), '2.11.3', 'true'); 
        endif;

        // contact is the Slug
        if(is_page('contact')) : 
        wp_enqueue_script('leaflet', 'https://unpkg.com/leaflet@1.7.1/dist/leaflet.js', array(), '1.7.1', 'true'); 
        endif;

        wp_enqueue_script('scripts', get_template_directory_uri().'/js/script.js', array('jquery', 'slicknavJS'), '1.0.0', true);
        
    }
    add_action('wp_enqueue_scripts', 'gamemate_scripts_styles');

    //Define WIDGETS ZONE
    function gamemate_widgets() {
        register_sidebar(array(
            'name' => 'Sidebar1',
            'id' => 'sidebar_1',
            'before_widget' => '<div class="widget">',
            'after_widget' => '</div>',
            'before_title' => '<h3 class="text-center texto-primario">',
            'after_title' => '</h3>'

        ));
        register_sidebar(array(
            'name' => 'Sidebar2',
            'id' => 'sidebar_2',
            'before_widget' => '<div class="widget">',
            'after_widget' => '</div>',
            'before_title' => '<h3 class="text-center texto-primario">',
            'after_title' => '</h3>'

        ));
    }
    add_action('widgets_init', 'gamemate_widgets');
    
  

    // HERO IMAGE
    function gamemate_hero_image() {
        // Get ID
        $front_page_id = get_option('page_on_front');
        // Get Image ID
        $id_image = get_field('image', $front_page_id);
        // Get the Image
        $image = wp_get_attachment_image_src($id_image, 'full')[0];
        // Style CSS
        wp_register_style('custom', false);
        wp_enqueue_style('custom');

        $imagen_destacada_css = "
            body.home .site-header {
                background-image: linear-gradient(rgba(0,0,0,0.75), rgba(0,0,0,0.75)), url($image);
            }
        ";
        wp_add_inline_style('custom', $imagen_destacada_css);
    }
    add_action('init', 'gamemate_hero_image');

?>