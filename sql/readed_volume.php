<?php
    require_once 'connect.php';    
    session_start();
    
    $coleccion = $_POST['coleccion'];
    $volID = $_POST['vol'];
    $vol_num = $_POST['volnum'];
    $especial = $_POST['especial'];
    $user = $_SESSION['userID'];    

    if (isset($_POST['comprado'])){
        $comprado = $_POST['comprado'];
    }else{
        $comprado = 0;
    }
    if(isset($_POST['leido'])){
        $leido = $_POST['leido'];
    }else{
        $leido = 0;
    }    

        if($comprado == 0){
            $sql = "INSERT INTO vols_comprados (volID, vol_num, userID, colID, leido, comprado, edespecial) VALUES ";    
            $sql .= "('" . $volID . "',";
            $sql .= "'" . $vol_num . "',";
            $sql .= "'" . $user . "',";
            $sql .= "'" . $coleccion . "',";    
            $sql .= "'" . $leido . "',";
            $sql .= "'" . 1 . "',";
            $sql .= "'" . $especial . "')";
        }else{
            $sql = "UPDATE vols_comprados SET leido = $leido WHERE (colID = $coleccion AND userID = $user AND vol_num = $vol_num AND edespecial = $especial)";
        }

    

    if(mysqli_query($link, $sql)){                
        echo "¡Estás siguiendo esta serie!";     
    }else{    
        echo "¡Vuelve a intentarlo!";
        printf(mysqli_error($link));
    }


