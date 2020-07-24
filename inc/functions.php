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
    include("connection.php");
    try{
        $results = $db->query(
         "SELECT * 
         FROM Characters
         ORDER BY RAND()
         LIMIT 4
        "
        );
    }catch(Exception $e){
        echo "random failed to load";
        exit;
    };
    $catalog = $results->fetchAll();
    return $catalog;
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
    $output = '
    <div class="card flip-card">
    <div class="flip-card-inner"style ="background-image: url(' . "'./images/" .$item['img'] . '")"' .'>
      <div class="flip-card-front">
        <h5>'.$item['main_alias'].'</h5>
        <h6>'.$item['full_name'].'</h6>
      </div>
      <div class="flip-card-back">
        <h5>Name:' . $item['full_name'] .'</h5>
        <h6>Alias:' . $item['main_alias'] .'</h6> 
        <p>We love that guy</p>
      </div>
    </div>
  </div>
';

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