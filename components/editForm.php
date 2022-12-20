<?php
session_start();
include_once("conexao.php")
    ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar</title>
    <link rel="stylesheet" href="/css/color.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<?php
include_once('header.php');
//sql query
$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
$sql_edit = "SELECT * FROM books WHERE id = '$id'";
$sql_edit_result = mysqli_query($conn, $sql_edit);
$row_sql = mysqli_fetch_assoc($sql_edit_result);

//validation
$idValidation = "SELECT * FROM books ORDER BY id DESC LIMIT 1; ";
$validation = mysqli_query($conn, $idValidation);
$row = mysqli_fetch_assoc($validation);

if ($id > $row['id']) {
    include_once("error.php");
} else {

}
?>

<body>
    <!-- Edit form -->
    <div class="container">
        <h1 class="text-center" id="orange-text" style="margin:1.4em;">Edite o livro</h1>
        <h2 class='text-center'><i>
                <?php echo $row_sql['book_name'] ?>
            </i> </h2>
        <form action="edit.php" method="post">
            <input type="hidden" name="id" value="<?php echo $row_sql['id'] ?>">
            <div class="row" id="orange-text">

                <div class="col-6" id="forms">
                    <div class="form-group">
                        <label for="bookName">Nome do Livro</label>
                        <input type="text" class="form-control" value="<?php echo $row_sql['book_name'] ?>"
                            name="bookName">
                    </div>
                </div>
                <div class="col-6" id="forms">
                    <div class="form-group">
                        <label for="writerName">Nome do Autor</label>
                        <input type="text" class="form-control" value="<?php echo $row_sql['writer_name'] ?>"
                            name="writerName">
                    </div>
                </div>

            </div>
            <div class="row" id="orange-text">

                <div class="col-6" id="forms">
                    <div class="form-group">
                        <label for="">Genero</label>
                        <select class="form-select" aria-label="Default select example" name="genre">
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
                        <label for="otherGenre">Gênero secundario</label>

                        <input type="text" class="form-control" value="<?php echo $row_sql['other_genre'] ?>"
                            name="otherGenre">
                    </div>
                </div>


            </div>
            <div class="row" id="orange-text">
                <div class="form-group col-12" id="forms">
                    <label for="textarea" id="orange-text">Sinopse</label>
                    <textarea class="form-control" name="sinopse" id="textarea" cols="20" rows="6"></textarea>
                </div>
            </div>
            <!-- edit modal -->
            <div class="row text-center" style="margin: 1.5em;">
                <div class="col-12">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#edit">
                        Editar
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="edit" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                        aria-labelledby="editLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="editLabel">Editar</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Deseja mesmo editar o livro?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary"
                                        data-bs-dismiss="modal">Fechar</button>
                                    <button type="submit" class="btn btn-primary">Editar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    
    <!-- delete modal -->
    <div class="container text-center">
        <div class="row">
            <div class="col-12">
                <form action="delete.php" method="post">
                    <input type="hidden" name="id" value="<?php echo $row_sql['id'] ?>">
                    <!-- Button Modal -->
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete">
                        Deletar
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="delete" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                        aria-labelledby="deleteLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="deleteLabel">Deletar</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Deseja mesmo deletar o livro?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary"
                                        data-bs-dismiss="modal">Fechar</button>
                                    <button type="submit" class="btn btn-danger">Deletar</button>
                                </div>
                            </div>
                        </div>
                    </div>


                </form>
            </div>
        </div>
    </div>



    <?php
    include_once('footer.php')
        ?>


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
        integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
</body>