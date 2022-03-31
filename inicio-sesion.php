<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <title>Manga Sheet - Inicia sesión</title>
</head>
<body>
    <header></header>
    <main class="m0a">    
        <section id="login" class="row">
            <div class="w33 login-container"> 
                <h1>Inicia sesión</h1>                              
                <form action="sql/login.php" method="POST" class="row">
                    <div class="row w50 login-form-container wrap sesion">
                        <div class="w100">
                            <label for="username">Nombre de usuario</label>
                            <input type="text" id="uname" placeholder="Nombre de usuario..." name="uname" />
                        </div>                        
                        <div class="w100">
                            <label for="password">Contraseña</label>
                            <input type="password" id="password" placeholder="Contraseña..." name="password" />
                        </div>
                        <div class="w100">
                            <button type="submit" name="login">Iniciar sesión</button>
                        </div>  
                    </div>
                </form>
            </div>                  
        </section>
    </main>
    <script src="./js/add.js"></script>
    <script src="./js/snippets.js"></script>
</body>
</html>