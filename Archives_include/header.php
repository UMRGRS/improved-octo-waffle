<nav class="navbar navbar-expand-md" style="background: rgb(85, 0, 227); background: linear-gradient(90deg, rgba(85, 0, 227, 1) 0%, rgba(198, 61, 255, 1) 100%);">
    <div class="container-fluid">
        <img src='../assets/images/Logo.png' alt style='max-width: 80px;'>
        <p class="fs-2 text-white mt-2">AssemblyToast</p>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExample04">
            <ul class="navbar-nav ms-auto mb-2 mb-md-0">
                <li class="nav-item">
                    <a class='nav-link text-white fs-5 mx-2 mt-2' href='#'>Inicio</a>
                </li>
                <li class="nav-item">
                    <a class='nav-link text-white fs-5 mx-2 mt-2' href='armarbuild.php'>Armados</a>
                </li>
                <li>
                    <?php
                    if(session_status() == PHP_SESSION_ACTIVE & isset($_SESSION["ID"])){
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
</nav>