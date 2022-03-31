<?php
    require_once 'connect.php';    

    $comID = $_POST['comID'];
    $comentario = $_POST['comentario'];
    $editado = $_POST['editado'];
  
    $sql = "UPDATE comentarios SET comentario = '$comentario', editado = $editado WHERE id = $comID";

    if(mysqli_query($link, $sql)){
        echo "<script>location.href='../admin.php'</script>";
        print("¡Se han subido correctamente los datos a la base de datos!");
    }else{    
        print("¡Ha ocurrido un error y no se han subido los datos a la base de datos!");
    }


