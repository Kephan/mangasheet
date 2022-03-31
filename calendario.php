<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <title>Manga Sheet - Calendario</title>
</head>
<body>
    <header></header>
    <main class="m0a">            
        <section id="change-date">
            <div class="row w100">
                <div class="w25"><a id="prev-month" href=""></a></div>
                <div class="w50"><a id="act-month" href=""></a></div>
                <div class="w25"><a  id="next-month" href=""></a></div>
            </div>
        </section>
        <section id="weekly-product"></section>
        <div id="product-container" class="w100 row product-container"></div>

    </main>
    <script src="./js/monthly.js"></script>
    <script src="./js/snippets.js"></script>
</body>
</html>