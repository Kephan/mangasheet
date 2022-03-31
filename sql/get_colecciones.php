<?php
    require_once 'connect.php';            
    $sql = "SELECT * FROM colecciones";            
    
    $result = mysqli_query($link, $sql) or die(mysqli_error($link));  
    while($row = mysqli_fetch_array($result)){?>            
        <option value="<?php echo $row['ColID'] ?>"><?php echo $row['titulo_coleccion'] ?></option>
    <?php      
    }          
?>