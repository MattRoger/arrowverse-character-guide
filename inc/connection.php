<?php

try{
    $db = new PDO("mysql:host=localhost;
    dbname=arrowverse_db;port=3306",
    "root","matrix");    
  
}catch(
    Exception $e){
        echo "unable to connect to db";
        echo $e->getMessage();
        exit;
}



// var_dump($results->fetchAll(PDO::FETCH_ASSOC));
?>