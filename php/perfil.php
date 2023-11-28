<?php 
session_start();
include_once("../php_important/connection.php");
if(!isset($_SESSION["userID"])){
    header("Location: error.php");
}
$userData = UserData($_SESSION["userID"]);
$buildData = UserBuilds($_SESSION["userID"]);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../assets/css/templatemo-tale-seo-agency.css">
    <title>Tu perfil</title>
</head>

<body class="d-flex flex-column min-vh-100" style="background-color: #eee;">
    <?php include("../Archives_include/header.php"); ?>
    <div class="container py-5">
        <div class="row">
            <!-- Este es el recuadro de la foto del usuario-->
            <div class="col">
                <div class="card mb-4">
                    <div class="card-body text-center">
                        <img src="../assets/images/defec.jpeg" class="img-fluid rounded-circle" style="width: 150px;">
                        <h5 class="my-3"><?php echo $userData["username"]?></h5>
                    </div>
                </div>
            </div>
        </div>
        <!-- Este es el recuadro de la info del usuario-->
        <div class="row">
            <div class="col-lg">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Nombre de usuario</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0"><?php echo $userData["username"]?></p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Correo</p>
                            </div>
                            <div class="col-lg-9">
                                <p class="text-muted mb-0"><?php echo $userData["email"]?></p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-lg-3 d-flex align-items-center">
                                <p class="mb-0">Contraseña</p>
                            </div>
                            <div class="col-lg-2 d-flex align-items-center">
                                <p class="text-muted mb-0">***************</p>
                            </div>
                            <div class="col-lg-3 d-flex justify-content-start">
                                <div class="col d-flex justify-content-center">
                                    <button class="btn text-white" data-bs-target="#exampleModalToggle" data-bs-toggle="modal" style="background: rgb(85, 0, 227);">Cambiar contraseña</button>
                                </div>
                                <div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="exampleModalToggleLabel">Introduce tu nueva contraseña</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form method="post" action="../php_important/connection.php">
                                                    <div class="mb-3 row">
                                                        <div class="col-sm">
                                                            <input type="password" class="form-control" id="inputPassword" name="newPwd" placeholder="Contraseña" maxlength="20" required>
                                                        </div>
                                                    </div>
                                                    <div class="d-grid gap-2">
                                                        <input type="submit" class="btn btn-outline-success" name="updatePwd" value="Confirmar">
                                                    </div>
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
            <?php
            while($row = $buildData -> fetch_assoc()){
                echo "
                <div class='col-lg-4 d-flex justify-content-center mb-4'>
                    <div class='card' style='width: 2000px;'>
                        <div class='card-body text-center'>
                            <img src='../assets/images/gabinete/".$row["imagen"]."' class='card-img-top rounded'>
                            <h5 class='card-title mt-4 text-black'>".$row["Nombre"]."</h5>
                            <p class='card-text mt-1'>".$row["Descripcion"]."</p>
                        </div>
                        <div class='row'>
                            <div class='col-lg-6 d-flex justify-content-center'>
                                <a href='buildDetails.php?buildID=".$row["ID"]."&buildName=".$row["Nombre"]."' class='btn btn-primary mb-2 mx-2'>Detalles</a>
                            </div>
                            <div class='col-lg-6 d-flex justify-content-center'>
                                <form method='post' action='../php_important/connection.php'>
                                    <button class='btn btn-secondary mb-2 mx-2' name='delBuild' value='".$row["ID"]."'>Eliminar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>";
              }
            ?>
            <!--Siempre mostrar por defecto-->
            <div class="col-lg-4 d-flex justify-content-center mb-4">
                <div class="card" style="width: 2000px;">
                    <!--Cambiar por agregar build-->
                    <a href="armarbuild.php">
                        <div class="card-body text-center">
                            <img src="../assets/images/addBuild.webp" class="rounded">
                            <p class="card-title mt-4 text-black h5 fs-5">Nuevo ensamble</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <?php include("../Archives_include/footer.html");?>
</body>

</html>