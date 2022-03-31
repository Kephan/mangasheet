<?php
    require_once 'connect.php';    

    $ID = $_POST['ID'];
    $volumen = $_POST['volumen'];
    $precio = $_POST['precio'];
    $fecha = $_POST['fecha'];
    $paginas = $_POST['paginas'];    
    $especial = $_POST['ed_especial'];
    $esnovela = $_POST['esnovela'];    

    if(array_key_exists('portada', $_FILES) && $_FILES['portada']['name'] != ""){
        // name of the uploaded file
        $filename = $_FILES['portada']['name'];
            
        // destination of the file on the server
        $destination = '../portadas/' . $filename;

        // get the file extension
        $extension = pathinfo($filename, PATHINFO_EXTENSION);

        // the physical file on a temporary uploads directory on the server
        $file = $_FILES['portada']['tmp_name'];
        $size = $_FILES['portada']['size'];

        if(!in_array($extension, ['png', 'jpg', 'jpeg']) && !file_exists($destination)) {        
            echo "You file extension must be .jpg, .jpeg or .png";
        }else {      
            move_uploaded_file($file, $destination);
        }        

        $sql = "UPDATE mangas SET volumen = $volumen, precio = $precio, fecha = '$fecha', paginas = $paginas, portada = '$filename', ed_especial = $especial, esnovela = $esnovela WHERE ID = $ID";

    }else{        

        $sql = "UPDATE mangas SET volumen = $volumen, precio = $precio, fecha = '$fecha', paginas = $paginas, ed_especial = $especial, esnovela = $esnovela WHERE ID = $ID";

    }


    

    if(mysqli_query($link, $sql)){        
        echo "<script>location.href='../admin.php'</script>";
    }else{    
        printf('Error: %s\n', mysqli_error($link));        
    }


