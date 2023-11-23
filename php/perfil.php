<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tu perfil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>

<body style="background-color: #eee;">
    <?php include("../html/header.html"); ?>
    <div class="container py-5">
        <div class="row">
            <!-- Este es el recuadro de la foto del usuario-->
            <div class="col">
                <div class="card mb-4">
                    <div class="card-body text-center">
                        <img src="../assets/images/defec.jpeg" class="rounded-circle img-fluid" style="width: 150px;">
                        <h5 class="my-3">John Smith</h5>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Este es el recuadro de la info del usuario-->
            <div class="col-lg">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Nombre de usuario</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">owo</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Correo</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">example@example.com</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Contraseña</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">*********</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg">
                <div class="card mb-4">
                    <div class="card-body text-center">
                        <h2 class="mb-0">Tus ensambles</h2>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Aqui estan las tarjetitas-->
            <div class="col-4 d-flex justify-content-center mb-4">
                <div class="card" style="width: 2000px;">
                    <img src="../assets/images/defec.jpeg" class="card-img-top rounded">
                    <div class="card-body text-center">
                        <h5 class="card-title">Nombre de la build</h5>
                        <p class="card-text">Descripcion</p>
                        <a href="#" class="btn btn-primary mt-2">Detalles</a>
                    </div>
                </div>
            </div>
            <div class="col-4 d-flex justify-content-center mb-4">
                <div class="card" style="width: 2000px;">
                    <img src="../assets/images/defec.jpeg" class="card-img-top rounded">
                    <div class="card-body text-center">
                        <h5 class="card-title">Nombre de la build</h5>
                        <p class="card-text">Descripcion</p>
                        <a href="#" class="btn btn-primary mt-2">Detalles</a>
                    </div>
                </div>
            </div>
            <div class="col-4 d-flex justify-content-center mb-4">
                <div class="card" style="width: 2000px;">
                    <img src="../assets/images/defec.jpeg" class="card-img-top rounded">
                    <div class="card-body text-center">
                        <h5 class="card-title">Nombre de la build</h5>
                        <p class="card-text">Descripcion</p>
                        <a href="#" class="btn btn-primary mt-2">Detalles</a>
                    </div>
                </div>
            </div>
            <div class="col-4 d-flex justify-content-center mb-4">
                <div class="card" style="width: 2000px;">
                    <!--Cambiar por agregar build-->
                    <a href="#"><img src="../assets/images/defec.jpeg" class="card-img-top rounded"></a>
                    <div class="card-body text-center">
                        <h5 class="card-title">Crear nueva build</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include("../html/footer.html"); ?>
</body>

</html>