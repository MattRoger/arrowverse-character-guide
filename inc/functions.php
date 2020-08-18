<?php
function get_backside($main_id){
    include("connection.php");
    $query='SELECT  aka FROM AKA WHERE ' . $main_id. '=main_id';
    try{ 
        $results= $db->query($query);
       
     }catch(Exception $e){
         echo "error";
         exit;
     }
    $catalog_aka = $results->fetchAll();
    $aka_array= array();
    foreach($catalog_aka as $item){
     
          array_push( $aka_array, $item['aka']);
    
    }
    return $aka_array;
    // return $catalog_aka;
}

function full_catalog_array(){
    include("connection.php");
    try{ 
        $results= $db->query("SELECT * FROM Characters
        ");
       
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
    $aka=get_backside($item['main_id']);
    var_dump($aka[0]);
    var_dump($aka[1]);

    $class = strtolower($item["first_name"].$item["last_name"]);
    $full_name=$item['first_name'] . " " . $item["last_name"] ; 
    $output = '
    <div class="card flip-card">
    <div class="flip-card-inner '. $class.'" style ="background-image: url(' . "'./images/" .$item['img'] . '")"' .'>
      <div class="flip-card-front">
        <h3 style="background-color:'.$item['bg_color'].'">'.$item['main_alias'].'</h3>
        <h4 style="background-color:'.$item['bg_color'].'">'. $full_name .'</h4>
      </div>
      <div class="flip-card-back" style="background-color:'.$item['bg_color'].'">
        <h3>Name:' . $full_name .'</h3>
        <h4>Alias:' . $item['main_alias'] .'</h4><p>AKA: ';
        for($i=0; $i< count($aka); $i++){
            if($i<count($aka)-1){
                $output .=  $aka[$i] .", ";
                
            }else{
                $output .=  $aka[$i] .".";

            }
        }
        
      
        $output .=   '</p>';

    //     foreach($aka as$akaItem){
            
    //       echo($akaItem);
      
    // }
   
    $output .=       
        "</div>
        </div>
    </div>";
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