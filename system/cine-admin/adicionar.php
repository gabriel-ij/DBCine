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
		<h3 class="title is-5">Novo Cinema</h3>
		<form action="php_action/create.php" method="POST">
			<div class="field">
				<input class="input" type="text" name="CinemaId" placeholder="CNPJ">
			</div>
			<div class="field">
				<input class="input" type="text" name="NomeCinema" placeholder="Nome">
			</div>
			<div class="field">
				<input class="input" type="tel" name="Telefone" placeholder="Telefone">
			</div>
			<div class="field">	
				<input class="input" type="text" name="Pais" placeholder="País">
			</div>
			<div class="field">	
				<input class="input" type="text" name="Estado" placeholder="Estado">
			</div>
			<div class="field">	
				<input class="input" type="text" name="Cidade" placeholder="Cidade">
			</div>
			<div class="field">	
				<input class="input" type="text" name="Bairro" placeholder="Bairro">
			</div>
			<div class="field">	
				<input class="input" type="text" name="Cep" placeholder="Cep">
			</div>
			<div class="field">	
				<input class="input" type="email" name="Email" placeholder="Email">
			</div>
			
			
			<button class="button" type="submit" name="btn-cadastrar">Cadastrar</button>
			<a href="index.php" class="button" type="submit">Lista de Cinemas</a>
		
		</form>
		
	</div>
</section>


</body>

</html>