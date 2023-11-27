<?php
//Get database connection wherever you want by calling this
function GetDBC(){
    include("cred.php");
    $dbc = new mysqli($servername,$username,$password,$database);
    if ($dbc->connect_error) {
        die("Connection failed: " . $dbc->connect_error);
      }
    return $dbc;
}

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
//Use this to get the data of certain component
function ComponentDetails($componentType, $componentID){
  $DBC = GetDBC();
  $data = $DBC->query("CALL SelectInfo('$componentType','$componentID')");
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
      case "almacenamiento_sata":
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
function YesNo($param){
  if($param == 1){
    return "Si";
  }
  else{
    return "No";
  }
}
//Get some components as recomendations
function GetRecomendations($table){
  $DBC = GetDBC(); 
  $data = $DBC->query("CALL GetRecomendations('$table')");
  $DBC->close();
  return $data;
}
?>