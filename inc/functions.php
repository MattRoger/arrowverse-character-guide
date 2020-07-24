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
function category_catalog_array($show){
    include("inc/connection.php");
    $show = strtolower($show);
    try{
        $sql = "SELECT * FROM Characters
        WHERE LOWER(_show) = ?";
        $results = $db->prepare($sql);
        $results->bindParam(1,$show,PDO::PARAM_STR);
        $results->execute();
    }catch(Exception $e){
        echo "show category failed to load";
    };
    $catalog = $results->fetchAll();
    return $catalog;
}

function get_item_html($item){    
    $output = '<div class="card-wrapper">
    <div class="card front-side"  style ="background-image: url(' . "'./images/" .$item['img'] . '")"' .
    '><div class="card-body"><h5 class="card-title">' . $item['main_alias']
    . '</h5><h6 class="card-subtitle mb-2 text-muted">' . $item['full_name']
    . '</h6></div></div>'
    // backside
    .'<div class="card back-side"><div class="card-body"><h6 class="back-title">Name:' . $item['full_name'] 
    . '</h6><p class="back-subtitle"> Alias:' . $item['main_alias'] .'</p>'
    .'<p>Powers/abilities'."x".'</p>'

    . '<div class="progress">'
    . '<div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" style="width:'. $item['strength']."0%" .' aria-valuenow=' .$item['strength'] .'aria-valuemin="0" aria-valuemax="100">Strength</div>
  </div>'

    . '</div></div>'
    . '</div>';

    return $output;
}

function array_category($catalog, $show){
    $output = array();
    foreach($catalog as $id => $item){
        if($show== null OR strtolower($show) == strtolower($item["_show"])){
            $sort = $item["title"];
            $sort = ltrim($sort, "The ");
            $sort = ltrim($sort, "a ");
            $sort = ltrim($sort, "an ");
            $output[$id]= $sort;
        }
    }
    asort($output);
    return array_keys($output);
}