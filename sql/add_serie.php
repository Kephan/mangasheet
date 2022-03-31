<?php
    require_once 'connect.php';    
    session_start();
    
    $coleccion = $_POST['coleccion'];
    $user = $_SESSION['userID'];

    $sql = "INSERT INTO series (colID, userID) VALUES ";
    $sql .= "('" . $coleccion . "',";
    $sql .= "'" . $user . "')";

    if(mysqli_query($link, $sql)){                
        echo "¡Estás siguiendo esta serie!";     
    }else{    
        echo "¡Vuelve a intentarlo!";
        printf(mysqli_error($link));
    }


