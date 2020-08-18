<?php
function get_skills($main_id){
    include("connection.php");
    $query='SELECT  skills.skill_type, skills.skill_name FROM hero_skills JOIN skills ON hero_skills.skill_id = skills.skill_id WHERE ' . $main_id. '=hero_id';
    try{ 
        $results= $db->query($query);
       
     }catch(Exception $e){
         echo "error";
         exit;
     }
    $catalog_skills = $results->fetchAll();
    return $catalog_skills;
}


function get_aka($main_id){
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
    $aka=get_aka($item['main_id']);
    $skills=get_skills($item['main_id']);
    $abilities= array();
    $powers= array();
    for($i=0; $i<count($skills); $i++){    
        $skill= $skills[$i]['skill_name'];
        if($skills[$i]['skill_type']=='power'){
            array_push($powers, $skill);           
        }else{        
            array_push($abilities,$skill);    
        }
    }

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
        <h3>Name: ' . $full_name .'</h3>
        <h4>Alias: ' . $item['main_alias'] .'</h4>
        <p>Species: ' . $item['species'] .'</p>';
        // creates alias list
        if(count($aka)>1){
            $output .='<p>AKA: ';
            for($i=0; $i< count($aka); $i++){
                if($i<count($aka)-1){
                    $output .=  $aka[$i] .", ";
                    
                }else{
                    $output .=  $aka[$i] .".";
                }
            }   
            $output .=   '</p>';
        }
        // powers
        
        if(count($powers)>=1){
            $output.='<p>Powers</p><ul>';
            foreach($powers as $power){
                $output.="<li>$power</li>";
            }
            $output.='</ul>';
        }
        if(count($abilities)>=1){
            $output.='<p>Abilities</p><ul>';
            foreach($abilities as $ability){
                $output.="<li>$ability</li>";
            }
            $output.='</ul>';
        }
  
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