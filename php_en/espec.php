<?php 
session_start();
if(!isset($_SESSION["userID"])){
    header("Location: error.php");
}
include_once("../php_important/connection.php");
$reco = GetRecomendations($_GET["componentType"]);
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
    <title>Detalles</title>
</head>

<body class="d-flex flex-column min-vh-100" style="background-color: #eee;">
    <?php include("../Archives_include_en/header.php");?>
    <?php echo ComponentTemplate($_GET["componentType"]);?>
    <!--Recuadro recomendaciones-->
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <div class="card mb-4">
                    <div class="card-body text-center">
                        <h5 class="my-3">Recommended products</h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
        while($row= $reco -> fetch_assoc()){
            echo "
                <div class='col-lg-4'>
                    <div class='container-fluid mb-4'>
                        <div class='card'>
                            <div class='row g-0'>
                                <div class='col-lg-4 d-flex justify-content-center align-items-center'>
                                    <img src='../assets/images/".$_GET["componentType"]."/".$row["imagen"]."' class='img-fluid rounded py-4' style='max-width:150px; max-height:200px'>
                                </div>
                                <div class='col-lg-8'>
                                    <div class='card-body'>
                                        <h5 class='card-title fs-2 mb-4'>Recommended</h5>
                                        <div class='row'>
                                            <div class='col'>
                                                <p class='mb-3 fs-5'>Model</p>
                                            </div>
                                            <div class='col'>
                                                <p class='text-muted mb-0'>".$row["modelo"]."</p>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class='row'>
                                            <div class='col'>
                                                <a href='espec.php?componentID=".$row["ID"]."&componentType=".$_GET["componentType"]."' class='btn btn-primary mb-2'>Full specifications</a>
                                            </div>
                                            <div class='col'>
                                                <div class='dropdown'>
                                                    <button class='btn btn-secondary dropdown-toggle' type='button' data-bs-toggle='dropdown' aria-expanded='false'>
                                                        Purchase links
                                                    </button>
                                                    <ul class='dropdown-menu'>
                                                        <li><a class='dropdown-item' href=".$row["link"]." target='blanck'>Cyberpuerta</a></li>
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
            ";
            }
            ?>
        </div>
    </div>
    <?php include("../Archives_include_en/footer.html");?>
</body>

</html>