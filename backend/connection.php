<?php 
//conection database PDO
function connect(){
    $localServer = 'db';
    $userServer = 'root';
    $password = 'password';
    $database = 'library';

    $conn = new PDO("mysql:host=$localServer;dbname=$database", $userServer, $password);

    
    return $conn;
}

?>