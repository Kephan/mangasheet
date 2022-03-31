<?php
    require_once 'connect.php';  

    $colID = $_POST['colID'];  

    $sql = "SELECT * FROM mangas WHERE coleccion = $colID ORDER BY volumen + 0 ASC";            
    
    $result = mysqli_query($link, $sql) or die(mysqli_error($link));  
    while($row = mysqli_fetch_array($result)){?>            
        <li class="item-list">
            <table class="col-table">
                <thead>
                    <tr>
                        <th>Volumen</th>
                        <th>Precio</th>
                        <th>Fecha</th>
                        <th>Páginas</th>
                        <th>Portada</th>
                        <th>Ed. especial</th>
                        <th>¿Novela?</th>                                        
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr id="item-show<?php echo $row["ID"]?>" class="show">                                           
                        <td><?php echo $row["volumen"]?></td>
                        <td><?php echo $row["precio"]?></td>
                        <td><?php echo date("d/m/Y", strtotime($row["fecha"]))?></td>
                        <td><?php echo $row["paginas"]?></td>
                        <td><img src="portadas/<?php echo $row["portada"]?>" /></td>
                        <td><?php echo $row["ed_especial"]?></td>
                        <td><?php echo $row["esnovela"]?></td>                                        
                        <td>
                            <div class="admin-buttons">
                                <ul class="row">
                                    <li><a href="#" data-col="<?php echo $row["ID"]?>" class="not-link delete-item"><i class="fas fa-times"></i></a></li>
                                    <li><form id="item-del<?php echo $row["ID"]?>" action="./sql/delete_item.php" method="POST"></form><a href="#" data-col="<?php echo $row["ID"]?>" class="not-link edit-item"><i class="fas fa-pen"></i></a></li>
                                </ul>
                                <input form="item-del<?php echo $row["ID"]?>" type="hidden" name="ID" value="<?php echo $row["ID"]?>">
                            </div>
                        </td>
                    </tr>
                    <tr id="item-edit<?php echo $row["ID"]?>" class="edit">
                        <form id="edit-form<?php echo $row["ID"]?>" action="./sql/update_item.php" method="POST" enctype="multipart/form-data">                                                               
                            <td><input form="edit-form<?php echo $row["ID"]?>" type="text" name="volumen" value="<?php echo $row["volumen"]?>"></td>                            
                            <td><input form="edit-form<?php echo $row["ID"]?>" type="number" step="any" name="precio" value="<?php echo $row["precio"]?>"></td>
                            <td><input form="edit-form<?php echo $row["ID"]?>" type="date" name="fecha" value="<?php echo $row["fecha"]?>"></td>
                            <td><input form="edit-form<?php echo $row["ID"]?>" type="number" name="paginas" value="<?php echo $row["paginas"]?>"></td>
                            <td><input form="edit-form<?php echo $row["ID"]?>" type="file" name="portada" value="<?php echo $row["portada"]?>"></td>
                            <td><input form="edit-form<?php echo $row["ID"]?>" type="text" name="ed_especial" value="<?php echo $row["ed_especial"]?>"></td>
                            <td><input form="edit-form<?php echo $row["ID"]?>" type="text" name="esnovela" value="<?php echo $row["esnovela"]?>"></td>
                            <td>
                                <div class="admin-buttons">
                                    <ul class="row">
                                        <li><a href="#" data-col="<?php echo $row["ID"]?>" class="not-link delete-item"><i class="fas fa-times"></i></a></li>
                                        <li><a href="#" data-col="<?php echo $row["ID"]?>" class="not-link save-item"><i class="fas fa-save"></i></a></li>
                                        <li><form id="item-del<?php echo $row["ID"]?>" action="./sql/delete_item.php" method="POST"><a href="#" data-col="<?php echo $row["ID"]?>" class="not-link back-item"><i class="fas fa-undo"></i></a></li>                                                
                                    </ul>
                                    <input form="item-del<?php echo $row["ID"]?>" type="hidden" name="ID" value="<?php echo $row["ID"]?>"></form>
                                </div>
                            </td>
                            <input form="edit-form<?php echo $row["ID"]?>" type="hidden" name="ID" value="<?php echo $row["ID"]?>">
                        </form>
                    </tr>
                </tbody> 
            </table>
        </li>      
    <?php      
    }          
?>