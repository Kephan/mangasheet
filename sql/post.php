<?php
    require_once 'connect.php';    
    if(isset($_POST["item"])) {
        $coleccion = $_POST['coleccion'];
        $vol = $_POST['vol'];
        $precio = $_POST['precio'];
        $fecha = $_POST['fecha'];
        $paginas = $_POST['paginas'];
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
    
        $sql = "INSERT INTO mangas (coleccion, volumen, precio, fecha, paginas, portada, esnovela) VALUES ";
        $sql .= "('" . $coleccion . "',";
        $sql .= "'" . $vol . "',";
        $sql .= "'" . $precio . "',";
        $sql .= "'" . $fecha . "',";
        $sql .= "'" . $paginas . "',";
        $sql .= "'" . $filename . "',";
        $sql .= "'" . $esnovela . "')";

        if(mysqli_query($link, $sql)){
            echo "<script>location.href='/vs/add.php'</script>";
            print("¡Se han subido correctamente los datos a la base de datos!");
        }else{    
            print("¡Ha ocurrido un error y no se han subido los datos a la base de datos!");
        }
    
    }else if(isset($_POST["coleccion"])){
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

        $sql = "INSERT INTO colecciones (titulo_coleccion, titulo_original, editorial, volumenes_japon, volumenes_es, autor, artista, sinopsis, idioma, demografia) VALUES ";
        $sql .= "('" . $titulo . "',";
        $sql .= "'" . $titulo_og . "',";
        $sql .= "'" . $editorial . "',";
        $sql .= "'" . $vol_jap . "',";
        $sql .= "'" . $vol_es . "',";
        $sql .= "'" . $autor . "',";
        $sql .= "'" . $artista . "',";
        $sql .= "'" . $sinopsis . "',";
        $sql .= "'" . $idioma . "',";    
        $sql .= "'" . $demografia . "')";        

        if(mysqli_query($link, $sql)){
            echo "<script>location.href='/vs/admin.php'</script>";
            print("¡Se han subido correctamente los datos a la base de datos!");
        }else{    
            print("¡Ha ocurrido un error y no se han subido los datos a la base de datos!");
        }
        
    }else if(isset($_POST["editor"])){
        $editorial = $_POST['editorial'];

        $sql = "INSERT INTO editoriales (editorial) VALUES ";
        $sql .= "('" . $editorial . "')";

        if(mysqli_query($link, $sql)){
            echo "<script>location.href='/vs/add.php'</script>";
            print("¡Se han subido correctamente los datos a la base de datos!");
        }else{    
            print("¡Ha ocurrido un error y no se han subido los datos a la base de datos!");
        }
    }



