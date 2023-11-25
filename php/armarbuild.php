<?php session_start();?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/templatemo-tale-seo-agency.css">
</head>
<?php   
include("header.html");
?>

<body>
    <div class="container-fluid mt-5">
        <div class="accordion" id="accordionExample">
            <!--inicio del item del acordeon general-->
            <div class="accordion-item">
                <!--inicio del-->
                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Placas base
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <!-- inico de la zona de las cards-->
                        <div class="row row-cols-1 row-cols-md-3 g-4">
                            <!--inicio de card individual-->
                            <div class="col">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Placa base</h5>
                                        <p class="card-text">modelo: </p>
                                        <a href="#" class="btn btn-primary">Agregar</a>
                                        <a href="espec.php" class="btn btn-primary">Ver especificaciones</a>
                                    </div>
                                </div>
                            </div>
                            <!--final de la card-->
                        </div>
                        <!-- final de la zona de las cards-->
                    </div>
                </div>



                <!--segundo acordeon-->
                <h2 class="accordion-header" id="headingTwo">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        procesadores
                    </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse show" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <!-- inico de la card-->
                        <div class="row row-cols-1 row-cols-md-3 g-4">
                            <!--inicio de card individual-->
                            <div class="col">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Procesadores</h5>
                                        <p class="card-text">Modelo: </p>
                                        <a href="#" class="btn btn-primary">Agregar</a>
                                        <a href="#" class="btn btn-primary">Ver especificaciones</a>
                                    </div>
                                </div>
                            </div>
                            <!--final de la card-->
                        </div>
                        <!-- final de la zona de las cards-->
                    </div>
                </div>

                <h2 class="accordion-header" id="headingTre">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTre" aria-expanded="false" aria-controls="collapseTre">
                        Memoria ram
                    </button>
                </h2>
                <div id="collapseTre" class="accordion-collapse collapse show" aria-labelledby="headingTre" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <!-- inico de la zona de las cards-->
                        <div class="row row-cols-1 row-cols-md-3 g-4">
                            <!--inicio de card individual-->
                            <div class="col">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Memoria ram</h5>
                                        <p class="card-text">modelo: </p>
                                        <a href="#" class="btn btn-primary">Agregar</a>
                                        <a href="#" class="btn btn-primary">Ver especificaciones</a>
                                    </div>
                                </div>
                            </div>
                            <!--final de la card-->
                        </div>
                        <!-- final de la zona de las cards-->
                    </div>
                </div>

                <h2 class="accordion-header" id="heading4">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse4" aria-expanded=" false" aria-controls="collapse4">
                        Fuentes de alimentacion
                    </button>
                </h2>
                <div id="collapse4" class="accordion-collapse collapse show" aria-labelledby="heading4" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <!-- inico de la zona de las cards-->
                        <div class="row row-cols-1 row-cols-md-3 g-4">
                            <!--inicio de card individual-->
                            <div class="col">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Fuentes </h5>
                                        <p class="card-text">modelo: </p>
                                        <a href="#" class="btn btn-primary">Agregar</a>
                                        <a href="#" class="btn btn-primary">Ver especificaciones</a>
                                    </div>
                                </div>
                            </div>
                            <!--final de la card-->
                        </div>
                        <!-- final de la zona de las cards-->
                    </div>
                </div>

                <h2 class="accordion-header" id="heading5">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse5" aria-expanded=" false" aria-controls="collapse5">
                        Memorias SSD
                    </button>
                </h2>
                <div id="collapse5" class="accordion-collapse collapse show" aria-labelledby="heading5" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <!-- inico de la zona de las cards-->
                        <div class="row row-cols-1 row-cols-md-3 g-4">
                            <!--inicio de card individual-->
                            <div class="col">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">SSD</h5>
                                        <p class="card-text">modelo: </p>
                                        <p class="card-text">almacenamiento: </p>
                                        <a href="#" class="btn btn-primary">Agregar</a>
                                        <a href="#" class="btn btn-primary">Ver especificaciones</a>
                                    </div>
                                </div>
                            </div>
                            <!--final de la card-->
                        </div>
                        <!-- final de la zona de las cards-->
                    </div>
                </div>

                <h2 class="accordion-header" id="heading6">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse6" aria-expanded=" false" aria-controls="collapse6">
                        Targeta grafica
                    </button>
                </h2>
                <div id="collapse6" class="accordion-collapse collapse show" aria-labelledby="heading6" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <!-- inico de la zona de las cards-->
                        <div class="row row-cols-1 row-cols-md-3 g-4">
                            <!--inicio de card individual-->
                            <div class="col">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Targeta grafica </h5>
                                        <p class="card-text">modelo: </p>
                                        <a href="#" class="btn btn-primary">Agregar</a>
                                        <a href="#" class="btn btn-primary">Ver especificaciones</a>
                                    </div>
                                </div>
                            </div>
                            <!--final de la card-->
                        </div>
                        <!-- final de la zona de las cards-->
                    </div>
                </div>

                <h2 class="accordion-header" id="heading7">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse7" aria-expanded=" false" aria-controls="collapse7">
                        Gabiente
                    </button>
                </h2>
                <div id="collapse7" class="accordion-collapse collapse show" aria-labelledby="heading7" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <!-- inico de la zona de las cards-->
                        <div class="row row-cols-1 row-cols-md-3 g-4">
                            <!--inicio de card individual-->
                            <div class="col">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Gabinete </h5>
                                        <p class="card-text">modelo: </p>
                                        <a href="#" class="btn btn-primary">Agregar</a>
                                        <a href="#" class="btn btn-primary">Ver especificaciones</a>
                                    </div>
                                </div>
                            </div>
                            <!--final de la card-->
                        </div>
                        <!-- final de la zona de las cards-->
                    </div>
                </div>

                <h2 class="accordion-header" id="heading8">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse8" aria-expanded=" false" aria-controls="collapse8">
                        Dicipadores
                    </button>
                </h2>
                <div id="collapse8" class="accordion-collapse collapse show" aria-labelledby="heading8" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <!-- inico de la zona de las cards-->
                        <div class="row row-cols-1 row-cols-md-3 g-4">
                            <!--inicio de card individual-->
                            <div class="col">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Disipador </h5>
                                        <p class="card-text">modelo: </p>
                                        <a href="#" class="btn btn-primary">Agregar</a>
                                        <a href="#" class="btn btn-primary">Ver especificaciones</a>
                                    </div>
                                </div>
                            </div>
                            <!--final de la card-->
                        </div>
                        <!-- final de la zona de las cards-->
                    </div>
                </div>

                <h2 class="accordion-header" id="heading9">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse9" aria-expanded=" false" aria-controls="collapse9">
                        Ventiladores
                    </button>
                </h2>
                <div id="collapse9" class="accordion-collapse collapse show" aria-labelledby="heading9" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <!-- inico de la zona de las cards-->
                        <div class="row row-cols-1 row-cols-md-3 g-4">
                            <!--inicio de card individual-->
                            <div class="col">
                                <div class="card">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Ventiladores </h5>
                                        <p class="card-text">modelo: </p>
                                        <a href="#" class="btn btn-primary">Agregar</a>
                                        <a href="#" class="btn btn-primary">Ver especificaciones</a>
                                    </div>
                                </div>
                            </div>
                            <!--final de la card-->
                        </div>
                        <!-- final de la zona de las cards-->
                    </div>
                </div>
            </div>
        </div>
        <!--final de acordeon-->
    </div>
</body>
<?php include("footer.html"); ?>

</html>