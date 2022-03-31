<?php 
    require_once 'connect.php';            
    session_start();

    $userID = $_SESSION['userID'];

    $sql = "SELECT a.ColID, a.titulo_coleccion, a.titulo_original, a.editorial, a.volumenes_japon, a.volumenes_es, a.idioma, a.autor, a.artista, a.sinopsis, b.esnovela, b.volumen, b.precio, b.fecha, b.paginas, b.portada, b.ed_especial, c.editorial, d.demografia FROM colecciones a LEFT JOIN mangas b ON b.coleccion = a.ColID LEFT JOIN editoriales c ON c.ID = a.editorial LEFT JOIN demografias d ON d.demoID = a.demografia LEFT JOIN series e ON e.colID = a.ColID WHERE (e.userID = $userID AND b.volumen = 1) ORDER BY b.fecha DESC"; 
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
                                <?php
                                    $colid = $row["ColID"];
                                    $count = "SELECT COUNT(*) as total FROM vols_comprados WHERE (userID = $userID AND colID = $colid AND leido = 1)";
                                    $vols = mysqli_query($link, $count) or die(mysqli_error($link));
                                    $all = mysqli_fetch_assoc($vols);
                                ?>
                                <p><?php echo $row["titulo_coleccion"]?></p>
                                <?php if($all['total'] != 0) { ?>
                                    <p>Has leído <?php echo $all['total']?> de <?php echo $row["volumenes_es"]?> volúmenes</p>
                                <?php } else {?>
                                    <p>No has leído ningún volumen</p>
                                <?php } ?>   
                            </div>
                        </div>                        
                    </div> 
                </a>
            </div>
    <?php      
    }          
?>