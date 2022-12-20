<?php 
session_start();
include_once 'conexao.php';

$newWriter = filter_input(INPUT_POST, 'newWriter', FILTER_SANITIZE_STRING);


$resultUser = "INSERT INTO writers (writer_name);
VALUES('$newWriter')";

$result = mysqli_query($conn, $resultUser);

if (mysqli_insert_id($conn)) {
    $_SESSION['msg'] = "<p class='container' id='book_success'>Escritor cadastrado com sucesso</p>";
    header("Location: cadastros.php?page=1");
}else {
    $_SESSION['msg'] = "<p>Erro!! Escritor não foi cadastrado</p>";
    header("Location: cadastros.php?page=1");
}

?>
