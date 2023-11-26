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
//Get ID from session global variable
//Get neccesary data of the user form the database
function UserData($id){
  $DBC = GetDBC();
  $data   = $DBC->query("CALL SelectInfo('usuarios','$id')");
  $DBC -> close();
  $row = $data -> fetch_assoc();
  return $row;
}
//Get ID from session global variable
//Get builds data of the user form the database
function UserBuilds($id){
  $DBC = GetDBC();
  $data = $DBC->query("CALL GetUserBuilds($id)");
  $DBC -> close();
  return $data;
}
?>