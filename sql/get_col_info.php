    <?php
    $url = $_POST['url'];
    session_start();

    if(isset($_SESSION['userID'])){
        $userID = $_SESSION['userID'];
    }else{
        $userID = 0;
    }
    
    $url_components = parse_url($url);

    if(array_key_exists("query", $url_components)){
        parse_str($url_components['query'], $params);
    }
    
    $collection = $params['coleccion'];


    require_once 'connect.php';                
    $sql = "SELECT a.ColID, a.titulo_coleccion, a.titulo_original, a.editorial, a.volumenes_japon, a.idioma, a.volumenes_es, a.autor, a.artista, a.sinopsis, b.editorial, c.portada, d.demografia, e.userID FROM colecciones a LEFT JOIN editoriales b ON b.ID = a.editorial LEFT JOIN mangas c ON (c.coleccion = a.ColID AND c.volumen = '1') LEFT JOIN demografias d ON d.demoID = a.demografia LEFT JOIN series e ON e.colID = a.ColID AND e.userID = $userID WHERE a.ColID = $collection"; 

    $result = mysqli_query($link, $sql) or die(mysqli_error($link));  
    while($row = mysqli_fetch_array($result)){?>         
        <div class="collection-info-cover row w25">            
        <?php if($row["portada"] != "") {?>            
            <img class="col-cover <?php echo strtolower($row["demografia"])?>" src="portadas/<?php echo $row["portada"]?>">
        <?php }else { ?>
            <img class="col-cover <?php echo strtolower($row["demografia"])?>" src="portadas/nodisponible.jpg">
        <?php }?>                
        </div>
        <div class="collection-info w75 row wrap">            
            <div class="info w100">  
            <?php if(isset($_SESSION['userID'])) {?>
                <div class="follow-collection">
                    <?php if(!isset($row['userID'])) {?> 
                        <a href="#" class="follow-coll-link" data-col-id="<?php echo $row["ColID"]?>">Seguir</a>            
                    <?php }else {?>
                        <a href="#" class="unfollow-coll-link" data-col-id="<?php echo $row["ColID"]?>">Dejar de seguir</a>            
                    <?php } ?>
                </div>
                <?php } ?>
                <h1>Información</h1>
                <ul>
                    <li><span class="info-title">Título:</span> <?php echo $row["titulo_coleccion"]?></li>
                    <li><span class="info-title">Título original:</span> <?php echo $row["titulo_original"]?></li>
                    <li><span class="info-title">Autor:</span> <?php echo $row["autor"]?></li>
                    <li><span class="info-title">Artista:</span> <?php echo $row["artista"]?></li>
                    <li><span class="info-title">Volúmenes editados:</span> <?php echo $row["volumenes_es"]?></li>
                    <li><span class="info-title">Volúmenes totales:</span> <?php echo $row["volumenes_japon"]?></li>
                    <li><span class="info-title">Idioma:</span> <?php echo $row["idioma"]?></li>
                    <li><span class="info-title">Editorial:</span> <?php echo $row["editorial"]?></li>
                    <li><span class="info-title">Demografía:</span> <?php echo $row["demografia"]?></li>
                </ul>
            </div>    
            <div class="info w100">  
                <h1>Sinopsis</h1>
                <p class="item-desc">
                    <?php echo $row["sinopsis"]?>
                </p>
            </div>                    
        </div>
    <?php      
    }                
?>