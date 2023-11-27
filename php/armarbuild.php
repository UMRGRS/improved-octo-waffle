<?php session_start();?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../assets/css/templatemo-tale-seo-agency.css">
    <title>Nueva build</title>
</head>

<body class="d-flex flex-column min-vh-100">
    <?php include("../Archives_include/header.php"); ?>
    <div class="container-fluid mt-4">
        <div class="row mx-0 mb-4">
            <div class="card">
                <div class="card-body text-center">
                    <h4 class="mb-0">Configurador de PC</h4>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-9 mb-3">
                <div class="accordion" id="accordionExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                Procesador
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <div class="row">
                                    <!--Spawnear con un while-->
                                    <div class="col-lg-6">
                                        <div class="container-fluid mt-4 mb-4">
                                            <div class="card">
                                                <div class="row g-0">
                                                    <div class="col-lg-4 d-flex justify-content-center align-items-center">
                                                        <img src="../assets/images/defec.jpeg" class="img-fluid rounded" style="max-width:200px; max-height:230px">
                                                    </div>
                                                    <div class="col-lg-8">
                                                        <div class="card-body">
                                                            <h5 class="card-title fs-2 mb-4">Modelo_despligue</h5>
                                                            <div class="row">
                                                                <div class="col">
                                                                    <p class="mb-3 fs-5">Marca</p>
                                                                </div>
                                                                <div class="col">
                                                                    <p class="text-muted mb-0">marca_despligue</p>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="row">
                                                                <div class="col-lg-8">
                                                                    <a href="espec.php?componentID=1&componentType=1" class="btn btn-primary mb-2">Especificaciones completas</a>
                                                                </div>
                                                                <div class="col-lg-2">
                                                                    <form method="post" action="">
                                                                        <input type="submit" name="agregar" value="Agregar" class="btn btn-secondary mb-2">
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Placa madre
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">

                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                RAM
                            </button>
                        </h2>
                        <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">

                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
                                Disipador
                            </button>
                        </h2>
                        <div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">

                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseThree">
                                SSDM2
                            </button>
                        </h2>
                        <div id="collapseFive" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">

                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseThree">
                                Almacenamiento SATA
                            </button>
                        </h2>
                        <div id="collapseSix" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">

                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseThree">
                                Gabinete
                            </button>
                        </h2>
                        <div id="collapseSeven" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">

                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight" aria-expanded="false" aria-controls="collapseThree">
                                Tarjeta grafica
                            </button>
                        </h2>
                        <div id="collapseEight" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">

                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNine" aria-expanded="false" aria-controls="collapseThree">
                                Ventiladores
                            </button>
                        </h2>
                        <div id="collapseNine" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">

                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTen" aria-expanded="false" aria-controls="collapseThree">
                                Fuente de poder
                            </button>
                        </h2>
                        <div id="collapseTen" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <!--Columna componentes agregados-->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card mb-2">
                            <div class="card-body text-center">
                                <h5 class="mb-0">Componentes seleccionados</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card mb-2">
                            <div class="row">
                                <div class="col-lg-4 d-flex justify-content-center align-items-center">
                                    <img src="../assets/images/defec.jpeg" class="img-fluid rounded ms-4 mt-2" style="max-width:200px; max-height:230px">
                                </div>
                                <div class="col-lg-8">
                                    <div class="card-body">
                                        <h5 class="card-title fs-2 mb-4">Procesador</h5>
                                        <div class="row">
                                            <div class="col">
                                                <p class="mb-3 fs-5">Modelo</p>
                                            </div>
                                            <div class="col">
                                                <p class="text-muted mb-0">modelo_despligue</p>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-lg-7">
                                                <a href="espec.php?componentID=1&componentType=1" class="btn btn-primary mb-2">Especificaciones completas</a>
                                            </div>
                                            <div class="col-lg-2">
                                                <form method="post" action="">
                                                    <input type="submit" name="agregar" value="Eliminar" class="btn btn-secondary mb-2">
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include("../Archives_include/footer.html");?>
</body>

</html>