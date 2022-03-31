<?php
    require_once 'connect.php';    
    session_start();
    
    $coleccion = $_POST['coleccion'];
    $user = $_SESSION['userID'];
    $vol_num = $_POST['volnum'];    
    $especial = $_POST['especial'];    
 
    $sql = "DELETE FROM vols_comprados WHERE (colID = $coleccion AND userID = $user AND vol_num = $vol_num AND edespecial = $especial)";

    if(mysqli_query($link, $sql)){                
        echo "¡Estás siguiendo esta serie!";
    }else{    
        echo "¡Vuelve a intentarlo!";
        printf(mysqli_error($link));
    }


