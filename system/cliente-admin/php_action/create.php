<?php
// Sessão
session_start();
// conexão
require_once 'db_connect.php';

if(isset($_POST['btn-cadastrar'])):
	$ClienteId = mysqli_escape_string($connect, $_POST['ClienteId']);
	$NomeCliente = mysqli_escape_string($connect, $_POST['NomeCliente']);
	$DataNasc = mysqli_escape_string($connect, $_POST['DataNasc']);
	$DataCadastro = mysqli_escape_string($connect, $_POST['DataCadastro']);
	$Email = mysqli_escape_string($connect, $_POST['Email']);
	$Telefone = mysqli_escape_string($connect, $_POST['Telefone']);

	$sql = "INSERT INTO CLIENTE (ClienteId, NomeCliente, DataNasc, DataCadastro, Email, Telefone) 
			VALUES ('$ClienteId', '$NomeCliente', '$DataNasc', '$DataCadastro', '$Email', '$Telefone')";
	
	if(mysqli_query($connect, $sql)):
		$_SESSION['mensagem'] = 'Cadastrado com sucesso!';
		header('Location: ../index.php');
	else:
		$_SESSION['mensagem'] = 'Erro ao cadastrar';
		header('Location: ../index.php');
	endif;
endif;