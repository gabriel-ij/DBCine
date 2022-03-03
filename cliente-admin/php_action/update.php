<?php
// Sessão
session_start();
// conexão
require_once 'db_connect.php';

if(isset($_POST['btn-editar'])):
	$ClienteId = mysqli_escape_string($connect, $_POST['ClienteId']);
	$NomeCliente = mysqli_escape_string($connect, $_POST['NomeCliente']);
	$DataNasc = mysqli_escape_string($connect, $_POST['DataNasc']);
	$DataCadastro = mysqli_escape_string($connect, $_POST['DataCadastro']);
	$Email = mysqli_escape_string($connect, $_POST['Email']);
	$Telefone = mysqli_escape_string($connect, $_POST['Telefone']);

	$sql = "UPDATE Cliente 
			SET ClienteId = '$ClienteId', NomeCliente = '$NomeCliente', DataNasc = '$DataNasc', DataCadastro = '$DataCadastro', Email = '$Email', Telefone = '$Telefone'
			WHERE ClienteId = '$ClienteId'";

	if(mysqli_query($connect, $sql)):
		$_SESSION['mensagem'] = 'Atualizado com sucesso!';
		header('Location: ../index.php');
	else:
		$_SESSION['mensagem'] = 'Erro ao atualizar';
		header('Location: ../index.php');
	endif;
endif;