<div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalToggleLabel">Sign in</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="post" action="../php_important/connection.php">
                    <div class="mb-3 row">
                        <div class="col-sm">
                            <input type="text" class="form-control" id="staticEmail" name="username" placeholder="User" maxlength="20" required>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-sm">
                            <input type="password" class="form-control" id="inputPassword" name="password" placeholder="Password" maxlength="20" required>
                        </div>
                    </div>
                    <?php
                    if(isset($_GET["LogInFailed"]) and $_GET["LogInFailed"] == true){
                        echo "
                        <div class='mb-3 row'>
                            <div class='col-sm'>
                                <p class='text-center text-break text-danger'>Incorrect username or password, try again</p>
                            </div>
                        </div>";
                    }
                    ?>
                    <div class="d-grid gap-2">
                        <input type="submit" class="btn btn-outline-success" name="LogIn" value="Sign in">
                    </div>
                </form>
            </div>
            <div class="d-grid gap-2 px-3 mb-3">
                <button class="btn btn-outline-info" data-bs-target="#exampleModalToggle2" data-bs-toggle="modal">Sign up</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="exampleModalToggle2" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalToggleLabel2">Sign up</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!--inicio formulario-->
                <form method="post" action="../php_important/connection.php">
                    <div class="mb-3 row">
                        <div class="col-sm">
                            <input type="text" class="form-control" id="Name" name="newusername" placeholder="Username" maxlength="20" required>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-sm">
                            <input type="password" class="form-control" id="inputPassword" name="newpassword" placeholder="Password" maxlength="20" required>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm">
                            <input type="email" class="form-control" id="staticEmail" name="newemail" placeholder="Email" maxlength="100" required>
                        </div>
                    </div>
                    <?php
                    if(isset($_GET["SignUpFailed"]) and $_GET["SignUpFailed"] == true){
                        echo "
                        <div class='mb-3 row'>
                            <div class='col-sm'>
                                <p class='text-center text-break text-danger'>Username or email already in use, try another one</p>
                            </div>
                        </div>";
                    }
                    ?>
                    <div class="d-grid gap-2">
                        <input type="submit" class="btn btn-outline-info" name="SignUp" value="Sign up">
                    </div>
                </form>
            </div>
            <div class="d-grid gap-2 px-3 mb-3">
                <button class="btn btn-outline-success" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Sign in</button>
            </div>
        </div>
    </div>
</div>
<li>
    <button class="btn fs-5 mx-3 mt-3 text-white" data-bs-target="#exampleModalToggle" data-bs-toggle="modal" style="background: rgb(85, 0, 227);">Sign in</button>
</li>