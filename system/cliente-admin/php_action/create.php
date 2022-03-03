<?php
// Sessão
session_start();
// conexão
require_once 'db_connect.php';

if(isset($_POST['btn-cadastrar'])):
	$CinemaId = mysqli_escape_string($connect, $_POST['CinemaId']);
	$NomeCinema = mysqli_escape_string($connect, $_POST['NomeCinema']);
	$Telefone = mysqli_escape_string($connect, $_POST['Telefone']);
	$Pais = mysqli_escape_string($connect, $_POST['Pais']);
	$Estado = mysqli_escape_string($connect, $_POST['Estado']);
	$Cidade = mysqli_escape_string($connect, $_POST['Cidade']);
	$Bairro = mysqli_escape_string($connect, $_POST['Bairro']);
	$Cep = mysqli_escape_string($connect, $_POST['Cep']);
	$Email = mysqli_escape_string($connect, $_POST['Email']);

	$sql = "INSERT INTO cinema (CinemaId, NomeCinema, Telefone, Pais, Estado, Cidade, Bairro, Cep, Email) 
			VALUES ('$CinemaId', '$NomeCinema', '$Telefone', '$Pais', '$Estado', '$Cidade', '$Bairro', '$Cep', '$Email')";
	
	if(mysqli_query($connect, $sql)):
		$_SESSION['mensagem'] = 'Cadastrado com sucesso!';
		header('Location: ../index.php');
	else:
		$_SESSION['mensagem'] = 'Erro ao cadastrar';
		header('Location: ../index.php');
	endif;
endif;