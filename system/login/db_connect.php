<?php
// conexão com o banco de dados
$servername = "localhost"; // nome do servidor
$username = "root"; // nome do usuário
$password = "579271mysql"; // senha
$db_name = "login"; //nome do db

/* The MySQLi functions allows you to access MySQL database servers 
*/
// atribuindo à 'connect' a função que conecta ao banco de dados
$connect = mysqli_connect($servername, $username, $password, $db_name);

// verifica se há erros
if(mysqli_connect_error()):
    echo "Falha na conexão ".mysqli_connect_error();
endif;