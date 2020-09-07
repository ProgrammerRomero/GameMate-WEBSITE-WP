
<?php

//[foobar]
function gamemate_location_shortcode( ){
    $location = get_field('location');
    
?>

    <!-- IS NOT WORKING THAT IS WHY IS COMENTED, NEEDS TO WORK -->
    <!-- <div class="ubacion">
        <input type="hidden" id="lat" value="<?php echo $location['lat'] ?>"/>
        <input type="hidden" id="lng" value="<?php echo $location['lng'] ?>"/>
        <input type="hidden" id="direccion" value="<?php echo $location['addres'] ?>"/>
        <div id="mapa">

        </div>
    </div> -->

<?php
        // echo "<pre>";
        // var_dump($location);
        // echo "</pre>";
    }
    add_shortcode( 'gamemate_ubicacion', 'gamemate_location_shortcode' );

?>