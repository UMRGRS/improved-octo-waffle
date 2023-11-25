<?php
function GetDBC(){
    include_once("cred.php");
    $dbc = new mysqli($servername,$username,$password,$database);
    if ($dbc->connect_error) {
        die("Connection failed: " . $dbc->connect_error);
      }
    return $dbc;
}

if (filter_input(INPUT_SERVER, 'REQUEST_METHOD') === 'POST') {
    if(isset($_POST["LogIn"])){
      $username = $_POST["username"];
      $password = $_POST["password"];
      LogIn($username,$password);
    }
}

//connect with register form
function RegisterUser($username,$password,$email){
  $DBC = GetDBC();
  $data   = $DBC->query("CALL UserRegister('$username','$password','$email')");
  $DBC -> close();
  $row = $data->fetch_assoc();
  if($row["aut"] == true){
    return $row["@id"];
  }
  else{
    //retornar mensaje de fallo
  }
}
//connect with login form
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