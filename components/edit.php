<?php
session_start();
include_once ("conexao.php");

$id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
$bookName = filter_input(INPUT_POST, 'bookName', FILTER_SANITIZE_STRING);
$writerName = filter_input(INPUT_POST, 'writerName', FILTER_SANITIZE_STRING);
$genre = $_POST['genre'];
$otherGenre = filter_input(INPUT_POST, 'otherGenre', FILTER_SANITIZE_STRING);
$sinopse = $_POST['sinopse'];

// echo "$bookName <br> $writerName <br> $genre <br> $otherGenre <br> $sinopse";



$resultUser = "UPDATE books SET book_name='$bookName', writer_name='$writerName', genre='$genre',
other_genre='$otherGenre', sinopse='$sinopse' WHERE id='$id'";
$result = mysqli_query($conn, $resultUser);

if (mysqli_affected_rows($conn)) {
    $_SESSION['msg'] = "<p class='container' id='book_success'>Livro editado com sucesso</p>";
    header("Location: cadastros.php?page=1");
}else {
    $_SESSION['msg'] = "<p>Erro!! Livro não foi editado</p>";
    header("Location: cadastros.php?page=1");
}
?>