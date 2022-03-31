<?php

if(isset($_POST['registro'])){
    
    $username = strval($_POST["uname"]);
    $pass = strval($_POST["password"]);

    require_once 'connect.php';    

    $sql = "INSERT INTO usuarios (usuario, usuario_contra) VALUES (?, ?)";
    $stmt = mysqli_stmt_init($link);

    if(!mysqli_stmt_prepare($stmt, $sql)){
        header("location: ../registro.php?error=liada");
        exit();
    }    

    mysqli_stmt_bind_param($stmt, "ss", $username, md5($pass));
    mysqli_stmt_execute($stmt);    
    mysqli_stmt_close($stmt);

    header("location: ../index.php?error=none");

}else{
    header("location: ../registro.php");
    exit();
}