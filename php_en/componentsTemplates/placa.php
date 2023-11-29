<?php
include_once("../php_important/connection.php");
$row = ComponentDetails($_GET["componentType"],$_GET["componentID"]);
?>
<div class="container-fluid mt-4 mb-4">
    <div class="card">
        <div class="row g-0 card-body">
            <div class="d-flex col-3 justify-content-center align-items-center">
                <img src="../assets/images/placa/<?php echo $row["imagen"];?>" class="img-fluid rounded" style="max-height: 230px; max-width:230px;">
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
                        <div class="col-lg-2">
                            <p class="fs-5">Form factor</p>
                        </div>
                        <div class="col-lg-2">
                            <p class="fs-5"><?php echo $row["forma"];?></p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-2">
                            <p class="fs-5">Socket</p>
                        </div>
                        <div class="col-lg-2">
                            <p class="fs-5"><?php echo $row["socket"];?></p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-2">
                            <p class="fs-5">Type of memory</p>
                        </div>
                        <div class="col-lg-2">
                            <p class="fs-5"><?php echo $row["ddr"];?></p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-3">
                            <p class="fs-5">Number of memory slots</p>
                        </div>
                        <div class="col-lg-2">
                            <p class="fs-5"><?php echo $row["slots_ram"];?></p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-2">
                            <p class="fs-5">Chipset</p>
                        </div>
                        <div class="col-lg-2">
                            <p class="fs-5"><?php echo $row["chipset"];?></p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-2">
                            <p class="fs-5">WiFi</p>
                        </div>
                        <div class="col-lg-2">
                            <p class="fs-5"><?php echo YesNo($row["wifi"]);?></p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-2">
                            <p class="fs-5">Bluetooth</p>
                        </div>
                        <div class="col-lg-2">
                            <p class="fs-5"><?php echo YesNo($row["bluetooth"]);?></p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-3">
                            <p class="fs-5">Number of NVMe slots</p>
                        </div>
                        <div class="col-lg-2">
                            <p class="fs-5"><?php echo $row["slots_nvme"];?></p>
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