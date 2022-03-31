<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <title>Manga Sheet</title>
</head>
<body>
    <header></header>
    <main class="m0a">            
        <section id="search-bar-section">
            <div id="search-container" class="w100 row search-bar-container">
                <input type="text" name="search-bar" id="search-bar" placeholder="Busca por título...">
                <a class="search-icon" href="#"><i class="fas fa-search"></i></a>
            </div>
        </section>
        <section id="weekly-product">
            <div id="product-container" class="w100 row product-container"></div>
        </section>
    </main>
    <script src="./js/script.js"></script>
    <script src="./js/snippets.js"></script>
</body>
</html>