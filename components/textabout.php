<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library</title>
    <link rel="stylesheet" href="/css/color.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
    <!-- Carrosel -->
    <section class="container" id="first-carousel">
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active" id="img" style="background-image: url(/imgs/king3.jpg);">
                    <div class="carousel-caption d-none d-md-block">
                        <h5><span id="carousel-text">Histórias de Stephen King</span></h5>
                        <img src="" alt="">
                    </div>
                </div>
                <div class="carousel-item" id="img" style="background-image: url(/imgs/percy-jackson-universe.jpeg);">
                    <img src="" alt="">
                    <div class="carousel-caption d-none d-md-block">
                        <h5><span id="carousel-text">Coleção Percy Jackson</span></h5>
                        <!-- <p><span id="carousel-text" style="font-size: 1.3em ;">Leia todas as aventuras de Pearcy jackson no mundo grego.</span></p> -->
                    </div>
                </div>
                <div class="carousel-item" id="img"
                    style="background-image: url(/imgs/harrynew.png); background-position:bottom;">
                    <img src="" alt="">
                    <div class="carousel-caption d-none d-md-block">
                        <h5><span id="carousel-text">Coleção Harry Potter</span></h5>
                        <!-- <p><span id="carousel-text" style="font-size: 1.3em ;">Entre dentro do mundo mágico de Harry Potter</span></p> -->
                    </div>
                </div>



            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>
<section class="container" id="content">
        <div class=" text-center">
            <div class="row">
                <div class="col-sm-12  col-md-12 col-lg-8 col-xl-8">
                    <h2 id="orange-text">Biblioteca Virtual</h2>
                    <p class="intro">Leia os melhores títulos da história da literatura aqui na Biblioteca virtual, aqui
                        disponibilizamos
                        os melhores livros para a sua leitura, nosso catalogo pode não ser tão grande ainda, mas é por
                        pouco tempo,
                        porque você também pode adicionar um livro aqui na Biblioteca é só ir em <a
                            href="/components/cadastros.php?page=1">cadastros</a> e pronto. <br> <br>Aqui temos três principais coleções
                        disponíveis para a sua leitura, começando com a história dos bruxos temos a Coleção <a href="#">
                            Harry Potter</a>, depois indo para o mundo grego com deuses temos a Coleção <a
                            href="#">Pearcy Jackson</a>, e finalizando com as magníficas histórias de terror e suspense
                        com as histórias de <a href="#">Stephen King</a>.
                    </p>
                </div>
                <div class="col-sm-0  col-md-0 col-lg-4 col-xl-4">
                    <img src="/imgs/reading400.png" alt="">

                </div>
            </div>

        </div>
    </section>



    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
        integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
</body>

</html>