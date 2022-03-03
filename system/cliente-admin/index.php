<?php
// conexão
include_once 'php_action/db_connect.php';
// header
include_once 'includes/header.php';
// mensagem popup de erro/sucesso do cadastro
include_once 'includes/message.php';
?>
<!-- <script src="js/modal.js"></script> -->
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

<div id="popup" class="container"></div>

<section class="section">
	<!-- <p class="subtitle is-5">Cinemas</p> -->
	<div class="table-container">
		<table class="table is-striped is-hoverable">
			<thead>
				<tr>
					<th>CPF</th>
					<th>Nome</th>
					<th>Nascimento</th>
					<th>Cadastro</th>
					<th>Email</th>
					<th>Telefone</th>
				</tr>
			</thead>

			<tbody>
				<?php
					$sql = 'SELECT * FROM Cliente';
					$resultado = mysqli_query($connect, $sql);
					while($dados = mysqli_fetch_array($resultado)):
				?>
				<tr>
					<td><?php echo $dados['ClienteId'];?></td>
					<td><?php echo $dados['NomeCliente'];?></td>
					<td><?php echo $dados['DataNasc'];?></td>
					<td><?php echo $dados['DataCadastro'];?></td>
					<td><?php echo $dados['Email'];?></td>
					<td><?php echo $dados['Telefone'];?></td>

					<td><a href="editar.php?id=<?php echo $dados['ClienteId'];?>" class="button is-small is-primary is-light"><i class="material-icons">edit</i></a></td>
				
					<td><form action="php_action/delete.php" method="POST">
						<input type="hidden" name="ClienteId" value="<?php echo $dados['ClienteId'];?>">
						<button type="submit" name="btn-deletar" class="button is-small is-danger is-light"><i class="material-icons">delete</i></button>
					</form></td>

				</tr>
				<?php endwhile;?>
			</tbody>
		</table>
		<br>
	</div>
	<a href="adicionar.php" class="button is-info is-light">Adicionar</a>

</section>

</body>
</html>