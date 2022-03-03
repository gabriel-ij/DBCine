<?php
// Sessão
session_start();
// conexão
require_once 'db_connect.php';

if(isset($_POST['btn-deletar'])):
	$ClienteId = mysqli_escape_string($connect, $_POST['ClienteId']);

	$sql = "DELETE FROM Cliente WHERE ClienteId = '$ClienteId'";

	if(mysqli_query($connect, $sql)):
		$_SESSION['mensagem'] = 'Deletado com sucesso!';
		header('Location: ../index.php');
	else:
		$_SESSION['mensagem'] = 'Erro ao deletar';
		header('Location: ../index.php');
	endif;
endif;