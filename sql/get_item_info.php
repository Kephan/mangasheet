<?php 
    require_once 'connect.php';        
    session_start();

    $colID = $_POST['coleccion'];
    $volumen = $_POST['volumen'];
    $especial = $_POST['especial'];
    $userID = $_SESSION['userID'];

    $sql = "SELECT a.ColID, a.titulo_coleccion, a.titulo_original, a.editorial, a.volumenes_japon, a.volumenes_es, a.idioma, a.autor, a.artista, a.sinopsis, b.ID, b.esnovela, b.volumen, b.precio, b.fecha, b.paginas, b.portada, b.ed_especial, c.editorial, d.demografia, e.comprado, e.leido FROM colecciones a LEFT JOIN mangas b ON b.coleccion = a.ColID LEFT JOIN editoriales c ON c.ID = a.editorial LEFT JOIN demografias d ON d.demoID = a.demografia LEFT JOIN vols_comprados e ON (a.ColID = e.colID AND e.userID = $userID AND e.vol_num = b.volumen AND e.edespecial = b.ed_especial) WHERE a.colID = $colID AND b.volumen = $volumen AND b.ed_especial = $especial"; 

    $result = mysqli_query($link, $sql) or die(mysqli_error($link));  
    while($row = mysqli_fetch_array($result)){?>
        <div class="product row wrap popup-info">
            <div class="close-item-info">
                <a href="#" class="close-button-info">X</a>
            </div>
            <div class="w100 row">                            
                <div class="collection-info-cover row wrap w50">      
                    <?php if($row["portada"] != "") {?>            
                        <img class="col-cover <?php echo strtolower($row["demografia"])?>" src="portadas/<?php echo $row["portada"]?>">
                    <?php }else { ?>
                        <img class="col-cover <?php echo strtolower($row["demografia"])?>" src="portadas/nodisponible.jpg">
                    <?php }?>   
                    <?php if(isset($_SESSION['userID'])) {?> 
                    <div class="follow-collection row follow-collection-popup">
                        <?php if($row['comprado'] == 1 && $row['leido'] == 1) {?> 
                            <a href="#" class="not-already-readed-link" popup="1" especial="<?php echo $row["ed_especial"]?>" read-btn="1" data-vol-id="<?php echo $row["ID"]?>" data-vol-num="<?php echo $row["volumen"]?>" data-col-id="<?php echo $row["ColID"]?>">Leído</a>            
                        <?php }else {?>
                            <a href="#" class="already-readed-link" popup="1" read-btn="1" especial="<?php echo $row["ed_especial"]?>" data-vol-id="<?php echo $row["ID"]?>" data-vol-num="<?php echo $row["volumen"]?>" data-col-id="<?php echo $row["ColID"]?>">No leído</a>         
                        <?php } ?>
                    </div>
                    <div class="follow-collection row follow-collection-popup">
                        <?php if($row['comprado'] == 1) {?> 
                            <a href="#" class="not-already-bought-link" popup="1" especial="<?php echo $row["ed_especial"]?>" data-vol-id="<?php echo $row["ID"]?>" data-vol-num="<?php echo $row["volumen"]?>" data-col-id="<?php echo $row["ColID"]?>">Comprado</a>            
                        <?php }else {?>
                            <a href="#" class="already-bought-link" popup="1" especial="<?php echo $row["ed_especial"]?>" data-vol-id="<?php echo $row["ID"]?>" data-vol-num="<?php echo $row["volumen"]?>" data-col-id="<?php echo $row["ColID"]?>">No comprado</a>         
                        <?php } ?>
                    </div>      
                    <?php } ?>     
                </div>
                <div class="collection-info collection-info-popup w50 row wrap">
                    <?php if(isset($_SESSION['userID'])) {?>
                    <?php } ?>
                    <div class="info w100">  
                        <h1><?php echo $row["titulo_coleccion"]?> <?php echo $row["volumen"]?></h1>
                        <h3>Información</h3>
                        <ul>
                            <li><span class="info-title">Título:</span> <?php echo $row["titulo_coleccion"]?> n.º <?php echo $row["volumen"]?></li>
                            <li><span class="info-title">Título original:</span> <?php echo $row["titulo_original"]?> <?php echo $row["volumen"]?></li>
                            <li><span class="info-title">Autor:</span> <?php echo $row["autor"]?></li>
                            <li><span class="info-title">Artista:</span> <?php echo $row["artista"]?></li>
                            <li><span class="info-title">Idioma:</span> <?php echo $row["idioma"]?></li>
                            <li><span class="info-title">Editorial:</span> <?php echo $row["editorial"]?></li>
                            <li><span class="info-title">Demografía:</span> <?php echo $row["demografia"]?></li>
                            <li><span class="info-title">Páginas:</span> <?php echo $row["paginas"]?></li>
                            <li><span class="info-title">Precio:</span> <?php echo $row["precio"]?> €</li>
                            <li><span class="info-title">Fecha:</span> <?php echo date("d/m/Y", strtotime($row["fecha"]))?></li>
                        </ul>       
                        <h3>Sinopsis del volumen</h3>                                        
                        <p class="item-desc">                        
                            <?php echo $row["sinopsis"]?>
                        </p>
                    </div>
                </div>
            </div>
            <div class="w100 row">
                <div class="w100">
                    <h1 class="header-menu">Comentarios</h1>
                    <div id="comments-con">
                    </div>
                    <?php if(isset($_SESSION['user'])) {?>
                    <div id="user-comment">
                        <h3>Comenta:</h3>
                        <textarea name="comment-text" id="comment-text" class="comment-text"></textarea>
                        <button id="send-comment-popup" data-vol="<?php echo $row["volumen"]?>" class="button-comment">Enviar</button>
                    </div>                
                    <?php } else{ ?>
                    <div class="comment-warning">
                        <p>¡Inicia sesión para comentar!</p>
                    </div>
                    <?php } ?>                     
                </div>                
            </div>
        </div>
    <?php      
    }          
?>