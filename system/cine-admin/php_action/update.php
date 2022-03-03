<?php
// Sessão
session_start();
// conexão
require_once 'db_connect.php';

if(isset($_POST['btn-editar'])):
	$CinemaId = mysqli_escape_string($connect, $_POST['CinemaId']);
	$NomeCinema = mysqli_escape_string($connect, $_POST['NomeCinema']);
	$Telefone = mysqli_escape_string($connect, $_POST['Telefone']);
	$Pais = mysqli_escape_string($connect, $_POST['Pais']);
	$Estado = mysqli_escape_string($connect, $_POST['Estado']);
	$Cidade = mysqli_escape_string($connect, $_POST['Cidade']);
	$Bairro = mysqli_escape_string($connect, $_POST['Bairro']);
	$Cep = mysqli_escape_string($connect, $_POST['Cep']);
	$Email = mysqli_escape_string($connect, $_POST['Email']);

	$sql = "UPDATE Cinema 
			SET CinemaId = '$CinemaId', NomeCinema = '$NomeCinema', Telefone = '$Telefone', Pais = '$Pais', Estado = '$Estado', Cidade = '$Cidade', Bairro = '$Bairro', Cep = '$Cep', Email = '$Email'
			WHERE NomeCinema = '$NomeCinema'";

	if(mysqli_query($connect, $sql)):
		$_SESSION['mensagem'] = 'Atualizado com sucesso!';
		header('Location: ../index.php');
	else:
		$_SESSION['mensagem'] = 'Erro ao atualizar';
		header('Location: ../index.php');
	endif;
endif;