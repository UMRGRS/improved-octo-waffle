<div class="modal fade" id="exampleModalToggle" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalToggleLabel">Identificate</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="post" action="../php_important/connection.php">
                    <div class="mb-3 row">
                        <div class="col-sm">
                            <input type="text" class="form-control" id="staticEmail" name="username" placeholder="Usuario" required>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-sm">
                            <input type="password" class="form-control" id="inputPassword" name="password" placeholder="Contraseña" required>
                        </div>
                    </div>
                    <div class="d-grid gap-2">
                        <input type="submit" class="btn btn-outline-success" name="LogIn" value="Iniciar sesion">
                    </div>
                </form>
            </div>
            <div class="d-grid gap-2 px-3 mb-3">
                <button class="btn btn-outline-info" data-bs-target="#exampleModalToggle2" data-bs-toggle="modal">¿No tienes cuenta? Crea una</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="exampleModalToggle2" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalToggleLabel2">Crea tu cuenta</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!--inicio formulario-->
                <form method="post" action="../php_important/connection.php" onsubmit>
                    <div class="mb-3 row">
                        <div class="col-sm">
                            <input type="text" class="form-control" id="Name" name="newusername" placeholder="Nombre de usuario" required>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-sm">
                            <input type="password" class="form-control" id="inputPassword" name="newpassword" placeholder="Contraseña" required>
                        </div>
                    </div>

                    <div class="mb-3 row">
                        <div class="col-sm">
                            <input type="email" class="form-control" id="staticEmail" name="newemail" placeholder="Correo electronico" required>
                        </div>
                    </div>

                    <div class="d-grid gap-2">
                        <input type="submit" class="btn btn-outline-info" name="SignUp" value="Registrate">
                    </div>
                </form>
            </div>
            <div class="d-grid gap-2 px-3 mb-3">
                <button class="btn btn-outline-success" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">¿Ya tienes cuenta? Inicia sesion</button>
            </div>
        </div>
    </div>
</div>
<li>
    <button class="btn btn-primary fs-5 mx-3 mt-2" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Iniciar sesion</button>
</li>