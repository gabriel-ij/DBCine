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
					<th>CNPJ</th>
					<th>Nome</th>
					<th>Telefone</th>
					<th>Pais</th>
					<th>Estado</th>
					<th>Cidade</th>
					<th>Bairro</th>
					<th>Cep</th>
					<th>Email</th>
				</tr>
			</thead>

			<tbody>
				<?php
					$sql = 'SELECT * FROM Cinema';
					$resultado = mysqli_query($connect, $sql);
					while($dados = mysqli_fetch_array($resultado)):
				?>
				<tr>
					<td><?php echo $dados['CinemaId'];?></td>
					<td><?php echo $dados['NomeCinema'];?></td>
					<td><?php echo $dados['Telefone'];?></td>
					<td><?php echo $dados['Pais'];?></td>
					<td><?php echo $dados['Estado'];?></td>
					<td><?php echo $dados['Cidade'];?></td>
					<td><?php echo $dados['Bairro'];?></td>
					<td><?php echo $dados['Cep'];?></td>
					<td><?php echo $dados['Email'];?></td>

					<td><a href="editar.php?id=<?php echo $dados['NomeCinema'];?>" class="button is-small is-primary is-light"><i class="material-icons">edit</i></a></td>
					
					<!-- <td><a href="deletar.php?id=<?php echo $dados['NomeCinema'];?>" class="button is-small is-danger"><i class="material-icons">delete</i></a></td> -->

					<td><form action="php_action/delete.php" method="POST">
						<input type="hidden" name="NomeCinema" value="<?php echo $dados['NomeCinema'];?>">
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