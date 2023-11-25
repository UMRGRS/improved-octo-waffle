<nav class="navbar navbar-expand-md" style="background: rgb(85, 0, 227); background: linear-gradient(90deg, rgba(85, 0, 227, 1) 0%, rgba(198, 61, 255, 1) 100%);">
    <div class="container-fluid">
        <div class="container-fluid">
            <div class="row">
                <div class="col-4">
                    <ul class="navbar-nav ms-5">
                        <li>
                            <img src='../assets/images/Logo.png' style='max-width: 80px;'>
                        </li>
                        <li class="mt-3">
                            <h1 class="fs-2 text-white ms-3" style="display:inline">AssemblyToast</h1>
                        </li>
                    </ul>
                </div>
                <div class="col-8 mt-2">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarsExample04">
                        <ul class="navbar-nav ms-auto mb-2 mb-md-0">
                            <li class="nav-item">
                                <a class='nav-link text-white fs-5 mx-2 mt-2' href='index.php'>Inicio</a>
                            </li>
                            <li class="nav-item">
                                <!--Change for about page-->
                                <a class='nav-link text-white fs-5 mx-2 mt-2' href='#'>Nosotros</a>
                            </li>
                            <li class="me-3">
                                <?php
                                    if(session_status() == PHP_SESSION_ACTIVE and isset($_SESSION["userID"])){
                                        include_once("../Archives_include/profilebutton.html");
                                    }
                                    else{
                                        include_once("../Archives_include/login_modal.html");
                                    }
                                ?>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>