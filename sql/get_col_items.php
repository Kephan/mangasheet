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
    
    $col = $params['coleccion'];
    require_once 'connect.php';                
    $sql = "SELECT a.ColID, a.titulo_coleccion, a.titulo_original, a.editorial, a.volumenes_japon, a.volumenes_es, a.autor, a.artista, a.sinopsis, b.ID, b.esnovela, b.volumen, b.precio, b.fecha, b.paginas, b.portada, b.ed_especial, c.editorial, d.demografia, e.vol_num, e.leido FROM colecciones a LEFT JOIN mangas b ON b.coleccion = a.ColID LEFT JOIN editoriales c ON c.ID = a.editorial LEFT JOIN demografias d ON d.demoID = a.demografia LEFT JOIN vols_comprados e ON (e.vol_num = b.volumen AND e.colID = a.ColID AND e.userID = $userID AND e.edespecial = b.ed_especial) WHERE a.ColID = $col ORDER BY b.volumen + 0 ASC";
    $first = true;
    $result = mysqli_query($link, $sql) or die(mysqli_error($link));  
    while($row = mysqli_fetch_array($result)){
        if($first == true){ ?>
            <div class="row w100 header">
                <h1 class="w100 header-menu" manga-title="1" data-col-id="<?php echo $row["ColID"]?>"><?php echo $row["titulo_coleccion"]?></h1>
                <ul class="row">
                    <li><a href='#comments' class="comment-link">Comentarios</a></li>
                </ul>                
            </div>
        <?php
        $first = false;
         } ?>                
        <div class="product w20">   
            <div class="inner">
                <?php if(isset($_SESSION['userID'])) {?>
                    <?php if(!isset($row['vol_num'])) { ?>
                        <div class="already-readed"><a href="#" especial="<?php echo $row["ed_especial"]?>" data-col-id="<?php echo $row["ColID"]?>" data-vol-id="<?php echo $row["ID"]?>" data-vol-num="<?php echo $row["volumen"]?>" class="already-bought-link"><i class="far fa-bookmark"></i></a></div>
                    <?php }else { ?>
                        <div class="already-readed"><a href="#" especial="<?php echo $row["ed_especial"]?>" data-col-id="<?php echo $row["ColID"]?>" data-vol-id="<?php echo $row["ID"]?>" data-vol-num="<?php echo $row["volumen"]?>" class="not-already-bought-link"><i class="fas fa-bookmark"></i></a></div>                        
                    <?php } ?>
                    <?php if($row['leido'] == 0) { ?>
                        <div class="already-readed read"><a href="#" especial="<?php echo $row["ed_especial"]?>" data-col-id="<?php echo $row["ColID"]?>" data-vol-id="<?php echo $row["ID"]?>" data-vol-num="<?php echo $row["volumen"]?>" class="already-readed-link"><i class="far fa-check-square"></i></a></div>
                    <?php }else { ?>
                        <div class="already-readed read"><a href="#" especial="<?php echo $row["ed_especial"]?>" data-col-id="<?php echo $row["ColID"]?>" data-vol-id="<?php echo $row["ID"]?>" data-vol-num="<?php echo $row["volumen"]?>" class="not-already-readed-link"><i class="fas fa-check-square"></i></a></div>
                    <?php } ?>
                <a href="#" data-col="<?php echo $row["ColID"]?>" especial="<?php echo $row["ed_especial"]?>" data-vol="<?php echo $row["volumen"]?>" class="item-popup"> 
                <?php } ?>
                    <div class="inner-content <?php echo strtolower($row["demografia"])?>">
                        <?php if($row['ed_especial'] == 1) { ?>
                            <div class="tag special-ed">Edición especial</div>
                        <?php } ?>
                        <?php if($row['esnovela'] == 0) { ?>
                            <div class="tag is-manga">Manga</div>
                        <?php }else { ?>
                            <div class="tag is-novel">Novela ligera</div>
                        <?php }
                        if($row["portada"] != "") {
                        ?>
                            <img class="cover" src="portadas/<?php echo $row["portada"]?>">
                        <?php }else { ?>
                            <img class="cover" src="portadas/nodisponible.jpg">
                        <?php }?>
                        <div class="inner-quick-info stable">
                            <p><?php echo $row["titulo_coleccion"]?> n.º <?php echo $row["volumen"]?></p>
                            <p><?php echo $row["precio"]?> € - <?php echo $row["paginas"]?> páginas </p>
                            <p><?php echo date("d/m/Y", strtotime($row["fecha"]))?></p>
                        </div>
                    </div>   
                <?php if(isset($_SESSION['userID'])) {?>
                </a>                     
                <?php }?>
            </div> 
        </div>
    <?php      
    }                
?>