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
                            <a class='nav-link d-flex text-white fs-5 ms-2 mt-3' href='index.php'>Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class='nav-link d-flex text-white fs-5 ms-2 mt-3' href='about.php'>Nosotros</a>
                        </li>
                        <li class="nav-item">
                            <!--Set session variable of languaje-->
                            <form method="post" action="../php_important/connection.php">
                                <button class="ms-2 mt-3 btn" name="changeLan" value="change">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" class="bi bi-translate" viewBox="0 0 16 16">
                                        <path d="M4.545 6.714 4.11 8H3l1.862-5h1.284L8 8H6.833l-.435-1.286zm1.634-.736L5.5 3.956h-.049l-.679 2.022H6.18z" />
                                        <path d="M0 2a2 2 0 0 1 2-2h7a2 2 0 0 1 2 2v3h3a2 2 0 0 1 2 2v7a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2v-3H2a2 2 0 0 1-2-2zm2-1a1 1 0 0 0-1 1v7a1 1 0 0 0 1 1h7a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zm7.138 9.995c.193.301.402.583.63.846-.748.575-1.673 1.001-2.768 1.292.178.217.451.635.555.867 1.125-.359 2.08-.844 2.886-1.494.777.665 1.739 1.165 2.93 1.472.133-.254.414-.673.629-.89-1.125-.253-2.057-.694-2.82-1.284.681-.747 1.222-1.651 1.621-2.757H14V8h-3v1.047h.765c-.318.844-.74 1.546-1.272 2.13a6.066 6.066 0 0 1-.415-.492 1.988 1.988 0 0 1-.94.31z" />
                                    </svg>
                                </button>
                            </form>
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