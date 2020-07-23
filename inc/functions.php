<?php

function full_catalog_array(){
    include("connection.php");
    try{ 
        $results= $db->query("SELECT * FROM Characters");
       
     }catch(Exception $e){
         echo "error";
         exit;
     }
    $catalog = $results->fetchAll();
    return $catalog;
}

function get_random_array(){

}

function get_item_html($item){
    $output = ' <div class="card" style="width: 18rem;">
    <div class="card-body"><h5 class="card-title">' . $item['full_name']
    . '</h5><h6 class="card-subtitle mb-2 text-muted">' .$item['main_alias']
    . '</h6>';

    return $output;
}