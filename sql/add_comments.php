<?php
    require_once 'connect.php';    
    session_start();
    
    $comentario = $_POST['comentario'];
    $fecha = $_POST['fecha'];

    echo $fecha;

    if(isset($_POST['volnum'])){
        $volumen = $_POST['volnum'];
    }else{
        $volumen = '';
    }

    if(isset($_POST['reply'])){
        $reply = $_POST['reply'];
    }else{
        $reply = '';
    }

    $coleccion = $_POST['coleccion'];
    
    $username = $_SESSION['user'];
    $user = $_SESSION['userID'];


    $sql = "INSERT INTO comentarios (comentario, usuario, colID, volnum, username, fecha, replyID) VALUES ";
    $sql .= "('" . $comentario . "',";
    $sql .= "'" . $user . "',";
    $sql .= "'" . $coleccion . "',";
    $sql .= "'" . $volumen . "',";
    $sql .= "'" . $username . "',";
    $sql .= "'" . $fecha . "',";
    $sql .= "'" . $reply . "')";

    if(mysqli_query($link, $sql)){                
        echo "¡Estás siguiendo esta serie!";     
    }else{    
        echo "¡Vuelve a intentarlo!";
        printf(mysqli_error($link));
    }


