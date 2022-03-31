<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <title>Manga Sheet - Añadir</title>
</head>
<body>
    <header></header>
    <main class="m0a">    
        <section id="weekly-product">
            <h1>Nuevo manga / Nueva novela ligera</h1>   
            <div class="wrap-item"> 
                <div class="add-btn"><a href="#" class="add-item" onclick="add_item()">+</a></div>         
                <div class="del-btn"><a href="#" class="add-item" onclick="remove_item()">-</a></div>            
                <div id="add-item">
                    <form id="send0" class="add-form" id="add-item">                                        
                        <div class="row item-add wrap">
                            <div class="w25">
                                <label for="coleccion">Colección:</label>
                                <select id="coleccion0" name="coleccion"></select>
                            </div>      
                            <div class="w25">
                                <label for="vol">Volumen:</label>
                                <input  type="text" id="vol0" name="vol" />
                            </div>      
                            <div class="w25">
                                <label for="precio">Precio:</label>
                                <input type="number" step="any" id="precio0" name="precio"></input>
                            </div>
                            <div class="w25">
                                <label for="fecha">Fecha:</label>
                                <input type="date" id="fecha0" name="fecha" />
                            </div>
                            <div class="w25">
                                <label for="paginas">Páginas:</label>
                                <input type="number" id="paginas0" name="paginas" />
                            </div>
                            <div class="w25">
                                <label for="portada">Portada:</label>
                                <input type="file" id="portada0" name="portada" />
                            </div>
                            <div class="w25">
                                <label for="especial">Edición especial:</label>
                                <select id="especial0" name="especial">
                                    <option value="0">No</option>
                                    <option value="1">Sí</option>
                                </select>
                            </div>   
                            <div class="w25">
                                <label for="esnovela">Tipo:</label>
                                <select id="esnovela0" name="esnovela">
                                    <option value="0">Manga</option>
                                    <option value="1">Novela ligera</option>
                                </select>
                            </div>                    
                        </div>                    
                    </form>
                </div>
                <div class="w100">
                    <button onclick="add_all()" name="item">Enviar todo</button>
                </div>  
            </div>                  
        </section>
        <section id="weekly-product">
            <h1>Nueva editorial</h1>
            <form action="post.php" method="post">
                <div class="row wrap add-form">
                    <div class="w25">
                        <label for="editorial">Editorial:</label>
                        <input type="text" id="editorial" name="editorial" />
                    </div>
                    <div class="w100">
                        <button name="editor" type="submit">Enviar</button>
                    </div>                 
                </div>
            </form>
        </section>
    </main>
    <script src="./js/add.js"></script>
    <script src="./js/snippets.js"></script>
</body>
</html>