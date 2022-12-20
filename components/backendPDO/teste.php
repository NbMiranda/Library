<?php
include 'conection.php';
$pdo = conect();

$table = 'writers';


//Procurando dados de uma tabela
$id = 1;
$stmt = $pdo->prepare('SELECT * FROM '.$table.' WHERE id= :id');
$stmt->execute(array('id' => $id));
$result = $stmt->fetchAll();

foreach ($result as $key) {
    print_r($key);
    
}