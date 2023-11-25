<?php
//Get database connection wherever you want by calling this
function GetDBC(){
    include_once("cred.php");
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
    }else if(isset($_POST["LogOut"])){
      session_start();
      session_destroy();
      header("Refresh:0; url=../php/index.php");
      exit();
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
    //retornar mensaje de fallo
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
    //retornar mensaje de fallo
  }
}

//Get user's ID from LogIn or Register function
function UserData($id){
  $DBC = GetDBC();
  $data   = $DBC->query("CALL SelectInfo('usuarios','$id')");
  $DBC -> close();
  $row = $data -> fetch_assoc();
  //You're going to use $row["ID"],$row["username"], $row["password"],$row["email"];
  $IDOut = $row["ID"];
  return $IDOut;
}
//Get user's ID from LogIn function or Register function
function UserBuilds($id){
  $DBC = GetDBC();
  $data = $DBC->query("CALL GetUserBuilds($id)");
  $DBC -> close();
  while($row = $data -> fetch_assoc()){
    foreach($row as $key => $value){
      echo $row[$key]."<br>";
    }
  }
}


?>