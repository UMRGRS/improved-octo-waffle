<?php 
session_start();
$_SESSION ["Idioma"] = "EN";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../assets/css/templatemo-tale-seo-agency.css">
    <title>Welcome</title>
</head>

<body class="d-flex flex-column min-vh-100">
    <?php 
    include("../Archives_include_en/header.php");
    ?>
    <div class="main-banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="container bg-white" style="border-radius: 25px">
                        <h6 class="pt-4 ps-3">Build your own PC</h6>
                        <div class="line-dec"></div>
                        <h4 class="text-break ps-3">Build it, it is <em>cheaper</em><br>and more<span>powerful</span> than buying</h4>
                        <p class="text-break ps-3 fs-5">We are the best option in the assembly market along with the best prices for components and complete assemblies</p>
                        <div class="container-fluid">
                            <div class="row">
                                <?php
                                    if(session_status() == PHP_SESSION_ACTIVE and isset($_SESSION["userID"])){
                                        include_once("../Archives_include_en/CreateBuildButton.html");
                                    }
                                    else{
                                        include_once("../Archives_include_en/LoginRegisterButtons.html");
                                    }
                                    if(isset($_GET["LogInFailed"]) and $_GET["LogInFailed"] == true){
                                        echo "
                                        <script type='text/javascript'>
                                            window.onload = () => {
                                            const myModal = new bootstrap.Modal('#exampleModalToggle');
                                            myModal.show();
                                            }
                                        </script>";
                                    }
                                    else if(isset($_GET["SignUpFailed"]) and $_GET["SignUpFailed"] == true){
                                        echo "
                                        <script type='text/javascript'>
                                            window.onload = () => {
                                            const myModal = new bootstrap.Modal('#exampleModalToggle1');
                                            myModal.show();
                                            }
                                        </script>";
                                    }
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="services section" id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class='section-heading'>
                                <h2 class="text-break">We provide you with the best <em>tools</em> and <em>components</em> to build the computer of your dreams.</h2>
                                <div class="line-dec"></div>
                                <p>Our services include:</p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="service-item">
                                <div class="icon">
                                    <img src="../assets/images/services-01.jpg" alt="discover SEO" class="templatemo-feature">
                                </div>
                                <h4>Connection with the best component stores</h4>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="service-item">
                                <div class="icon">
                                    <img src="../assets/images/services-02.jpg" alt="data analysis" class="templatemo-feature">
                                </div>
                                <h4>Guaranteed component compatibility</h4>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="service-item">
                                <div class="icon">
                                    <img src="../assets/images/services-03.jpg" alt="precise data" class="templatemo-feature">
                                </div>
                                <h4>A vast array of components at your fingertips</h4>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="service-item">
                                <div class="icon">
                                    <img src="../assets/images/services-04.jpg" alt="SEO marketing" class="templatemo-feature">
                                </div>
                                <h4>Saving your PC's</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include("../Archives_include_en/footer.html"); ?>
</body>

</html>