<?php

function pr($array){
    echo '<pre>';
    print_r($array);
}

function prx($array){
    echo '<pre>';
    print_r($array);
    die();
}
define('show_product_image','images/product/');

function get_safe_value($conn,$str){
    if($str !=''){
        // $str=trim($str);
        return mysqli_real_escape_string($conn,$str);
    };
}



?>