<?php
// conexão
include_once 'php_action/db_connect.php';
// header
include_once 'includes/header.php';
// select
if(isset($_GET['id'])):
	$id = mysqli_escape_string($connect, $_GET['id']);

	$sql = "SELECT * FROM Cliente WHERE ClienteId = '$id'";
	$resultado = mysqli_query($connect, $sql);
	$dados = mysqli_fetch_array($resultado);
endif;
?>

<body>
<section class="section">
	<div class="container">
		<h1 class="title">
			DBCine Admin
		</h1>
		<p class="subtitle">
			Sistema administrador do banco de dados <strong>DBCine</strong>
		</p>
	</div>
</section>

<section class="section">
	<div class="container">
		<h3 class="title is-5">Editar Cadastro</h3>
		
		<form action="php_action/update.php" method="POST">
			<div class="field">
				<input class="input" type="text" name="ClienteId" value="<?php echo $dados['ClienteId'];?>">
			</div>
			<div class="field">
				<input class="input" type="text" name="NomeCliente" placeholder="Nome" value="<?php echo $dados['NomeCliente'];?>">
			</div>
			<div class="field">
				<input class="input" type="tel" name="DataNasc" placeholder="Nascimento" value="<?php echo $dados['DataNasc'];?>">
			</div>
			<div class="field">
				<input class="input" type="tel" name="DataCadastro" placeholder="Cadastro" value="<?php echo $dados['DataCadastro'];?>">
			</div>
			<div class="field">	
				<input class="input" type="text" name="Email" placeholder="Email" value="<?php echo $dados['Email'];?>">
			</div>
			<div class="field">	
				<input class="input" type="text" name="Telefone" placeholder="Telefone" value="<?php echo $dados['Telefone'];?>">
			</div>

			
			<button class="button" type="submit" name="btn-editar">Atualizar</button>

			<a href="index.php" class="button" type="submit">Lista de Clientes</a>
		
		</form>
		
	</div>
</section>


</body>

</html>