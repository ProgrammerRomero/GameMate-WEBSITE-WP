



<?php
    while( have_posts() ) : the_post();
?>
    <h1><?php the_title(); ?></h1>
    <?php the_content(); ?>
    Writen By  <?php the_author(); ?>
    Created <?php the_date(); ?>

<?php
    endwhile;
?>