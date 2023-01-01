<?php
//deleting writers from writer table 
session_start();
include('../database/connection.php');
$conn =connect();

$writerNameDel = filter_input(INPUT_POST, 'writerNameDel', FILTER_SANITIZE_NUMBER_INT);

$sqlCheck = $conn->prepare("SELECT * FROM books WHERE writer_id = $writerNameDel");
$sqlCheck->execute(array());
$resultCheck = $sqlCheck->fetchAll();

if ($resultCheck[0]['writer_id'] == $writerNameDel ) {
   $_SESSION['msg'] = "<p class='container' style='color:red;'>Não foi possivel deletar, escritor associado a um livro</p>";
   header("Location: ../frontend/page/cadastros?page=1");
}else {
   $sql = $conn->prepare("DELETE FROM writers WHERE id='$writerNameDel'");
   $sql->execute();

   if($sql){
      $_SESSION['msg'] = "<p id='book_success'>Escritor deletado com sucesso</p>";
      header("Location: ../frontend/page/writerForm?page=1");
   }else{
      $_SESSION['msg'] = "<p>Erro!! escritor não foi deletado</p>";
      header("Location: ../frontend/page/writerForm?page=1");
   }
}
?>