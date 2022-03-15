<?php
// checador de erros
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
// conexão com o banco de dados
$servername = 'localhost';
$username = 'root';
$password = '';
$db_name = 'dbcine';

$connect = mysqli_connect($servername, $username, $password, $db_name);

mysqli_set_charset($connect, 'utf8'); // define codificação

if(mysqli_connect_error()):
	echo 'Erro na conexão: '.mysqli_connect_error();
endif;
