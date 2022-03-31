<?php 
    require_once 'connect.php';            
    session_start();

    $userID = $_SESSION['userID'];

    $sql = "SELECT a.ColID, a.titulo_coleccion, a.titulo_original, a.editorial, a.volumenes_japon, a.volumenes_es, a.idioma, a.autor, a.artista, a.sinopsis, b.esnovela, b.volumen, b.precio, b.fecha, b.paginas, b.portada, b.ed_especial, c.editorial, d.demografia FROM colecciones a LEFT JOIN mangas b ON b.coleccion = a.ColID LEFT JOIN editoriales c ON c.ID = a.editorial LEFT JOIN demografias d ON d.demoID = a.demografia LEFT JOIN series e ON e.colID = a.ColID WHERE (e.userID = $userID AND b.volumen = 1) ORDER BY b.fecha DESC"; 
    $result = mysqli_query($link, $sql) or die(mysqli_error($link));      
    while($row = mysqli_fetch_array($result)){?>    
        <div class="serie w100 row">            
            <?php
                $colid = $row["ColID"];
                $count = "SELECT COUNT(*) AS leidos FROM vols_comprados WHERE (userID = $userID AND colID = $colid AND leido = 1)";
                $vols = mysqli_query($link, $count) or die(mysqli_error($link));
                $all = mysqli_fetch_assoc($vols);
                $countb = "SELECT COUNT(*) AS comprados FROM vols_comprados WHERE (userID = $userID AND colID = $colid AND comprado = 1)";
                $volsb = mysqli_query($link, $countb) or die(mysqli_error($link));
                $allb = mysqli_fetch_assoc($volsb);
            ?>
            <div class="serie-cover w20">
                <?php if($row["portada"] != "") { ?>                        
                    <img class="cover" src="portadas/<?php echo $row["portada"]?>">
                <?php }else { ?>
                    <img class="cover" src="portadas/nodisponible.jpg">
                <?php }?>      

                <?php if($row['ed_especial'] == 1) { ?>
                        <div class="tag special-ed">Edición especial</div>
                    <?php } ?>
                    <?php if($row['esnovela'] == 0) { ?>
                        <div class="tag is-manga">Manga</div>
                    <?php }else { ?>
                        <div class="tag is-novel">Novela ligera</div>
                    <?php } ?>
            </div>
            <div class="serie-info w80">
                <div class="serie-content <?php echo strtolower($row["demografia"])?>">                        
                    <div class="serie-quick-info">
                        <h1 class="serie-title"><a class="item-wrapper w100" href="colecciones.php?coleccion=<?php echo $row["ColID"]?>"><?php echo $row["titulo_coleccion"]?></a></h1>
                        <ul class="serie-list-info">
                            <li><span>Último volumen comprado: </span><?php echo date("d/m/Y", strtotime($row["fecha"]))?></li>                                
                            <li><span>Próximo volumen: </span>0</li>
                            <li><span>Comprados</li>
                            <div class="progress-bar" data-vol-max="<?php echo $row["volumenes_es"]?>" data-vol-read="<?php echo $allb['comprados']?>"><div class="bar-progress"><div class="text-progress row"><?php echo $allb['comprados']?> de <?php echo $row["volumenes_es"]?></div></div></div>
                            <li><span>Leídos</li>
                            <div class="progress-bar" data-vol-max="<?php echo $row["volumenes_es"]?>" data-vol-read="<?php echo $all['leidos']?>"><div class="bar-progress"><div class="text-progress"><?php echo $all['leidos']?> de <?php echo $row["volumenes_es"]?></div></div></div>
                        </ul>
                    </div>
                </div>                        
            </div> 
        </div>
    <?php      
    }          
?>