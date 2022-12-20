<?php session_start(); ?>
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
    <?php
    include 'header.php';
    include_once("conexao.php");

    ?>
    <div class="text-center" id='orange-text'>
        <h1 style="margin-top: 2em;">Cadastre seu Livro</h1>
    </div>
    <?php
    if (isset($_SESSION['msg'])) {
        echo $_SESSION['msg'];
        unset($_SESSION['msg']);
    }

    ?>

    <!-- register form -->
    <div class="container">
        <form action="register.php" method="post">
            <div class="row" id="orange-text">
                <div class="col-6" id="forms">
                    <div class="form-group">
                        <label for="book-name">Nome do Livro</label>
                        <input type="text" class="form-control" name="book-name" id="book-name">
                    </div>
                </div>

                <div class="col-4" id="forms">
                    <div class="form-group">
                        <label for="writer-name">Nome do escritor</label>
                        <select class="form-select" aria-label="Default select example" name="writer-name"
                            id="writer-name">
                            <option value="none">-- Escolha o escritor --</option>
                            <?php
                            $option_result = "SELECT COUNT(id) AS option_result FROM writers";
                            $option_querry = mysqli_query($conn, $option_result);
                            $row_option = mysqli_fetch_assoc($option_querry);
                            $cont = ($row_option['option_result']);

                            $i = 1;
                            while ($i <= $cont) {
                                $writers_result = "SELECT * FROM writers WHERE id='$i'";
                                $writers_querry = mysqli_query($conn, $writers_result);
                                $row_writers = mysqli_fetch_assoc($writers_querry);
                                $writers = ($row_writers['writer_name']);
                                echo "<option value='$i'>$writers</option>";
                                $i++;
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="col-2">
                    <br> <br>
                    <a href="writerForm.php">Novo escritor</a>
                </div>

            </div>
            <div class="row" id="orange-text">

                <div class="col-6" id="forms">
                    <div class="form-group">
                        <label for="genre">Genero</label>
                        <select class="form-select " aria-label="Default select example" name="genre" id="genre">
                            <option value="Acao e aventura">Ação e aventura</option>
                            <option value="Biografia">Biografia</option>
                            <option value="Ficcao">Ficção</option>
                            <option value="Horror">Horror</option>
                            <option value="Humor">Humor</option>
                            <option value="Romance">Romance</option>
                            <option value="Infantil">Infantil</option>
                        </select>

                    </div>
                </div>
                <div class="col-6" id="forms">
                    <div class="form-group">
                        <label for="other-genres">Gênero secundario</label>

                        <input type="text" class="form-control" name="other-genres" id="other-genres">
                    </div>
                </div>


            </div>
            <div class="row" id="orange-text">
                <div class="form-group col-12" id="forms">
                    <label for="textarea" id="orange-text">Sinopse</label>
                    <textarea class="form-control" name="sinopse" id="textarea" cols="20" rows="6"></textarea>
                </div>
            </div>
            <button type="submit" class="btn btn-light" id="forms">Cadastrar</button>
        </form>
    </div>
    <!-- end register form -->
    <?php
    // page limitation
    $page_current = filter_input(INPUT_GET, 'page', FILTER_SANITIZE_NUMBER_INT);
    $page = (!empty($page_current)) ? $page_current : 1;
    $pg_qty = 10;
    $start = ($pg_qty * $page) - $pg_qty;
    //sql query and print result 
    $sql = "SELECT b.id, b.book_name, b.genre, b.other_genre, b.sinopse, w.writer_name FROM books as b, writers as w WHERE w.id = b.writer_id LIMIT $start, $pg_qty";
    $sql_result = mysqli_query($conn, $sql);

    echo "<div class='container text-center'>
            <h2 id='orange-text' style='margin: 2em;'>Livros Cadastrados</h2>
            <div class='row'>
                
                <div class='col-3'> <h3>Livro</h3></div>
                <div class='col-3'> <h3>Autor</h3></div>
                <div class='col-3'> <h3>Gênero</h3></div>
                <div class='col-3'> <h3></h3></div>
            </div>
    
    
        </div>";

    while ($register = mysqli_fetch_assoc($sql_result)) {
        $book_name = $register['book_name'];
        $writer_name = $register['writer_name'];
        $genre = $register['genre'];
        $other_genre = $register['other_genre'];
        $sinopse = $register['sinopse'];
        $id = $register['id'];

        // $sql_edit = "SELECT * FROM books WHERE id = '$i'";
        // $sql_edit_result = mysqli_query($conn, $sql_edit);
        // $row_sql = mysqli_fetch_assoc($sql_edit_result);
    
        echo "<div class='container text-center'>
            <div class='row'>
                
                <div class='sqlResult col-3'> <p>$book_name</p></div>
                <div class='sqlResult col-3'> <p>$writer_name</p></div>
                
                <div class='sqlResult col-3'><p>$genre $other_genre</p></div>
                <div class='sqlResult col-3 text-center'> 
                <a href='editForm.php?id=$id' class='btn' role='button'>
                <i class='bi bi-pencil-square'><svg xmlns='http://www.w3.org/2000/svg' width='23' height='23' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>
                <path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>
                <path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>
              </svg></i></a>        
                </div>
            </div>   
        </div>";
    }
    ;

    //pagination
    $page_result = "SELECT COUNT(id) AS page_result FROM books";
    $page_querry = mysqli_query($conn, $page_result);
    $row_pg = mysqli_fetch_assoc($page_querry);

    $count = ($row_pg['page_result']);

    ?>
    <div class="container text-center" style="font-size: 1.3em;">
        <?php
        $i = 1;
        while ($count > 0) {
            if ($page_current == $i) {
                echo "
                <span id='page-nav'><a href='cadastros.php?page=$i'>$i</a></span>";
            } else {
                echo "
                <a href='cadastros.php?page=$i'>$i</a>";
            }

            $count = $count - 10;
            $i++;
        }
        if ($page_current >= $i) {
            include_once 'error.php';
        }
        ?>
    </div>

    <?php
    include 'footer.php';
    ?>


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
        integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>


</body>