<?php
//deleting writers from writer table 
session_start();
include('connection.php');
$conn =connect();

$writerNameDel = filter_input(INPUT_POST, 'writerNameDel', FILTER_SANITIZE_NUMBER_INT);
$sql = $conn->prepare("DELETE FROM writers WHERE id='$writerNameDel'");
$sql->execute();

if($sql){
    $_SESSION['msg'] = "<p class='container' id='book_success'>Escritor deletado com sucesso</p>";
    header("Location: ../frontend/page/writerForm.php?page=1");
 }else{
    $_SESSION['msg'] = "<p>Erro!! escritor não foi deletado</p>";
    header("Location: ../frontend/page/writerForm.php?page=1");
 }
?>