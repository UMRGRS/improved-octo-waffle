<?php 
session_start();
include_once("../php_important/connection.php");
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
                                <?php XorR(isset($_SESSION['buildArray']['procesador']))?>
                                <p class="fw-bold fs-5">Procesador</p>
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <div class="row">
                                    <?php
                                    if(isset($_SESSION['buildArray']['placa'])){
                                        $dataPro = GetCompatible("procesador","placa",$_SESSION['buildArray']['placa'],2);
                                    }else{
                                        $dataPro = GetComponents("procesador");
                                    }
                                        while ($rowPro = $dataPro -> fetch_assoc()) {
                                        echo"
                                        <div class='col-lg-6'>
                                            <div class='container-fluid mt-4 mb-4'>
                                                <div class='card'>
                                                    <div class='row g-0'>
                                                        <div class='col-lg-4 d-flex justify-content-center align-items-center'>
                                                            <img src='../assets/images/procesador/".$rowPro["imagen"]."' class='img-fluid rounded' style='max-width:200px; max-height:230px'>
                                                        </div>
                                                        <div class='col-lg-8'>
                                                            <div class='card-body'>
                                                                <h5 class='card-title fs-2 mb-4'>".$rowPro["modelo"]."</h5>
                                                                <div class='row'>
                                                                    <div class='col'>
                                                                        <p class='mb-3 fs-5'>Marca</p>
                                                                    </div>
                                                                    <div class='col'>
                                                                        <p class='text-muted mb-0'>".$rowPro["marca"]."</p>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                                <div class='row'>
                                                                    <div class='col-lg-6'>
                                                                        <a href='espec.php?componentID=".$rowPro["ID"]."&componentType=procesador' class='btn btn-primary mb-2'>Especificaciones completas</a>
                                                                    </div>
                                                                    <div class='col-lg-6'>
                                                                        <form method='post' action='../php_important/assignBuildArray.php'>
                                                                            <button name='array[procesador]' value='".$rowPro["ID"]."' class='btn btn-secondary mb-2'>Agregar</button>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        ";
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                <?php XorR(isset($_SESSION['buildArray']['placa']))?>
                                <p class="fw-bold fs-5">Placa madre</p>
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <div class="row">
                                    <?php
                                    if(isset($_SESSION['buildArray']['procesador'])){
                                        $dataMother = GetCompatible("procesador","placa",$_SESSION['buildArray']['procesador'],1);
                                    }else{
                                        $dataMother = GetComponents("placa");
                                    }
                                        while ($rowMother = $dataMother -> fetch_assoc()) {
                                        echo"
                                        <div class='col-lg-6'>
                                            <div class='container-fluid mt-4 mb-4'>
                                                <div class='card'>
                                                    <div class='row g-0'>
                                                        <div class='col-lg-4 d-flex justify-content-center align-items-center'>
                                                            <img src='../assets/images/placa/".$rowMother["imagen"]."' class='img-fluid rounded' style='max-width:200px; max-height:230px'>
                                                        </div>
                                                        <div class='col-lg-8'>
                                                            <div class='card-body'>
                                                                <h5 class='card-title fs-2 mb-4'>".$rowMother["modelo"]."</h5>
                                                                <div class='row'>
                                                                    <div class='col'>
                                                                        <p class='mb-3 fs-5'>Marca</p>
                                                                    </div>
                                                                    <div class='col'>
                                                                        <p class='text-muted mb-0'>".$rowMother["marca"]."</p>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                                <div class='row'>
                                                                    <div class='col-lg-6'>
                                                                        <a href='espec.php?componentID=".$rowMother["ID"]."&componentType=placa' class='btn btn-primary mb-2'>Especificaciones completas</a>
                                                                    </div>
                                                                    <div class='col-lg-6'>
                                                                        <form method='post' action='../php_important/assignBuildArray.php'>
                                                                            <button name='array[placa]' value='".$rowMother["ID"]."' class='btn btn-secondary mb-2'>Agregar</button>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        ";
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                <?php XorR(isset($_SESSION['buildArray']['ram']))?>
                                <p class="fw-bold fs-5">RAM</p>
                                <p class="text-danger ms-5"><?php if(!isset($_SESSION['buildArray']['procesador'])){echo "Las piezas de esta seccion podrian no ser compatibles, selecciona un procesador para comenzar";}?></p>
                            </button>
                        </h2>
                        <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <div class="row">
                                    <?php
                                    if(isset($_SESSION['buildArray']['procesador'])){
                                        $dataRam = GetCompatible("procesador","ram",$_SESSION['buildArray']['procesador'],1);
                                    }else{
                                        $dataRam = GetComponents("ram");
                                    }
                                        while ($rowRam = $dataRam -> fetch_assoc()) {
                                        echo"
                                        <div class='col-lg-6'>
                                            <div class='container-fluid mt-4 mb-4'>
                                                <div class='card'>
                                                    <div class='row g-0'>
                                                        <div class='col-lg-4 d-flex justify-content-center align-items-center'>
                                                            <img src='../assets/images/ram/".$rowRam["imagen"]."' class='img-fluid rounded' style='max-width:200px; max-height:230px'>
                                                        </div>
                                                        <div class='col-lg-8'>
                                                            <div class='card-body'>
                                                                <h5 class='card-title fs-2 mb-4'>".$rowRam["modelo"]."</h5>
                                                                <div class='row'>
                                                                    <div class='col'>
                                                                        <p class='mb-3 fs-5'>Marca</p>
                                                                    </div>
                                                                    <div class='col'>
                                                                        <p class='text-muted mb-0'>".$rowRam["marca"]."</p>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                                <div class='row'>
                                                                    <div class='col-lg-6'>
                                                                        <a href='espec.php?componentID=".$rowRam["ID"]."&componentType=ram' class='btn btn-primary mb-2'>Especificaciones completas</a>
                                                                    </div>
                                                                    <div class='col-lg-6'>
                                                                        <form method='post' action='../php_important/assignBuildArray.php'>
                                                                            <button name='array[ram]' value='".$rowRam["ID"]."' class='btn btn-secondary mb-2'>Agregar</button>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        ";
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
                                <?php XorR(isset($_SESSION['buildArray']['disipador']))?>
                                <p class="fw-bold fs-5">Disipador</p>
                                <p class="text-danger ms-5"><?php if(!isset($_SESSION['buildArray']['placa'])){echo "Las piezas de esta seccion podrian no ser compatibles, selecciona una placa madre para comenzar";}?></p>
                            </button>
                        </h2>
                        <div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <div class="row">
                                    <?php
                                    if(isset($_SESSION['buildArray']['placa'])){
                                        $dataDisipador = GetCompatible("placa","disipador",$_SESSION['buildArray']['placa'],1);
                                    }else{
                                        $dataDisipador = GetComponents("disipador");
                                    }
                                        while ($rowDisipador = $dataDisipador -> fetch_assoc()) {
                                        echo"
                                        <div class='col-lg-6'>
                                            <div class='container-fluid mt-4 mb-4'>
                                                <div class='card'>
                                                    <div class='row g-0'>
                                                        <div class='col-lg-4 d-flex justify-content-center align-items-center'>
                                                            <img src='../assets/images/disipador/".$rowDisipador["imagen"]."' class='img-fluid rounded' style='max-width:200px; max-height:230px'>
                                                        </div>
                                                        <div class='col-lg-8'>
                                                            <div class='card-body'>
                                                                <h5 class='card-title fs-2 mb-4'>".$rowDisipador["modelo"]."</h5>
                                                                <div class='row'>
                                                                    <div class='col'>
                                                                        <p class='mb-3 fs-5'>Marca</p>
                                                                    </div>
                                                                    <div class='col'>
                                                                        <p class='text-muted mb-0'>".$rowDisipador["marca"]."</p>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                                <div class='row'>
                                                                    <div class='col-lg-6'>
                                                                        <a href='espec.php?componentID=".$rowDisipador["ID"]."&componentType=disipador' class='btn btn-primary mb-2'>Especificaciones completas</a>
                                                                    </div>
                                                                    <div class='col-lg-6'>
                                                                        <form method='post' action='../php_important/assignBuildArray.php'>
                                                                            <button name='array[disipador]' value='".$rowDisipador["ID"]."' class='btn btn-secondary mb-2'>Agregar</button>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        ";
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseThree">
                                <?php XorR(isset($_SESSION['buildArray']['ssdm2']))?>
                                <p class="fw-bold fs-5">SSDM2</p>
                                <p class="text-danger ms-5"><?php if(!isset($_SESSION['buildArray']['placa'])){echo "Las piezas de esta seccion podrian no ser compatibles, selecciona una placa madre para comenzar";}?></p>
                            </button>
                        </h2>
                        <div id="collapseFive" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <div class="row">
                                    <?php
                                    if(isset($_SESSION['buildArray']['placa'])){
                                        $dataSsdm2 = GetCompatible("placa","ssdm2",$_SESSION['buildArray']['placa'],1);
                                    }else{
                                        $dataSsdm2 = GetComponents("ssdm2");
                                    }
                                        while ($rowSsdm2 = $dataSsdm2 -> fetch_assoc()) {
                                        echo"
                                        <div class='col-lg-6'>
                                            <div class='container-fluid mt-4 mb-4'>
                                                <div class='card'>
                                                    <div class='row g-0'>
                                                        <div class='col-lg-4 d-flex justify-content-center align-items-center'>
                                                            <img src='../assets/images/ssdm2/".$rowSsdm2["imagen"]."' class='img-fluid rounded' style='max-width:200px; max-height:230px'>
                                                        </div>
                                                        <div class='col-lg-8'>
                                                            <div class='card-body'>
                                                                <h5 class='card-title fs-2 mb-4'>".$rowSsdm2["modelo"]."</h5>
                                                                <div class='row'>
                                                                    <div class='col'>
                                                                        <p class='mb-3 fs-5'>Marca</p>
                                                                    </div>
                                                                    <div class='col'>
                                                                        <p class='text-muted mb-0'>".$rowSsdm2["marca"]."</p>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                                <div class='row'>
                                                                    <div class='col-lg-6'>
                                                                        <a href='espec.php?componentID=".$rowSsdm2["ID"]."&componentType=ssdm2' class='btn btn-primary mb-2'>Especificaciones completas</a>
                                                                    </div>
                                                                    <div class='col-lg-6'>
                                                                        <form method='post' action='../php_important/assignBuildArray.php'>
                                                                            <button name='array[ssdm2]' value='".$rowSsdm2["ID"]."' class='btn btn-secondary mb-2'>Agregar</button>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        ";
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseThree">
                                <?php XorR(isset($_SESSION['buildArray']['almacenamiento sata']))?>
                                <p class="fw-bold fs-5">Almacenamiento SATA</p>
                            </button>
                        </h2>
                        <div id="collapseSix" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <div class="row">
                                    <?php
                                    $dataSata = GetComponents("almacenamiento sata");
                                        while ($rowSata = $dataSata -> fetch_assoc()) {
                                        echo"
                                        <div class='col-lg-6'>
                                            <div class='container-fluid mt-4 mb-4'>
                                                <div class='card'>
                                                    <div class='row g-0'>
                                                        <div class='col-lg-4 d-flex justify-content-center align-items-center'>
                                                            <img src='../assets/images/almacenamiento sata/".$rowSata["imagen"]."' class='img-fluid rounded' style='max-width:200px; max-height:230px'>
                                                        </div>
                                                        <div class='col-lg-8'>
                                                            <div class='card-body'>
                                                                <h5 class='card-title fs-2 mb-4'>".$rowSata["modelo"]."</h5>
                                                                <div class='row'>
                                                                    <div class='col'>
                                                                        <p class='mb-3 fs-5'>Marca</p>
                                                                    </div>
                                                                    <div class='col'>
                                                                        <p class='text-muted mb-0'>".$rowSata["marca"]."</p>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                                <div class='row'>
                                                                    <div class='col-lg-6'>
                                                                        <a href='espec.php?componentID=".$rowSata["ID"]."&componentType=almacenamiento%20sata' class='btn btn-primary mb-2'>Especificaciones completas</a>
                                                                    </div>
                                                                    <div class='col-lg-6'>
                                                                        <form method='post' action='../php_important/assignBuildArray.php'>
                                                                            <button name='array[almacenamiento sata]' value='".$rowSata["ID"]."' class='btn btn-secondary mb-2'>Agregar</button>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        ";
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseThree">
                                <?php XorR(isset($_SESSION['buildArray']['gabinete']))?>
                                <p class="fw-bold fs-5">Gabinete</p>
                                <p class="text-danger ms-5"><?php if(!isset($_SESSION['buildArray']['placa'])){echo "Las piezas de esta seccion podrian no ser compatibles, selecciona una placa madre para comenzar";}?></p>
                            </button>
                        </h2>
                        <div id="collapseSeven" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <div class="row">
                                    <?php
                                    if(isset($_SESSION['buildArray']['placa'])){
                                        $dataGabinete = GetCompatible("placa","gabinete",$_SESSION['buildArray']['placa'],1);
                                    }else{
                                        $dataGabinete = GetComponents("gabinete");
                                    }
                                        while ($rowGabinete = $dataGabinete -> fetch_assoc()) {
                                        echo"
                                        <div class='col-lg-6'>
                                            <div class='container-fluid mt-4 mb-4'>
                                                <div class='card'>
                                                    <div class='row g-0'>
                                                        <div class='col-lg-4 d-flex justify-content-center align-items-center'>
                                                            <img src='../assets/images/gabinete/".$rowGabinete["imagen"]."' class='img-fluid rounded' style='max-width:200px; max-height:230px'>
                                                        </div>
                                                        <div class='col-lg-8'>
                                                            <div class='card-body'>
                                                                <h5 class='card-title fs-2 mb-4'>".$rowGabinete["modelo"]."</h5>
                                                                <div class='row'>
                                                                    <div class='col'>
                                                                        <p class='mb-3 fs-5'>Marca</p>
                                                                    </div>
                                                                    <div class='col'>
                                                                        <p class='text-muted mb-0'>".$rowGabinete["marca"]."</p>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                                <div class='row'>
                                                                    <div class='col-lg-6'>
                                                                        <a href='espec.php?componentID=".$rowGabinete["ID"]."&componentType=gabinete' class='btn btn-primary mb-2'>Especificaciones completas</a>
                                                                    </div>
                                                                    <div class='col-lg-6'>
                                                                        <form method='post' action='../php_important/assignBuildArray.php'>
                                                                            <button name='array[gabinete]' value='".$rowGabinete["ID"]."' class='btn btn-secondary mb-2'>Agregar</button>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        ";
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight" aria-expanded="false" aria-controls="collapseThree">
                                <?php XorR(isset($_SESSION['buildArray']['grafica']))?>
                                <p class="fw-bold fs-5">Tarjerta grafica</p>
                                <p class="text-danger ms-5"><?php if(!isset($_SESSION['buildArray']['gabinete']) || !isset($_SESSION['buildArray']['procesador'])){echo "Las piezas de esta seccion podrian no ser compatibles, selecciona un gabinete y procesador para comenzar";}?></p>
                            </button>
                        </h2>
                        <div id="collapseEight" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <div class="row">
                                    <?php
                                    if(isset($_SESSION['buildArray']['gabinete']) && isset($_SESSION['buildArray']['procesador'])){
                                        $dataGrafica = GetCompatible("gabinete","grafica",$_SESSION['buildArray']['gabinete'],1);
                                    }else{
                                        $dataGrafica = GetComponents("grafica");
                                    }
                                        while ($rowGrafica = $dataGrafica -> fetch_assoc()) {
                                        echo"
                                        <div class='col-lg-6'>
                                            <div class='container-fluid mt-4 mb-4'>
                                                <div class='card'>
                                                    <div class='row g-0'>
                                                        <div class='col-lg-4 d-flex justify-content-center align-items-center'>
                                                            <img src='../assets/images/grafica/".$rowGrafica["imagen"]."' class='img-fluid rounded' style='max-width:200px; max-height:230px'>
                                                        </div>
                                                        <div class='col-lg-8'>
                                                            <div class='card-body'>
                                                                <h5 class='card-title fs-2 mb-4'>".$rowGrafica["modelo"]."</h5>
                                                                <div class='row'>
                                                                    <div class='col'>
                                                                        <p class='mb-3 fs-5'>Marca</p>
                                                                    </div>
                                                                    <div class='col'>
                                                                        <p class='text-muted mb-0'>".$rowGrafica["marca"]."</p>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                                <div class='row'>
                                                                    <div class='col-lg-6'>
                                                                        <a href='espec.php?componentID=".$rowGrafica["ID"]."&componentType=grafica' class='btn btn-primary mb-2'>Especificaciones completas</a>
                                                                    </div>
                                                                    <div class='col-lg-6'>
                                                                        <form method='post' action='../php_important/assignBuildArray.php'>
                                                                            <button name='array[grafica]' value='".$rowGrafica["ID"]."' class='btn btn-secondary mb-2'>Agregar</button>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        ";
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNine" aria-expanded="false" aria-controls="collapseThree">
                                <?php XorR(isset($_SESSION['buildArray']['ventilador']))?>
                                <p class="fw-bold fs-5">Ventiladores</p>
                                <p class="text-danger ms-5"><?php if(!isset($_SESSION['buildArray']['gabinete'])){echo "Las piezas de esta seccion podrian no ser compatibles, selecciona un gabinete para comenzar";}?></p>
                            </button>
                        </h2>
                        <div id="collapseNine" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <div class="row">
                                    <?php
                                    if(isset($_SESSION['buildArray']['gabinete'])){
                                        $dataVentilador = GetCompatible("gabinete","ventilador",$_SESSION['buildArray']['gabinete'],1);
                                    }else{
                                        $dataVentilador = GetComponents("ventilador");
                                    }
                                        while ($rowVentilador = $dataVentilador -> fetch_assoc()) {
                                        echo"
                                        <div class='col-lg-6'>
                                            <div class='container-fluid mt-4 mb-4'>
                                                <div class='card'>
                                                    <div class='row g-0'>
                                                        <div class='col-lg-4 d-flex justify-content-center align-items-center'>
                                                            <img src='../assets/images/ventilador/".$rowVentilador["imagen"]."' class='img-fluid rounded' style='max-width:200px; max-height:230px'>
                                                        </div>
                                                        <div class='col-lg-8'>
                                                            <div class='card-body'>
                                                                <h5 class='card-title fs-2 mb-4'>".$rowVentilador["modelo"]."</h5>
                                                                <div class='row'>
                                                                    <div class='col'>
                                                                        <p class='mb-3 fs-5'>Marca</p>
                                                                    </div>
                                                                    <div class='col'>
                                                                        <p class='text-muted mb-0'>".$rowVentilador["marca"]."</p>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                                <div class='row'>
                                                                    <div class='col-lg-6'>
                                                                        <a href='espec.php?componentID=".$rowVentilador["ID"]."&componentType=grafica' class='btn btn-primary mb-2'>Especificaciones completas</a>
                                                                    </div>
                                                                    <div class='col-lg-6'>
                                                                        <form method='post' action='../php_important/assignBuildArray.php'>
                                                                            <button name='array[ventilador]' value='".$rowVentilador["ID"]."' class='btn btn-secondary mb-2'>Agregar</button>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        ";
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTen" aria-expanded="false" aria-controls="collapseThree" <?php if(UnlockPower()){echo 'disabled';}?>>
                                <?php XorR(isset($_SESSION['buildArray']['fuentes']))?>
                                <p class="fw-bold fs-5">Fuente de poder</p>
                                <p class="text-danger ms-5"><?php if(UnlockPower()){echo 'Selecciona todas las piezas para tu PC para conocer la mejor fuente de poder';}?></p>
                            </button>
                        </h2>
                        <div id="collapseTen" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <div class="row">
                                    <?php
                                    $dataFuente = GetComponents("fuentes");
                                        while ($rowFuente = $dataFuente -> fetch_assoc()) {
                                        echo"
                                        <div class='col-lg-6'>
                                            <div class='container-fluid mt-4 mb-4'>
                                                <div class='card'>
                                                    <div class='row g-0'>
                                                        <div class='col-lg-4 d-flex justify-content-center align-items-center'>
                                                            <img src='../assets/images/fuentes/".$rowFuente["imagen"]."' class='img-fluid rounded' style='max-width:200px; max-height:230px'>
                                                        </div>
                                                        <div class='col-lg-8'>
                                                            <div class='card-body'>
                                                                <h5 class='card-title fs-2 mb-4'>".$rowFuente["modelo"]."</h5>
                                                                <div class='row'>
                                                                    <div class='col'>
                                                                        <p class='mb-3 fs-5'>Marca</p>
                                                                    </div>
                                                                    <div class='col'>
                                                                        <p class='text-muted mb-0'>".$rowFuente["marca"]."</p>
                                                                    </div>
                                                                </div>
                                                                <hr>
                                                                <div class='row'>
                                                                    <div class='col-lg-6'>
                                                                        <a href='espec.php?componentID=".$rowFuente["ID"]."&componentType=grafica' class='btn btn-primary mb-2'>Especificaciones completas</a>
                                                                    </div>
                                                                    <div class='col-lg-6'>
                                                                        <form method='post' action='../php_important/assignBuildArray.php'>
                                                                            <button name='array[fuentes]' value='".$rowFuente["ID"]."' class='btn btn-secondary mb-2'>Agregar</button>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        ";
                                        }
                                    ?>
                                </div>
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
                        <?php
                        if(isset( $_SESSION["buildArray"])){
                            $parameters = $_SESSION["buildArray"];
                            foreach($parameters as $paramName => $value){
                                $row = ComponentDetails($paramName, $value);
                                echo "
                                <div class='card mb-2'>
                                    <div class='row'>
                                        <div class='col-lg-4 d-flex justify-content-center align-items-center'>
                                            <img src='../assets/images/".$paramName."/".$row["imagen"]."' class='img-fluid rounded ms-4 mt-2' style='max-width:100px; max-height:130px'>
                                        </div>
                                        <div class='col-lg-8'>
                                            <div class='card-body'>
                                                <h5 class='card-title fs-5 mb-4 text-capitalize'>".$paramName."</h5>
                                                <div class='row'>
                                                    <div class='col'>
                                                        <p class='mb-3 fs-5'>Modelo</p>
                                                    </div>
                                                    <div class='col'>
                                                        <p class='text-muted mb-0'>".$row["modelo"]."</p>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class='row'>
                                                    <div class='col-lg-7'>
                                                        <a href='espec.php?componentID=".$row["ID"]."&componentType=".$paramName."' class='btn btn-primary mb-2'>Especificaciones completas</a>
                                                    </div>
                                                    <div class='col-lg-2'>
                                                        <form method='post' action='../php_important/deassignBuildArray.php'>
                                                            <button name='del".$paramName."' class='btn btn-secondary mb-2'>Eliminar</button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                ";
                            }
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include("../Archives_include/footer.html");?>
</body>

</html>