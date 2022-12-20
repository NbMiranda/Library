<?php
session_start();
include_once ("conexao.php");

$id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
$resultUser = "DELETE FROM books WHERE id='$id'";
$result = mysqli_query($conn, $resultUser);

if (mysqli_affected_rows($conn)) {
    $_SESSION['msg'] = "<p class='container' id='book_success'>Livro deletado com sucesso</p>";
    header("Location: cadastros.php?page=1");
    echo $id;
}else {
    $_SESSION['msg'] = "<p>Erro!! Livro não foi deletado</p>";
    header("Location: cadastros.php?page=1");
    
}
?>