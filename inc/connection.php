<?php

// for local db

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

// for jawsdb

$host="zy4wtsaw3sjejnud.cbetxkdyhwsb.us-east-1.rds.amazonaws.com";
$port=3306;
$socket="";
$user="fyef9r1pw1e8ayre";
$password="rpiyj48lhzdfvnbc";
$dbname="vqksglpi7veihvfq";
try{
    $db = new PDO("mysql:host=$host;
    dbname=$dbname;port=$port",
    "$user","$password");    
  
}catch(
    Exception $e){
        echo "unable to connect to db";
        echo $e->getMessage();
        exit;
}








// var_dump($results->fetchAll(PDO::FETCH_ASSOC));
?>