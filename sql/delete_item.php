<?php
    require_once 'connect.php';    

    $ID = $_POST['ID'];

    $sql = "DELETE FROM mangas WHERE ID = $ID";

    if(mysqli_query($link, $sql)){
        echo "<script>location.href='../admin.php'</script>";
        print("¡Se han subido correctamente los datos a la base de datos!");
    }else{    
        print("¡Ha ocurrido un error y no se han subido los datos a la base de datos!");
    }


