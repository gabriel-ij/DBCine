<?php
// header
include_once 'includes/header.php';
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
		<h3 class="title is-5">Registrar Cliente</h3>
		<form action="php_action/create.php" method="POST">
			<div class="field">
				<input class="input" type="text" name="ClienteId" placeholder="CPF">
			</div>
			<div class="field">
				<input class="input" type="text" name="NomeCliente" placeholder="Nome">
			</div>
			<div class="field">
				<input class="input" type="tel" name="DataNasc" placeholder="Data de Nascimento">
			</div>
			<div class="field">	
				<input class="input" type="text" name="DataCadastro" placeholder="Data de Cadastro">
			</div>
			<div class="field">	
				<input class="input" type="text" name="Email" placeholder="Telefone">
			</div>			
			
			<button class="button" type="submit" name="btn-cadastrar">Cadastrar</button>
			<a href="index.php" class="button" type="submit">Lista de Clientes</a>
		
		</form>
		
	</div>
</section>


</body>

</html>