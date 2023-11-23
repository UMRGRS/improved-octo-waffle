<?php
function GetDBC(){
    include_once("cred.php");
    $dbc = new mysqli($servername,$username,$password,$database);
    if ($dbc->connect_error) {
        die("Connection failed: " . $dbc->connect_error);
      }
    return $dbc;
}

//Get user's ID with login function 
function UserData($id){
  $DBC = GetDBC();
  $data   = $DBC->query("CALL SelectInfo('usuarios','$id')");
  $row = $data -> fetch_assoc();
  //You're going to use $row["ID"],$row["username"], $row["password"],$row["email"];
  $DBC -> close();
}
//Get user's ID with login function 
function UserBuilds($id){
  $DBC = GetDBC();
  $data = $DBC->query("CALL GetUserBuilds($id)");
  while($row = $data -> fetch_assoc()){
    foreach($row as $key => $value){
      echo $row[$key]."<br>";
    }
  }
}
?>