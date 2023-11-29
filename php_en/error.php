<?php
header("Refresh:5; url=index.php");
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
    <title>Nosotros</title>
</head>

<body class="d-flex flex-column min-vh-100" style="background-color: #eee;">
    <?php include("../Archives_include_en/header.php"); ?>
    <div class="container-fluid">
        <div class="row mt-2">
            <div class="row">
                <div class="col">
                    <div class="card mb-2">
                        <div class="card-body text-center">
                            <h5 class="my-3 fs-4">¿Que haces aquí?</h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="card mb-2">
                        <div class="card-body text-center">
                            <img src="../assets/images/error.gif" class="img-fluid rounded-circle" style="width: 640px;">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="card mb-2">
                        <div class="card-body text-center">
                            <h5 class="my-3 fs-4">Bueno no importa, seras redirigido al inicio en 5 segundos :3</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php 
    include("../Archives_include_en/footer.html");
    ?>
</body>

</html>