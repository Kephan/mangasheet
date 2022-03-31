<?php
    require_once 'connect.php';  
             
    $sql = "SELECT * FROM colecciones a LEFT JOIN editoriales b ON b.ID = a.editorial LEFT JOIN demografias c ON c.demoID = a.demografia"; 
    
    $result = mysqli_query($link, $sql) or die(mysqli_error($link));  
    while($row = mysqli_fetch_array($result)){?>            
        <ul class="col-list-container">
            <li class="collection-main">
                <div class="row">
                    <table id="col-table<?php echo $row["ColID"]?>" class="col-table">
                        <thead>
                            <tr>
                                <th>Título</th>
                                <th>Título JP</th>
                                <th>Editorial</th>
                                <th>Vol JP</th>
                                <th>Vol</th>
                                <th>Autor</th>
                                <th>Artista</th>
                                <th>Sinopsis</th>
                                <th>Idioma</th>
                                <th>Demografía</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr id="show<?php echo $row["ColID"]?>" class="show">
                                <td><?php echo $row["titulo_coleccion"]?></td>
                                <td><?php echo $row["titulo_original"]?></td>
                                <td>(<?php echo $row["ID"]?>) <?php echo $row["editorial"]?></td>
                                <td><?php echo $row["volumenes_japon"]?></td>
                                <td><?php echo $row["volumenes_es"]?></td>
                                <td><?php echo $row["autor"]?></td>
                                <td><?php echo $row["artista"]?></td>
                                <td><?php echo $row["sinopsis"]?></td>
                                <td><?php echo $row["idioma"]?></td>
                                <td><?php echo $row["demografia"]?></td>
                                <td>
                                    <div class="admin-buttons">
                                        <ul class="row">
                                            <li><a href="#" data-col="<?php echo $row["ColID"]?>" class="not-link delete"><i class="fas fa-times"></i></a></li>
                                            <li><form id="del<?php echo $row["ColID"]?>" action="./sql/delete.php" method="POST"></form><a href="#" data-col="<?php echo $row["ColID"]?>" class="not-link edit-col"><i class="fas fa-pen"></i></a></li>
                                        </ul>
                                        <input form="del<?php echo $row["ColID"]?>" type="hidden" name="ColID" value="<?php echo $row["ColID"]?>">
                                    </div>
                                </td>
                            </tr>
                            <tr id="edit<?php echo $row["ColID"]?>" class="edit">
                                <form id="form<?php echo $row["ColID"]?>" action="./sql/update_col.php" method="POST">                                   
                                    <td><input form="form<?php echo $row["ColID"]?>" type="text" name="titulo" value="<?php echo $row["titulo_coleccion"]?>"></td>
                                    <td><input form="form<?php echo $row["ColID"]?>" type="text" name="titulo_og" value="<?php echo $row["titulo_original"]?>"></td>
                                    <td><select form="form<?php echo $row["ColID"]?>" class="editorial" data-ed="<?php echo $row["ID"]?>" name="editorial"></select></td>
                                    <td><input form="form<?php echo $row["ColID"]?>" type="number" name="vol_jap" value="<?php echo $row["volumenes_japon"]?>"></td>
                                    <td><input form="form<?php echo $row["ColID"]?>" type="number" name="vol_es" value="<?php echo $row["volumenes_es"]?>"></td>
                                    <td><input form="form<?php echo $row["ColID"]?>" type="text" name="autor" value="<?php echo $row["autor"]?>"></td>
                                    <td><input form="form<?php echo $row["ColID"]?>" type="text" name="artista" value="<?php echo $row["artista"]?>"></td>
                                    <td><input form="form<?php echo $row["ColID"]?>" type="text" name="sinopsis" value="<?php echo $row["sinopsis"]?>"></td>                                    
                                    <td>
                                        <select form="form<?php echo $row["ColID"]?>" id="idioma" data-lang="<?php echo $row["idioma"]?>" name="idioma">
                                            <option value="Español">Español</option>
                                            <option value="Inglés">Inglés</option>
                                        </select>
                                    </td>
                                    <td><select form="form<?php echo $row["ColID"]?>" class="demografia" data-demo="<?php echo $row["demoID"]?>" name="demografia"></select></td>
                                    <td>
                                        <div class="admin-buttons">
                                            <ul class="row">
                                                <li><a href="#" data-col="<?php echo $row["ColID"]?>" class="not-link delete"><i class="fas fa-times"></i></a></li>
                                                <li><a href="#" data-col="<?php echo $row["ColID"]?>" class="not-link save-col"><i class="fas fa-save"></i></a></li>
                                                <li><form id="del<?php echo $row["ColID"]?>" action="./sql/delete.php" method="POST"><a href="#" data-col="<?php echo $row["ColID"]?>" class="not-link back"><i class="fas fa-undo"></i></a></li>                                                
                                            </ul>
                                            <input form="del<?php echo $row["ColID"]?>" type="hidden" name="ColID" value="<?php echo $row["ColID"]?>"></form>
                                        </div>
                                    </td>
                                    <input form="form<?php echo $row["ColID"]?>" type="hidden" name="ColID" value="<?php echo $row["ColID"]?>">
                                </form>
                            </tr>
                        </tbody> 
                    </table>
                    <a href="" class="not-link" ColID="<?php echo $row["ColID"]?>" id="down-arrow"><i class="fas fa-chevron-down"></i></a>
                </div>
            </li>
            <li>
                <ul id="item-list-container<?php echo $row["ColID"]?>" class="item-list-container">                    
                </ul>
            </li>                    
        </ul> 
    <?php      
    }          
?>