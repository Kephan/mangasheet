<?php
    session_start();
    require_once 'connect.php';            

    $coleccion = $_POST['coleccion'];

    if(isset($_POST['volnum'])){
        $volumen = $_POST['volnum'];
    }else{
        $volumen = 0;
    }    

    $sql = "SELECT * FROM comentarios a WHERE $coleccion = a.colID AND a.replyID = 0 AND a.volnum = $volumen ORDER BY fecha DESC"; 
    
    $result = mysqli_query($link, $sql) or die(mysqli_error($link));  
    while($row = mysqli_fetch_array($result)){?>    
    <div class="comment-box" data-id="<?php echo $row['id'] ?>">
    <?php if (isset($_SESSION['userID']) ) {?>
        <div class="edit-comment-container">
            <a class="reply-comment" data-vol="<?php echo $row['volnum'] ?>" data-id="<?php echo $row['id'] ?>" href="#"><i class="fas fa-reply"></i></a>
        <?php if($_SESSION['userID'] == $row['usuario'] || $_SESSION['userRank'] == 1) {?>                         
            <a class="delete-comment" data-vol="<?php echo $row['volnum'] ?>" data-id="<?php echo $row['id'] ?>" href="#"><i class="fas fa-trash"></i></a>                
            <a class="edit-comment" data-vol="<?php echo $row['volnum'] ?>" data-id="<?php echo $row['id'] ?>" href="#"><i class="fas fa-pen" aria-hidden="true"></i></a>                            
            <a class="save-comment hidden" data-vol="<?php echo $row['volnum'] ?>" data-id="<?php echo $row['id'] ?>" href="#"><i class="fas fa-save" aria-hidden="true"></i></a>                            
        <?php } ?>
        </div> 
        <?php } ?>
        <span class="comment-header"><?php echo $row['username'] ?></span>
        <span class="comment-date"><?php echo date("Y-m-d G:i:s", strtotime($row["fecha"]))?></span>
        <?php if($row['editado'] == 1) { ?> 
            <span class="edited-comment">(editado)</span> 
        <?php }?>
        <div class="comment-text-cont w100" data-id="<?php echo $row['id'] ?>">
            <p data-id="<?php echo $row['id'] ?>" class="comment-text"><?php echo $row['comentario'] ?></p>
        </div>
    </div>
    <?php      
    }          
?>
