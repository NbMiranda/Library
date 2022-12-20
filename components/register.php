<?php
session_start();
include_once ("conexao.php");

$bookName = filter_input(INPUT_POST, 'book-name', FILTER_SANITIZE_STRING);
$writerName = filter_input(INPUT_POST, 'writer-name', FILTER_SANITIZE_NUMBER_INT);
$genre = $_POST['genre'];
$otherGenre = filter_input(INPUT_POST, 'other-genres', FILTER_SANITIZE_STRING);
$sinopse = $_POST['sinopse'];

// echo "$bookName <br> $writerName <br> $genre <br> $otherGenre <br> $sinopse";



$resultUser = "INSERT INTO books (book_name, genre, other_genre, sinopse, writer_id)
VALUES('$bookName', '$genre', '$otherGenre', '$sinopse', '$writerName')";

$result = mysqli_query($conn, $resultUser);

if (mysqli_insert_id($conn)) {
    $_SESSION['msg'] = "<p class='container' id='book_success'>Livro cadastrado com sucesso</p>";
    header("Location: cadastros.php?page=1");
}else {
    $_SESSION['msg'] = "<p>Erro!! Livro não foi cadastrado</p>";
    header("Location: cadastros.php?page=1");
}
?>