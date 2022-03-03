<?php
    // conecta ao banco de dados
    require_once 'db_connect.php';

    // inicia a sessão
    session_start();

    // verifica se está logado
    if(!isset($_SESSION['logado'])):
        header('Location: index.php');
    endif;

    // dados
    $id = $_SESSION['id_usuario'];
    $sql = "SELECT * FROM usuarios WHERE Id = '$id'";
    $resultado = mysqli_query($connect, $sql);
    $dados = mysqli_fetch_array($resultado);

    // encerra a conexão com o db
    mysqli_close($connect);
?>	

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home</title>
	<script src="https://kit.fontawesome.com/0b61cc5dfe.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
	<link rel="stylesheet" href="css/style.css">
</head>

<body>

<div id="background-image"></div>
<!-- <div id="background-overlay"></div> -->
<div id="background-pattern"></div>

<div id="welcome" style="color: whitesmoke;">
	<h1>Olá, <?php echo $dados['Nome']; ?>.</h1>
    <hr>
    <table class="table is-fullwidth is-hoverable has-text-centered has-text-weight-semibold">
        <tbody>
            <td><a href="../cine-admin/index.php">Filiais</a></td>
            <td><a href="../cliente-admin/index.php">Clientes</a></td>
        </tbody>
    </table>
</div>


</body>
</html>