<?php
    require_once 'connect.php';            
    $sql = "SELECT * FROM demografias";            
    
    $result = mysqli_query($link, $sql) or die(mysqli_error($link));  
    while($row = mysqli_fetch_array($result)){?>            
        <option value="<?php echo $row['demoID'] ?>"><?php echo $row['demografia'] ?></option>
    <?php      
    }          
?>