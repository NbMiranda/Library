<?php 
session_start();
include('conection.php');
$conn =conect();



$writerName = filter_input(INPUT_POST, 'writerName', FILTER_SANITIZE_STRING);

$sql = $conn->prepare("INSERT INTO writers (writer_name) VALUES('$writerName');");

$sql->execute();

if($sql){
    $_SESSION['msg'] = "<p class='container' id='book_success'>Escritor cadastrado com sucesso</p>";
    header("Location: writerForm.php");
 }else{
    $_SESSION['msg'] = "<p>Erro!! Livro não foi cadastrado</p>";
    header("Location: writerForm.php");
 }
?>
