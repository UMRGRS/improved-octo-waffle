<?php
function GetDBC(){
    include_once("cred.php");
    $dbc = new mysqli($servername,$username,$password,$database);
    if ($dbc->connect_error) {
        die("Connection failed: " . $dbc->connect_error);
      }
    return $dbc;
}
$DBC = GetDBC();
$result = mysqli_query($DBC,'CALL SelectEverythingFromTable("disipador")');

while($row = $result->fetch_assoc())
{
echo $row["ID"];
}
?>