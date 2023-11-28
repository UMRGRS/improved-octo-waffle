<?php
//Here every form submit input is processed
//Maybe change this later
if (filter_input(INPUT_SERVER, 'REQUEST_METHOD') === 'POST') {
  if(isset($_POST["LogIn"])){
    $username = $_POST["username"];
    $password = $_POST["password"];
    LogIn($username,$password);
  }
  else if(isset($_POST["LogOut"])){
    session_start();
    session_destroy();
    header("Refresh:0; url=../php/index.php");
    exit();
  }
  else if(isset($_POST["SignUp"])){
    $newusername = $_POST["newusername"];
    $newpassword = $_POST["newpassword"];
    $newemail = $_POST["newemail"];
    RegisterUser($newusername, $newpassword, $newemail);
  }
}

//Get database connection wherever you want by calling this
function GetDBC(){
    include("cred.php");
    $dbc = new mysqli($servername,$username,$password,$database);
    if ($dbc->connect_error) {
        die("Connection failed: " . $dbc->connect_error);
      }
    return $dbc;
}

//Register a new user
//Done
function RegisterUser($username,$password,$email){
  $DBC = GetDBC();
  $data   = $DBC->query("CALL UserRegister('$username','$password','$email')");
  $DBC -> close();
  $row = $data->fetch_assoc();
  if($row["aut"] == true){
    session_start();
    $_SESSION["userID"] = $row["@id"];
    header("Location: ../php/perfil.php");
  }
  else{
    header("Location: ../php/index.php?SignUpFailed=true");
  }
}
//Login into an existing account
//Done
function LogIn($username,$password){
  $DBC = GetDBC();
  $data   = $DBC->query("CALL LogIn('$username','$password')");
  $DBC -> close();
  $row = $data->fetch_assoc();
  if($row["aut"] == true){
    session_start();
    $_SESSION["userID"] = $row["@id"];
    header("Location: ../php/perfil.php");
    exit();
  }
  else{
    header("Location: ../php/index.php?LogInFailed=true");
  }
}
//Get userID from session global variable
//Get neccesary data of the user form the database
//Done
function UserData($id){
  $DBC = GetDBC();
  $data   = $DBC->query("CALL SelectInfo('usuarios','$id')");
  $DBC -> close();
  $row = $data -> fetch_assoc();
  return $row;
}
//Get userID from session global variable
//Get builds data of the user form the database
//Done
function UserBuilds($id){
  $DBC = GetDBC();
  $data = $DBC->query("CALL GetUserBuilds($id)");
  $DBC -> close();
  return $data;
}
//Use this to get model,img and id of ever component of a build
//Done
function GetBuildDetails($buildID){
  $DBC = GetDBC();
  $data = $DBC->query("CALL SelectDataFromBuild($buildID)");
  $DBC -> close();
  $row = $data -> fetch_assoc();
  return $row;
}
//Use this to determine which component template to use
//Done
function ComponentTemplate($componentType){
    switch($componentType){
      case "procesador":
        include("../php/componentsTemplates/procesador.php");
        break;
      case "placa":
        include("../php/componentsTemplates/placa.php");
        break;
      case "ram":
        include("../php/componentsTemplates/ram.php");
        break;
      case "disipador":
        include("../php/componentsTemplates/disipador.php");
        break;
      case "ssdm2":
        include("../php/componentsTemplates/ssdm2.php");
        break;
      case "almacenamiento sata":
        include("../php/componentsTemplates/sata.php");
        break;
      case "gabinete":
        include("../php/componentsTemplates/gabinete.php");
        break;
      case "grafica":
        include("../php/componentsTemplates/tarjetaGrafica.php");
        break;
      case "ventilador":
        include("../php/componentsTemplates/ventiladores.php");
        break;
      case "fuentes":
        include("../php/componentsTemplates/fuente.php");
        break;
    }
}
//Use this to print yes or no in boolean fields
//Done
function YesNo($param){
  if($param == 1){
    return "Si";
  }
  else{
    return "No";
  }
}
//Get some components as recomendations
//Done
function GetRecomendations($table){
  $DBC = GetDBC(); 
  $data = $DBC->query("CALL GetRecomendations('$table')");
  $DBC->close();
  return $data;
}
//Use this to retrieve components for every category of the build creator
function GetComponents($componentType){
  $DBC = GetDBC(); 
  $data = $DBC->query("CALL SelectComponents('$componentType')");
  $DBC ->close();
  return $data;
}
//Use this to get the data of certain component
function ComponentDetails($componentType, $componentID){
  $DBC = GetDBC();
  $data = $DBC->query("CALL SelectInfo('$componentType','$componentID')");
  $DBC -> close();
  $row = $data -> fetch_assoc();
  return $row;
}
//Use this to get the compatible components with the selected by the user
function GetCompatible($table1,$table2,$id,$dir){
  $DBC = GetDBC();
  $data = $DBC->query("CALL SelectCompatibility('$table1','$table2','$id','$dir')");
  $DBC->close();
  return $data;
}
//Use this to unlock power supply section
function UnlockPower(){
  if(!isset($_SESSION['buildArray']['procesador']) || !isset($_SESSION['buildArray']['placa']) || !isset($_SESSION['buildArray']['ram']) 
  || !isset($_SESSION['buildArray']['disipador']) || !isset($_SESSION['buildArray']['ssdm2']) || !isset($_SESSION['buildArray']['almacenamiento sata']) 
  || !isset($_SESSION['buildArray']['gabinete']) || !isset($_SESSION['buildArray']['grafica']) || !isset($_SESSION['buildArray']['ventilador'])){
    unset($_SESSION['buildArray']['fuentes']);
    return true;
  }
  else{
    return false;
  }
}
//Use this to included a check or x mark
function XorR($bool){
  if($bool){
    echo '
    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
    <path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
    </svg>';
  }
  else{
    echo '
    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
    <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708"/>
    </svg>
    ';
  }
}

//Use this to save a complete bluid
function SaveBuild(){
  $DBC = GetDBC();
  $data = $DBC->query("CALL RegisterBuild('')");
}
?>