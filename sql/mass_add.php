<?php
    require_once 'connect.php';    
    $coleccion = $_POST['coleccion'];
    $vol = $_POST['vol'];
    $precio = $_POST['precio'];
    $fecha = $_POST['fecha'];
    $paginas = $_POST['paginas'];
    $especial = $_POST['especial'];
    $esnovela = $_POST['esnovela'];

    // name of the uploaded file
    $filename = $_FILES['portada']['name'];

    // destination of the file on the server
    $destination = '../portadas/' . $filename;

    // get the file extension
    $extension = pathinfo($filename, PATHINFO_EXTENSION);

    // the physical file on a temporary uploads directory on the server
    $file = $_FILES['portada']['tmp_name'];
    $size = $_FILES['portada']['size'];

    if(!in_array($extension, ['png', 'jpg', 'jpeg'])) {        
        echo "You file extension must be .jpg, .jpeg or .png";
    }else {      
        move_uploaded_file($file, $destination);
    }

    $sql = "INSERT INTO mangas (coleccion, volumen, precio, fecha, paginas, portada, ed_especial, esnovela) VALUES ";
    $sql .= "('" . $coleccion . "',";
    $sql .= "'" . $vol . "',";
    $sql .= "'" . $precio . "',";
    $sql .= "'" . $fecha . "',";
    $sql .= "'" . $paginas . "',";
    $sql .= "'" . $filename . "',";
    $sql .= "'" . $especial . "',";
    $sql .= "'" . $esnovela . "')";

    if(mysqli_query($link, $sql)){                
        echo "Se ha subido correctamente el volumen " . $vol;        
    }else{    
        echo "Ha ocurrido un error subiendo el volumen " . $vol;
        printf(mysqli_error($link));
    }


