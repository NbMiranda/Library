<?php
session_start();
include_once 'conection.php';
$conn = conect();
include_once 'header.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Escritores</title>
    <link rel="stylesheet" href="/css/color.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
    <div class="container" id="orange-text">
        <h1 class="text-center" style="margin:1.5em;">Escritores</h1>
        <form action="writerRegister.php" method="post">
            <div class="form-group" id="forms">
                <?php 
                if (isset($_SESSION['msg'])) {
                    echo $_SESSION['msg'];
                    unset($_SESSION['msg']);
                }
                ?>
                <label for="writerName" id="forms">Nome do Escritor</label>
                <input type="text" class="form-control" name="writerName" id="writerName" style="margin-top:1em;">
            </div>
            <button type="submit" class="btn btn-warning">Cadastrar</button>
        </form>
    </div>

    <h2 class="text-center" id="orange-text" style="margin: 1.3em 0 1.3em 0 ;">Escritores Já cadastrados</h2>
    <div class="container text-center">
        <div class="row">
            <div class="col-6">
                <h3>Id</h3>
            </div>
            <div class="col-6">
                <h3>Escritor</h3>
            </div>
        </div>
    </div>
    <?php
    // Selecionando dados de uma tabela
    $stmt = $conn->prepare('SELECT * FROM writers');
    $stmt->execute(array());
    $result = $stmt->fetchAll();


    foreach ($result as $row) {
        $writerName = $row['writer_name'];
        $id = $row['id'];

        echo "<div class='container text-center'>
                    <div class='row'>
                        <div class='col-6'>
                            <p>$id</p>
                        </div>
                        <div class='col-6'>
                            <p>$writerName</p>
                        </div>
                    </div>
                </div>";
    }

    include_once 'footer.php';
    ?>

</body>