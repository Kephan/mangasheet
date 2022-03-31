<?php

if(isset($_POST['login'])){
    
    $username = strval($_POST["uname"]);
    $pass = strval($_POST["password"]);

    $md5pass = md5($pass);
    require_once 'connect.php';    

    session_start();
        
    $sql = "SELECT * FROM usuarios a WHERE a.usuario = '$username' AND a.usuario_contra = '$md5pass'";
    $result = mysqli_query($link, $sql) or die(mysqli_error($link)); 
    $row = mysqli_fetch_array($result);

    if($row['usuario'] == $username && $row['usuario_contra'] == $md5pass){
        $_SESSION['user'] = $username;
        $_SESSION['userID'] = $row['usuariosID'];
        $_SESSION['userRank'] = $row['rango'];
        
        header("location: ../index.php");
    }else{
        header("location: ../inicio-sesion.php");
        exit();
    }

}else{
    header("location: ../inicio-sesion.php");
    exit();
}