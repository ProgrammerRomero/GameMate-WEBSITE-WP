
<?php

/*
    Plugin Name: Game Mate - Widgets
    Plugin URI:
    Description: Add Personalized Widgets to Gamemate
    Version: 1.0.0
    Author: Hector Julian Romero Cuervo
    Author URI:
    Text DOmain: gamemate

*/

// Avoid any hack to the widget, kill the widget instantanely
if(!defined('ABSPATH')) die();

/**
 * Adds GameMate_Classes_Widget widget.
 */
class GameMate_Classes_Widget extends WP_Widget {

	/**
	 * Register widget with WordPress.
	 */
	function __construct() {
		parent::__construct(
			'foo_widget', // Base ID
			esc_html__( 'GameMate Classes', 'text_domain' ), // Name
			array( 'description' => esc_html__( 'Add Classes like widgets', 'text_domain' ), ) // Args
		);
	}

	/**
	 * Front-end display of widget.
	 *
	 * @see WP_Widget::widget()
	 *
	 * @param array $args     Widget arguments.
	 * @param array $instance Saved values from database.
	 */
	public function widget( $args, $instance ) {
		echo $args['before_widget'];
		if ( ! empty( $instance['title'] ) ) {
			echo $args['before_title'] . apply_filters( 'widget_title', $instance['title'] ) . $args['after_title'];
		}
        $amount = $instance['amount'];
        if($amount == '') {
            $amount == 4;
        }
        ?>
        <ul>
            <?php
                $args = array(
                    'post_type' => 'gymfitness_clases',
                    'posts_per_page' => $amount
                );
                $clases = new WP_Query($args);
                while($clases->have_posts()) : $clases->the_post();
                
            ?>
            <li class="clase-sidebar">
                <div class="imagen">
                    <?php the_post_thumbnail('thumbnail'); ?>
                </div>

                <div class="contenido-clase">
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
		    echo $args['after_widget'];
	}

	/**
	 * Back-end widget form.
	 *
	 * @see WP_Widget::form()
	 *
	 * @param array $instance Previously saved values from database.
	 */
	public function form( $instance ) {
        $amount = !empty($instance['amount'] ) ? $instance['amount'] : esc_html__('How many classes do you wanna show?', 'gamemate'); 
        ?>
        <p>
            <label for="<?php echo esc_attr($this->get_field_id('amount')) ?>">
                <?php esc_attr_e('How many classes do you wanna show?'); ?>
            </label>
            <input 
                class="widefat"
                id="<?php echo esc_attr( $this->get_field_id('amount') ) ?>"
                name="<?php echo esc_attr( $this->get_field_id('amount') ) ?>"
                type="number"
                value="<?php echo esc_attr( $amount ) ?>"
                
                />
        </p>
		<?php 
	}

	/**
	 * Sanitize widget form values as they are saved.
	 *
	 * @see WP_Widget::update()
	 *
	 * @param array $new_instance Values just sent to be saved.
	 * @param array $old_instance Previously saved values from database.
	 *
	 * @return array Updated safe values to be saved.
	 */
	public function update( $new_instance, $old_instance ) {
		$instance = array();
		$instance['amount'] = ( ! empty( $new_instance['amount'] ) ) ? sanitize_text_field( $new_instance['amount'] ) : '';

		return $instance;
	}

} // class Foo_Widget


// register Foo_Widget widget
function register_gamemate_widget() {
    register_widget( 'GameMate_Classes_Widget' );
}
add_action( 'widgets_init', 'register_gamemate_widget' );

?>