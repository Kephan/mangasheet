<?php 
    require_once 'connect.php';            
    $sql = "SELECT * FROM editoriales"; 

    $result = mysqli_query($link, $sql) or die(mysqli_error($link));  
    while($row = mysqli_fetch_array($result)){?>
            <div class="editorial" data-editorial>
                <div class="editorial-container row">
                    <div class="row w100">
                        <h1 class="title-editorial"><?php echo $row["editorial"]?></h1> 
                    </div>
                </div>                
                <div class="row wrap monthly-container" data-editorial="<?php echo $row["ID"]?>"></div>
            </div>
    <?php      
    }          
?>