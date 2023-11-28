<?php
session_start();
if (filter_input(INPUT_SERVER, 'REQUEST_METHOD') === 'POST') {
    if($_SESSION["Idioma"] == "ES"){
        $add = "";
      }
      else if($_SESSION["Idioma"] == "EN"){
        $add = "_en";
      }
    switch(key($_POST['array'])){
        case 'procesador':
            $_SESSION['buildArray']['procesador'] = $_POST['array']['procesador'];
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'placa':
            $_SESSION['buildArray']['placa'] = $_POST['array']['placa'];
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'ram':
            $_SESSION['buildArray']['ram'] = $_POST['array']['ram'];
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'disipador':
            $_SESSION['buildArray']['disipador'] = $_POST['array']['disipador'];
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'ssdm2':
            $_SESSION['buildArray']['ssdm2'] = $_POST['array']['ssdm2'];
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'almacenamiento sata':
            $_SESSION['buildArray']['almacenamiento sata'] = $_POST['array']['almacenamiento sata'];
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'gabinete':
            $_SESSION['buildArray']['gabinete'] = $_POST['array']['gabinete'];
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'grafica':
            $_SESSION['buildArray']['grafica'] = $_POST['array']['grafica'];
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'ventilador':
            $_SESSION['buildArray']['ventilador'] = $_POST['array']['ventilador'];
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        case 'fuentes':
            $_SESSION['buildArray']['fuentes'] = $_POST['array']['fuentes'];
            header('Location: ../php'.$add.'/armarbuild.php');
            break;
        default:
            break;
    }
}
?>