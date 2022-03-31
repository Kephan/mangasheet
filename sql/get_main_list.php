<?php 
    require_once 'connect.php';        

    if(isset($_POST['search'])){
        $search = $_POST['search'];    
    }else{
        $search = '';
    }

    $url = $_POST['url'];

    $url_components = parse_url($url);    

    $count = "SELECT COUNT(*) as total FROM colecciones a LEFT JOIN mangas b ON a.ColID = b.coleccion WHERE a.titulo_coleccion LIKE '%$search%' OR a.autor LIKE '%$search%' OR a.titulo_original LIKE '%$search%'";
    $vols = mysqli_query($link, $count) or die(mysqli_error($link));
    $all = mysqli_fetch_assoc($vols);    

    if(array_key_exists("query", $url_components)){        
        parse_str($url_components['query'], $params);
        if(array_key_exists("page", $params)){
            if(($all["total"] / 10) > $params["page"]){
                $page = $params["page"] * 10;
            }else{
                $page = 0;
            }            
        }     
    }else{
        $page = 0;
    }

    $sql = "SELECT a.ColID, a.titulo_coleccion, a.titulo_original, a.editorial, a.volumenes_japon, a.volumenes_es, a.idioma, a.autor, a.artista, a.sinopsis, b.esnovela, b.volumen, b.precio, b.fecha, b.paginas, b.portada, b.ed_especial, c.editorial, d.demografia FROM colecciones a LEFT JOIN mangas b ON b.coleccion = a.ColID LEFT JOIN editoriales c ON c.ID = a.editorial LEFT JOIN demografias d ON d.demoID = a.demografia WHERE a.titulo_coleccion LIKE '%$search%' OR a.autor LIKE '%$search%' OR a.titulo_original LIKE '%$search%' ORDER BY b.fecha DESC LIMIT $page, 10";     
    $result = mysqli_query($link, $sql) or die(mysqli_error($link));  
    while($row = mysqli_fetch_array($result)){?>
        <div class="product w20"> 
            <a class="item-wrapper" href="colecciones.php?coleccion=<?php echo $row["ColID"]?>">  
                <div class="inner">
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
                        <div class="inner-info">
                            <ul>
                                <li><span class="info-title">Título:</span> <?php echo $row["titulo_coleccion"]?></li>
                                <li><span class="info-title">Título original:</span> <?php echo $row["titulo_original"]?></li>
                                <li><span class="info-title">Autor:</span> <?php echo $row["autor"]?></li>
                                <li><span class="info-title">Artista:</span> <?php echo $row["artista"]?></li>
                                <li><span class="info-title">Volúmenes editados:</span> <?php echo $row["volumenes_es"]?></li>
                                <li><span class="info-title">Volúmenes totales:</span> <?php echo $row["volumenes_japon"]?></li>
                                <li><span class="info-title">Idioma:</span> <?php echo $row["idioma"]?></li>
                                <li><span class="info-title">Editorial:</span> <?php echo $row["editorial"]?></li>
                                <li>
                                    <span class="info-title">Sinopsis:</span>
                                    <p>
                                        <?php echo $row["sinopsis"]?>
                                    </p>
                                </li>                    
                            </ul>
                        </div>
                        <div class="inner-quick-info">
                            <p><?php echo $row["titulo_coleccion"]?> n.º <?php echo $row["volumen"]?></p>
                            <p><?php echo $row["precio"]?> € - <?php echo $row["paginas"]?> páginas </p>
                            <p><?php echo date("d/m/Y", strtotime($row["fecha"]))?></p>
                        </div>
                    </div>                        
                </div> 
            </a>
        </div>
    <?php
    }        
    if(mysqli_num_rows($result) != 0) {
    ?>
    <div class="pages row w100">
        <ul class="row page-list">                        
            <li class="page-item"><a href="#" class="<?php if ($page != 0) {?>change-page <?php }else {?> last-change-page <?php } ?>" data-page="0"><<</a></li>                                
            <li class="page-item"><a href="#" class="<?php if ($page != 0) {?>change-page <?php }else {?> last-change-page <?php } ?>" data-page="1"><</a></li>
            <li class="page-item"><span class="input-change" href="#"><?php echo ($page / 10) + 1 ?></span> de <?php echo ceil(($all["total"] / 10))?></li>  
            <li class="page-item"><a href="#" class="<?php if (($all["total"]) > $page + 10) {?>change-page <?php }else {?> last-change-page <?php } ?>" data-last-page="<?php echo ($all["total"] / 10) ?>" data-page="3">></a></li>
            <li class="page-item"><a href="#" class="<?php if (($all["total"]) > $page + 10) {?>change-page <?php }else {?> last-change-page <?php } ?>" data-page="4">>></a></li>
        </ul>
    </div>
    <?php } ?>