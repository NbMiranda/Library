<?php
//search like db
include('../database/connection.php');
$conn =connect();

$searchBook = filter_input(INPUT_POST, 'palavra', FILTER_SANITIZE_STRING);

$sqlSearch = $conn->prepare("SELECT * FROM books WHERE book_name like '%$searchBook%'");
$sqlSearch->execute(array());
$resultSearch = $sqlSearch->fetchAll();

if (($resultSearch)) {
    
}
?>