<?php 
    require_once 'connect.php';  
    
    $url = $_POST['url'];

    $url_components = parse_url($url);

    $fecha = getdate();
    
    if(array_key_exists("query", $url_components)){
        parse_str($url_components['query'], $params);
        
        if(array_key_exists("mes", $params)){
            if($fecha['mon'] >= $params['mes']){
                $qmes = $fecha['mon'] - $params['mes'];
                $msign = "-";
            }
        
            if($fecha['mon'] < $params['mes']){
                $qmes = $params['mes'] - $fecha['mon'];                        
                $msign = "+";
            }   
        }else{
            $qmes = 0;
        } 
        
        if(array_key_exists("ano", $params)){
            if($fecha['year'] >= $params['ano']){
                $qano = $fecha['year'] - $params['ano'];
                $ysign = "-";
            }
        
            if($fecha['year'] < $params['ano']){
                $qano = $params['ano'] - $fecha['year'];
                $ysign = "+";
            }
        }else{
            $qano = 0;
        }
        
    }else{
        $qmes = 0;
        $qano = 0;
        $msign = "-";
        $ysign = "-";
    }

    session_start();
    
    $sql = "SELECT a.ColID, a.titulo_coleccion, a.titulo_original, a.editorial, a.volumenes_japon, a.volumenes_es, a.idioma, a.autor, a.artista, a.sinopsis, b.esnovela, b.volumen, b.precio, b.fecha, b.paginas, b.portada, b.ed_especial, c.editorial, d.demografia FROM colecciones a LEFT JOIN mangas b ON b.coleccion = a.ColID LEFT JOIN editoriales c ON c.ID = a.editorial LEFT JOIN demografias d ON d.demoID = a.demografia WHERE MONTH(b.fecha) = MONTH(now() $msign INTERVAL $qmes MONTH) AND YEAR(b.fecha) = YEAR(now() $ysign INTERVAL $qano YEAR) ORDER BY b.fecha ASC"; 

    $result = mysqli_query($link, $sql) or die(mysqli_error($link));  
    while($row = mysqli_fetch_array($result)){?>
            <div class="product w20" data-editorial="<?php echo $row["editorial"]?>">                 
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
                                    <li><span class="info-title">Demografía:</span> <?php echo $row["demografia"]?></li>                                    
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
                                <p><?php echo $row["precio"]?> €</p>
                                <p><?php echo date("d/m/Y", strtotime($row["fecha"]))?></p>
                            </div>
                        </div>                        
                    </div> 
                </a>
            </div>
    <?php      
    }          
?>