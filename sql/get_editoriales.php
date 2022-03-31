<?php
    require_once 'connect.php';            
    $sql = "SELECT * FROM editoriales";            
    
    $result = mysqli_query($link, $sql) or die(mysqli_error($link));  
    while($row = mysqli_fetch_array($result)){?>            
        <option value="<?php echo $row['ID'] ?>"><?php echo $row['editorial'] ?></option>
    <?php      
    }          
?>