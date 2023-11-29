<?php
session_start();
if (filter_input(INPUT_SERVER, 'REQUEST_METHOD') === 'POST') {
    if($_SESSION["Idioma"] == "ES"){
        $add = "";
      }
      else if($_SESSION["Idioma"] == "EN"){
        $add = "_en";
      }
    switch (key($_POST)){
        case 'delprocesador':
            unset($_SESSION['buildArray']['procesador']);
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'delplaca':
            unset($_SESSION['buildArray']['placa']);
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'delram':
            unset($_SESSION['buildArray']['ram']);
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'deldisipador':
            unset($_SESSION['buildArray']['disipador']);
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'delssdm2':
            unset($_SESSION['buildArray']['ssdm2']);
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'delalmacenamiento_sata':
            unset($_SESSION['buildArray']['almacenamiento sata']);
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'delgabinete':
            unset($_SESSION['buildArray']['gabinete']);
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'delgrafica':
            unset($_SESSION['buildArray']['grafica']);
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'delventilador':
            unset($_SESSION['buildArray']['ventilador']);
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'delfuentes':
            unset($_SESSION['buildArray']['fuentes']);
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        default:
            break;
    }
}
?>