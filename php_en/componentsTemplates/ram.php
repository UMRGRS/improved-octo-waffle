<?php
include_once("../php_important/connection.php");
$row = ComponentDetails($_GET["componentType"],$_GET["componentID"]);
?>
<div class="container-fluid mt-4 mb-4">
    <div class="card">
        <div class="row g-0 card-body">
            <div class="d-flex col-3 justify-content-center align-items-center">
                <img src="../assets/images/ram/<?php echo $row["imagen"];?>" class="img-fluid rounded" style="max-height: 230px; max-width:230px;">
            </div>
            <div class="col-9">
                <div class="container-fluid">
                    <div class="row">
                        <h5 class="card-title fs-2"><?php echo $row["modelo"];?></h5>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-2">
                            <p class="fs-5">Brand</p>
                        </div>
                        <div class="col-lg-2">
                            <p class="fs-5"><?php echo $row["marca"];?></p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-3">
                            <p class="fs-5">Type of internal memory</p>
                        </div>
                        <div class="col-lg-2">
                            <p class="fs-5"><?php echo $row["tipo_ddr"];?></p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-2">
                            <p class="fs-5">Frequency</p>
                        </div>
                        <div class="col-lg-2">
                            <p class="fs-5"><?php echo $row["frecuencia"];?></p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-3">
                            <p class="fs-5">Power consumption</p>
                        </div>
                        <div class="col-lg-2">
                            <p class="fs-5"><?php echo $row["consumo"];?></p>
                        </div>
                    </div>
                    <hr>
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Purchase links
                        </button>
                        <ul class="dropdown-menu">
                            <!--Link owo-->
                            <li><a class="dropdown-item" href="<?php echo $row["link"];?>" target="blanck">Cyberpuerta</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>