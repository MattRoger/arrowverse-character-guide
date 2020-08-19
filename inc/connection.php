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
$host="zy4wtsaw3sjejnud.cbetxkdyhwsb.us-east-1.rds.amazonaws.com";
$port=3306;
$socket="";
$user="fyef9r1pw1e8ayre";
$password="zab0tjsy498xc15a";
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



$con = new mysqli($host, $user, $password, $dbname, $port, $socket)
	or die ('Could not connect to the database server' . mysqli_connect_error());

//$con->close();



// var_dump($results->fetchAll(PDO::FETCH_ASSOC));
?>