<?php

$user = 'root';
$password = '';
$db = 'listadomg';
$host = 'localhost';
$port = 3306;

$link = mysqli_init();
$succes = mysqli_real_connect(
    $link,
    $host,
    $user,
    $password,
    $db,
    $port
);