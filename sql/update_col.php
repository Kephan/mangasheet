<?php
    require_once 'connect.php';    

    $colID = $_POST['ColID'];
    $titulo = $_POST['titulo'];
    $titulo_og = $_POST['titulo_og'];
    $editorial = $_POST['editorial'];
    $vol_jap = $_POST['vol_jap'];
    $vol_es = $_POST['vol_es'];
    $autor = $_POST['autor'];
    $artista = $_POST['artista'];
    $sinopsis = $_POST['sinopsis'];
    $idioma = $_POST['idioma'];     
    $demografia = $_POST['demografia'];     
    
    $sql = "UPDATE colecciones SET titulo_coleccion = '$titulo', titulo_original = '$titulo_og', editorial = $editorial, volumenes_japon = $vol_jap, volumenes_es = $vol_es, autor = '$autor', artista = '$artista', sinopsis = '$sinopsis', idioma = '$idioma', demografia = $demografia WHERE ColID = $colID";

    if(mysqli_query($link, $sql)){
        echo "<script>location.href='../admin.php'</script>";
        print("¡Se han subido correctamente los datos a la base de datos!");
    }else{    
        print("¡Ha ocurrido un error y no se han subido los datos a la base de datos!");
    }


