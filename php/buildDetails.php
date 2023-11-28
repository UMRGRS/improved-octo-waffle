<?php 
session_start();
include_once("../php_important/connection.php");
$row = GetBuildDetails($_GET["buildID"]);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../assets/css/templatemo-tale-seo-agency.css">
    <title>Detalles</title>
</head>

<body class="d-flex flex-column min-vh-100" style="background-color: #eee;">
    <?php include("../Archives_include/header.php"); ?>
    <div class="container-fluid">
        <div class="container-fluid mt-4">
            <!--Recuadro nombre de la build-->
            <div class="row">
                <div class="col">
                    <div class="card mb-4">
                        <div class="card-body text-center">
                            <h5 class="my-3"><?php echo $_GET["buildName"];?></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Rows componentes-->
        <!--Procesador-->
        <div class="row">
            <div class="col-lg-6">
                <div class="container-fluid mt-4 mb-4">
                    <div class="card">
                        <div class="row g-0">
                            <div class="col-lg-4 d-flex justify-content-center align-items-center">
                                <img src="../assets/images/procesador/<?php echo $row["imgProcesador"];?>" class="img-fluid rounded py-4" style="max-width:200px; max-height:230px">
                            </div>
                            <div class="col-lg-8">
                                <div class="card-body">
                                    <h5 class="card-title fs-2 mb-4">Procesador</h5>
                                    <div class="row">
                                        <div class="col">
                                            <p class="mb-3 fs-5">Modelo</p>
                                        </div>
                                        <div class="col">
                                            <p class="text-muted mb-0"><?php echo $row["modeloProcesador"];?></p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col">
                                            <a href="espec.php?componentID=<?php echo $row["IDProcesador"];?>&componentType=procesador" class="btn btn-primary mb-2">Especificaciones completas</a>
                                        </div>
                                        <div class="col">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Links de compra
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="<?php echo $row["linkProcesador"];?>" target="blanck">Cyberpuerta</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Placa-->
            <div class="col-lg-6">
                <div class="container-fluid mt-4 mb-4">
                    <div class="card">
                        <div class="row g-0">
                            <div class="col-lg-4 d-flex justify-content-center align-items-center">
                                <img src="../assets/images/placa/<?php echo $row["imgPlacaMadre"];?>" class="img-fluid rounded py-4" style="max-width:200px; max-height:230px">
                            </div>
                            <div class="col-lg-8">
                                <div class="card-body">
                                    <h5 class="card-title fs-2 mb-4">Placa madre</h5>
                                    <div class="row">
                                        <div class="col">
                                            <p class="mb-3 fs-5">Modelo</p>
                                        </div>
                                        <div class="col">
                                            <p class="text-muted mb-0"><?php echo $row["modeloPlacaMadre"];?></p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col">
                                            <a href="espec.php?componentID=<?php echo $row["IDPlacaMadre"];?>&componentType=placa" class="btn btn-primary mb-2">Especificaciones completas</a>
                                        </div>
                                        <div class="col">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Links de compra
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="<?php echo $row["linkPlacaMadre"];?>" target="blanck">Cyberpuerta</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--RAM-->
            <div class="col-lg-6">
                <div class="container-fluid mt-4 mb-4">
                    <div class="card">
                        <div class="row g-0">
                            <div class="col-lg-4 d-flex justify-content-center align-items-center">
                                <img src="../assets/images/ram/<?php echo $row["imgRam"];?>" class="img-fluid rounded py-4" style="max-width:200px; max-height:230px">
                            </div>
                            <div class="col-lg-8">
                                <div class="card-body">
                                    <h5 class="card-title fs-2 mb-4">RAM</h5>
                                    <div class="row">
                                        <div class="col">
                                            <p class="mb-3 fs-5">Modelo</p>
                                        </div>
                                        <div class="col">
                                            <p class="text-muted mb-0"><?php echo $row["modeloRam"];?></p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col">
                                            <a href="espec.php?componentID=<?php echo $row["IDRam"];?>&componentType=ram" class="btn btn-primary mb-2">Especificaciones completas</a>
                                        </div>
                                        <div class="col">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Links de compra
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="<?php echo $row["linkRam"];?>" target="blanck">Cyberpuerta</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Disipador opc-->
            <div class="col-lg-6">
                <div class="container-fluid mt-4 mb-4">
                    <div class="card">
                        <div class="row g-0">
                            <div class="col-lg-4 d-flex justify-content-center align-items-center">
                                <img src="../assets/images/disipador/<?php echo $row["imgDisipador"];?>" class="img-fluid rounded py-4" style="max-width:200px; max-height:230px">
                            </div>
                            <div class="col-lg-8">
                                <div class="card-body">
                                    <h5 class="card-title fs-2 mb-4">Disipador</h5>
                                    <div class="row">
                                        <div class="col">
                                            <p class="mb-3 fs-5">Modelo</p>
                                        </div>
                                        <div class="col">
                                            <p class="text-muted mb-0"><?php echo $row["modeloDisipador"];?></p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col">
                                            <a href="espec.php?componentID=<?php echo $row["IDDisipador"];?>&componentType=disipador" class="btn btn-primary mb-2">Especificaciones completas</a>
                                        </div>
                                        <div class="col">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Links de compra
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="<?php echo $row["linkDisipador"];?>" target="blanck">Cyberpuerta</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--SSDM2 opc-->
            <div class="col-lg-6">
                <div class="container-fluid mt-4 mb-4">
                    <div class="card">
                        <div class="row g-0">
                            <div class="col-lg-4 d-flex justify-content-center align-items-center">
                                <img src="../assets/images/ssdm2/<?php echo $row["imgSsdm2"];?>" class="img-fluid rounded py-4" style="max-width:200px; max-height:230px">
                            </div>
                            <div class="col-lg-8">
                                <div class="card-body">
                                    <h5 class="card-title fs-2 mb-4">SSDM2</h5>
                                    <div class="row">
                                        <div class="col">
                                            <p class="mb-3 fs-5">Modelo</p>
                                        </div>
                                        <div class="col">
                                            <p class="text-muted mb-0"><?php echo $row["modeloSsdm2"];?></p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col">
                                            <a href="espec.php?componentID=<?php echo $row["IDSsdm2"];?>&componentType=ssdm2" class="btn btn-primary mb-2">Especificaciones completas</a>
                                        </div>
                                        <div class="col">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Links de compra
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="<?php echo $row["linkSsdm2"];?>" target="blanck">Cyberpuerta</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--SATA opc-->
            <div class="col-lg-6">
                <div class="container-fluid mt-4 mb-4">
                    <div class="card">
                        <div class="row g-0">
                            <div class="col-lg-4 d-flex justify-content-center align-items-center">
                                <img src="../assets/images/almacenamiento sata/<?php echo $row["imgSata"];?>" class="img-fluid rounded py-4" style="max-width:200px; max-height:230px">
                            </div>
                            <div class="col-lg-8">
                                <div class="card-body">
                                    <h5 class="card-title fs-2 mb-4">Alamacenamiento SATA</h5>
                                    <div class="row">
                                        <div class="col">
                                            <p class="mb-3 fs-5">Modelo</p>
                                        </div>
                                        <div class="col">
                                            <p class="text-muted mb-0"><?php echo $row["modeloSata"];?></p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col">
                                            <a href="espec.php?componentID=<?php echo $row["IDSata"];?>&componentType=almacenamiento%20sata" class="btn btn-primary mb-2">Especificaciones completas</a>
                                        </div>
                                        <div class="col">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Links de compra
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="<?php echo $row["linkSata"];?>" target="blanck">Cyberpuerta</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Gabinete-->
            <div class="col-lg-6">
                <div class="container-fluid mt-4 mb-4">
                    <div class="card">
                        <div class="row g-0">
                            <div class="col-lg-4 d-flex justify-content-center align-items-center">
                                <img src="../assets/images/gabinete/<?php echo $row["imgGabinete"];?>" class="img-fluid rounded py-4" style="max-width:200px; max-height:230px">
                            </div>
                            <div class="col-lg-8">
                                <div class="card-body">
                                    <h5 class="card-title fs-2 mb-4">Gabinete</h5>
                                    <div class="row">
                                        <div class="col">
                                            <p class="mb-3 fs-5">Modelo</p>
                                        </div>
                                        <div class="col">
                                            <p class="text-muted mb-0"><?php echo $row["modeloGabinete"];?></p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col">
                                            <a href="espec.php?componentID=<?php echo $row["IDGabinete"];?>&componentType=gabinete" class="btn btn-primary mb-2">Especificaciones completas</a>
                                        </div>
                                        <div class="col">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Links de compra
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="<?php echo $row["linkGabinete"];?>" target="blanck">Cyberpuerta</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Grafica opc-->
            <div class="col-lg-6">
                <div class="container-fluid mt-4 mb-4">
                    <div class="card">
                        <div class="row g-0">
                            <div class="col-lg-4 d-flex justify-content-center align-items-center">
                                <img src="../assets/images/grafica/<?php echo $row["imgGrafica"];?>" class="img-fluid rounded py-4" style="max-width:200px; max-height:230px">
                            </div>
                            <div class="col-lg-8">
                                <div class="card-body">
                                    <h5 class="card-title fs-2 mb-4">Grafica</h5>
                                    <div class="row">
                                        <div class="col">
                                            <p class="mb-3 fs-5">Modelo</p>
                                        </div>
                                        <div class="col">
                                            <p class="text-muted mb-0"><?php echo $row["modeloGrafica"];?></p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col">
                                            <a href="espec.php?componentID=<?php echo $row["IDGrafica"];?>&componentType=grafica" class="btn btn-primary mb-2">Especificaciones completas</a>
                                        </div>
                                        <div class="col">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Links de compra
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="<?php echo $row["linkGrafica"];?>" target="blanck">Cyberpuerta</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Ventilacion-->
            <div class="col-lg-6">
                <div class="container-fluid mt-4 mb-4">
                    <div class="card">
                        <div class="row g-0">
                            <div class="col-lg-4 d-flex justify-content-center align-items-center">
                                <img src="../assets/images/ventilador/<?php echo $row["imgVentilador"];?>" class="img-fluid rounded py-4" style="max-width:200px; max-height:230px">
                            </div>
                            <div class="col-lg-8">
                                <div class="card-body">
                                    <h5 class="card-title fs-2 mb-4">Ventiladores</h5>
                                    <div class="row">
                                        <div class="col">
                                            <p class="mb-3 fs-5">Modelo</p>
                                        </div>
                                        <div class="col">
                                            <p class="text-muted mb-0"><?php echo $row["modeloVentilador"];?></p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col">
                                            <a href="espec.php?componentID=<?php echo $row["IDVentilador"];?>&componentType=ventilador" class="btn btn-primary mb-2">Especificaciones completas</a>
                                        </div>
                                        <div class="col">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Links de compra
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="<?php echo $row["linkVentilador"];?>" target="blanck">Cyberpuerta</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Fuente de poder-->
            <div class="col-lg-6">
                <div class="container-fluid mt-4 mb-4">
                    <div class="card">
                        <div class="row g-0">
                            <div class="col-lg-4 d-flex justify-content-center align-items-center">
                                <img src="../assets/images/fuentes/<?php echo $row["imgFuente"];?>" class="img-fluid rounded py-4" style="max-width:200px; max-height:230px">
                            </div>
                            <div class="col-lg-8">
                                <div class="card-body">
                                    <h5 class="card-title fs-2 mb-4">Fuente de poder</h5>
                                    <div class="row">
                                        <div class="col">
                                            <p class="mb-3 fs-5">Modelo</p>
                                        </div>
                                        <div class="col">
                                            <p class="text-muted mb-0"><?php echo $row["modeloFuente"];?></p>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col">
                                            <a href="espec.php?componentID=<?php echo $row["IDFuente"];?>&componentType=fuentes" class="btn btn-primary mb-2">Especificaciones completas</a>
                                        </div>
                                        <div class="col">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Links de compra
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a class="dropdown-item" href="<?php echo $row["linkFuente"];?>" target="blanck">Cyberpuerta</a></li>
                                                </ul>
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