<?php

// try{
//     $db = new PDO("mysql:host=localhost;
//     dbname=arrowverse_db;port=3306",
//     "root","matrix");    
  
// }catch(
//     Exception $e){
//         echo "unable to connect to db";
//         echo $e->getMessage();
//         exit;
// }
try{
    $db = new PDO("mysql:host=l6slz5o3eduzatkw.cbetxkdyhwsb.us-east-1.rds.amazonaws.com;
    dbname=arrowverse_db;port=3306",
    "s5qiw4adv2l8acoo","r7s6mbj2txjrms8b");    
  
}catch(
    Exception $e){
        echo "unable to connect to db";
        echo $e->getMessage();
        exit;
}



// var_dump($results->fetchAll(PDO::FETCH_ASSOC));
?>