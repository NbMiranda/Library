<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <?php
    $num = $_GET['num'];
    $c = 0;

    for ($i=1; $i <= $num; $i++) { 
        if ($num / $i === $i || $num/$i === $num ) {
            echo "valoes multiplos $i";
        }else {
            echo "Não";
        }
    }

    ?>
    <a href="index.php">Voltar</a>


</body>

</html>