<?php session_start();?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <title>Manga Sheet - Colecciones</title>
</head>
<body>
    <header></header>
    <main class="m0a">
        <section id="collection-desc">
            <div id="collection-container" class="row w100"></div>
        </section> 
        <section id="weekly-product">
            <div id="product-container" class="w100 row product-container"></div>
            <div id="comment-container" class="w100 row product-container hidden">
                <div class="row w100 header">
                    <h1 class="w100 header-menu">Comentarios</h1>
                    <ul class="row">
                        <li><a href='#volumes' class="vol-link">Volúmenes</a></li>
                    </ul>                
                </div>
                <div id="comments-con" class="w100">
                </div>
                <?php if(isset($_SESSION['user'])) {?>
                <div id="user-comment" class="w100">
                    <h3>Comenta:</h3>
                    <textarea name="comment-text" id="comment-text" class="comment-text"></textarea>
                    <button id="send-comment" class="button-comment">Enviar</button>
                </div>                
                <?php } else{ ?>
                <div class="comment-warning">
                    <p>¡Inicia sesión para comentar!</p>
                </div>
                <?php } ?>
            </div>
        </section>
    </main>
    <script src="./js/col.js"></script>
    <script src="./js/snippets.js"></script>
</body>
</html>