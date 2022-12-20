<?php
session_start();
include_once 'conexao.php';
include_once 'header.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastros</title>
    <link rel="stylesheet" href="/css/color.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
    <div class="container" id="orange-text">
        <h1 class="text-center" style="margin:1.5em;">Escritores</h1>
        <form action="writerRegister" method="post">
            <div class="form-group" id="forms">
                <label for="book-name" id="forms">Nome do Escritor</label>
                <input type="text" class="form-control" name="book-name" id="book-name" style="margin-top:1em;">
            </div>

        </form>
    </div>

    <?php
    include_once 'footer.php';
    ?>

</body>