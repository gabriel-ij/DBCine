<?php
// conexão
include_once 'php_action/db_connect.php';
// header
include_once 'includes/header.php';
// select
if(isset($_GET['id'])):
	$id = mysqli_escape_string($connect, $_GET['id']);

	$sql = "SELECT * FROM Cinema WHERE NomeCinema = '$id'";
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
				<input class="input" type="text" name="CinemaId" value="<?php echo $dados['CinemaId'];?>">
			</div>
			<div class="field">
				<input class="input" type="text" name="NomeCinema" placeholder="Nome" value="<?php echo $dados['NomeCinema'];?>">
			</div>
			<div class="field">
				<input class="input" type="tel" name="Telefone" placeholder="Telefone" value="<?php echo $dados['Telefone'];?>">
			</div>
			<div class="field">	
				<input class="input" type="text" name="Pais" placeholder="País" value="<?php echo $dados['Pais'];?>">
			</div>
			<div class="field">	
				<input class="input" type="text" name="Estado" placeholder="Estado" value="<?php echo $dados['Estado'];?>">
			</div>
			<div class="field">	
				<input class="input" type="text" name="Cidade" placeholder="Cidade" value="<?php echo $dados['Cidade'];?>">
			</div>
			<div class="field">	
				<input class="input" type="text" name="Bairro" placeholder="Bairro" value="<?php echo $dados['Bairro'];?>">
			</div>
			<div class="field">	
				<input class="input" type="text" name="Cep" placeholder="Cep" value="<?php echo $dados['Cep'];?>">
			</div>
			<div class="field">	
				<input class="input" type="email" name="Email" placeholder="Email" value="<?php echo $dados['Email'];?>">
			</div>
			
			<button class="button" type="submit" name="btn-editar">Atualizar</button>

			<a href="index.php" class="button" type="submit">Lista de Cinemas</a>
		
		</form>
		
	</div>
</section>


</body>

</html>