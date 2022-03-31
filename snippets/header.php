<?php
    session_start();
?>
<nav class="row"> 
    <div class="nav-logo">
        <a href="index.php"><img class="nav-img-logo" src="assets/logo_manga.png"></a>
    </div> 
    <div class="nav-list">
        <ul class="menu-list row">
            <?php
                if(isset($_SESSION['user'])) {
                    echo '<li><a href="series.php">Mis series</a></li>';                    
                    echo '<li><a href="calendario.php">Calendario</a></li>';
                    if($_SESSION['userRank'] == 1){
                        echo '<li><a href="admin.php">Administración</a></li>';
                        echo '<li><a href="add.php">Añadir</a></li>';
                    }
                    echo '<li><a href="sql/logout.php">Desconectarse</a></li>';                    
                }else{
                    echo '<li><a href="calendario.php">Calendario</a></li>';
                    echo '<li><a href="registro.php">Registro</a></li>';
                    echo '<li><a href="inicio-sesion.php">Iniciar sesión</a></li>';
                }
            ?>                                    
        </ul>
    </div>
</nav>