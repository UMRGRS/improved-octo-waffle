<?php
include("header.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<h1>intento 3</h1>
<div class="accordion" id="accordionExample">
    <!--inicio del item del acordeon general-->
  <div class="accordion-item">
         <!--inicio del-->
        <h2 class="accordion-header" id="headingOne">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                   placas base
            </button>
        </h2>
        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <!-- inico de la sona de las cards-->
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <!--inicio de card individual-->
                    <div class="col">
                        <div class="card">
                        <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Placa base</h5>
                                <p class="card-text">modelo: </p>
                                <a href="#" class="btn btn-primary">agregar</a>
                                <a href="#" class="btn btn-primary">ver especificaciones</a>
                            </div>
                        </div>
                    </div>
                    <!--final de la card-->
                </div>
                <!-- final de la sona de las cards-->
            </div>
        </div>

        <!--segundo acordeon-->
        <h2 class="accordion-header" id="headingTwo">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                procesadores
            </button>
        </h2>
        <div id="collapseTwo" class="accordion-collapse collapse show" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <!-- inico de la card-->
                            <div class="card" style="width: 18rem;">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Procesadores</h5>
                                    <p class="card-text">modelo: </p>
                                    <a href="#" class="btn btn-primary">agregar</a>
                                    <a href="#" class="btn btn-primary">ver especificaciones</a>
                                </div>
                            </div>
            </div>
        </div>
        
        <h2 class="accordion-header" id="headingTre">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTre" aria-expanded="true" aria-controls="collapseTre">
                   Memoria ram
            </button>
        </h2>
        <div id="collapseTre" class="accordion-collapse collapse show" aria-labelledby="headingTre" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <!-- inico de la sona de las cards-->
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <!--inicio de card individual-->
                    <div class="col">
                        <div class="card">
                        <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Memoria ram</h5>
                                <p class="card-text">modelo: </p>
                                <a href="#" class="btn btn-primary">agregar</a>
                                <a href="#" class="btn btn-primary">ver especificaciones</a>
                            </div>
                        </div>
                    </div>
                    <!--final de la card-->
                </div>
                <!-- final de la sona de las cards-->
            </div>
        </div>

        <h2 class="accordion-header" id="heading4">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse4" aria-expanded="true" aria-controls="collapse4">
                   Fuentes de alimentacion 
            </button>
        </h2>
        <div id="collapse4" class="accordion-collapse collapse show" aria-labelledby="heading4" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <!-- inico de la sona de las cards-->
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <!--inicio de card individual-->
                    <div class="col">
                        <div class="card">
                        <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Fuentes </h5>
                                <p class="card-text">modelo: </p>
                                <a href="#" class="btn btn-primary">agregar</a>
                                <a href="#" class="btn btn-primary">ver especificaciones</a>
                            </div>
                        </div>
                    </div>
                    <!--final de la card-->
                </div>
                <!-- final de la sona de las cards-->
            </div>
        </div>

        <h2 class="accordion-header" id="heading5">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse5" aria-expanded="true" aria-controls="collapse5">
                   Memorias SSD
            </button>
        </h2>
        <div id="collapse5" class="accordion-collapse collapse show" aria-labelledby="heading5" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <!-- inico de la sona de las cards-->
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <!--inicio de card individual-->
                    <div class="col">
                        <div class="card">
                        <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">SSD</h5>
                                <p class="card-text">modelo: </p>
                                <p class="card-text">almacenamiento: </p>
                                <a href="#" class="btn btn-primary">agregar</a>
                                <a href="#" class="btn btn-primary">ver especificaciones</a>
                            </div>
                        </div>
                    </div>
                    <!--final de la card-->
                </div>
                <!-- final de la sona de las cards-->
            </div>
        </div>

        <h2 class="accordion-header" id="heading6">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse6" aria-expanded="true" aria-controls="collapse6">
                   Targeta grafica
            </button>
        </h2>
        <div id="collapse6" class="accordion-collapse collapse show" aria-labelledby="heading6" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <!-- inico de la sona de las cards-->
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <!--inicio de card individual-->
                    <div class="col">
                        <div class="card">
                        <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Targeta grafica </h5>
                                <p class="card-text">modelo: </p>
                                <a href="#" class="btn btn-primary">agregar</a>
                                <a href="#" class="btn btn-primary">ver especificaciones</a>
                            </div>
                        </div>
                    </div>
                    <!--final de la card-->
                </div>
                <!-- final de la sona de las cards-->
            </div>
        </div>

        <h2 class="accordion-header" id="heading7">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse7" aria-expanded="true" aria-controls="collapse7">
                   Gabiente
            </button>
        </h2>
        <div id="collapse7" class="accordion-collapse collapse show" aria-labelledby="heading7" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <!-- inico de la sona de las cards-->
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <!--inicio de card individual-->
                    <div class="col">
                        <div class="card">
                        <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Gabinete </h5>
                                <p class="card-text">modelo: </p>
                                <a href="#" class="btn btn-primary">agregar</a>
                                <a href="#" class="btn btn-primary">ver especificaciones</a>
                            </div>
                        </div>
                    </div>
                    <!--final de la card-->
                </div>
                <!-- final de la sona de las cards-->
            </div>
        </div>

        <h2 class="accordion-header" id="heading8">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse8" aria-expanded="true" aria-controls="collapse8">
                   Dicipadores
            </button>
        </h2>
        <div id="collapse8" class="accordion-collapse collapse show" aria-labelledby="heading8" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <!-- inico de la sona de las cards-->
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <!--inicio de card individual-->
                    <div class="col">
                        <div class="card">
                        <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Disipador </h5>
                                <p class="card-text">modelo: </p>
                                <a href="#" class="btn btn-primary">agregar</a>
                                <a href="#" class="btn btn-primary">ver especificaciones</a>
                            </div>
                        </div>
                    </div>
                    <!--final de la card-->
                </div>
                <!-- final de la sona de las cards-->
            </div>
        </div>

        <h2 class="accordion-header" id="heading9">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse9" aria-expanded="true" aria-controls="collapse9">
                   Ventiladores
            </button>
        </h2>
        <div id="collapse9" class="accordion-collapse collapse show" aria-labelledby="heading9" data-bs-parent="#accordionExample">
            <div class="accordion-body">
                <!-- inico de la sona de las cards-->
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <!--inicio de card individual-->
                    <div class="col">
                        <div class="card">
                        <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Ventiladores </h5>
                                <p class="card-text">modelo: </p>
                                <a href="#" class="btn btn-primary">agregar</a>
                                <a href="#" class="btn btn-primary">ver especificaciones</a>
                            </div>
                        </div>
                    </div>
                    <!--final de la card-->
                </div>
                <!-- final de la sona de las cards-->
            </div>
        </div>

  </div>

  
</div><!--final de acordeon-->
<h1>final de la pagina</h1>
</body>
<?php include("footer.php"); ?>
</html>