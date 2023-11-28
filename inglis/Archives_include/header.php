<nav class="navbar navbar-expand-md" style="background: rgb(85, 0, 227); background: linear-gradient(90deg, rgba(85, 0, 227, 1) 0%, rgba(198, 61, 255, 1) 100%);">
    <div class="container">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 d-flex align-items-center">
                    <a class="text-white" href="javascript:window.history.back();"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-arrow-left-circle-fill" viewBox="0 0 16 16">
                            <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0m3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5z" />
                        </svg></a>
                    <img class="img-fluid ms-4" src='../assets/images/Logo.png' style="min-width: 60px; max-width: 60px;">
                    <p class="fs-1 text-white text-bold ms-3 mb-2" style="display:inline">AssemblyToast</p>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="col-lg-10 collapse navbar-collapse" id="navbarsExample04">
                    <ul class="navbar-nav ms-auto mb-2">
                        <li class="nav-item">
                            <a class='nav-link d-flex text-white fs-5 ms-2 mt-2' href='index.php'>Home</a>
                        </li>
                        <li class="nav-item">
                            <a class='nav-link d-flex text-white fs-5 ms-2 mt-2' href='about.php'>About us</a>
                        </li>
                        <li class="d-flex justify-content-center me-3">
                            <?php
                                if(session_status() == PHP_SESSION_ACTIVE and isset($_SESSION["userID"])){
                                    include_once("../Archives_include/profilebutton.html");
                                }
                                else{
                                    include_once("../Archives_include/login_modal.php");
                                }
                            ?>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>