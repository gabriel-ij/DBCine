<?php
	// Conexão. Requer acesso ao arquivo
	require_once 'db_connect.php'; // require_once pra embed PHP de  outro arquivo, se o .php não for encontrado, mostra fatal error

	/*  Sessão
	
		When you work with an application, you open it, do some changes, and then you close it. This is much like a Session. The computer knows who you are. It knows when you start the application and when you end. But on the internet there is one problem: the web server does not know who you are or what you do, because the HTTP address doesn't maintain state.

		Session variables solve this problem by storing user information to be used across multiple pages (e.g. username, favorite color, etc). By default, session variables ($_SESSION) last until the user closes the browser.

		So; Session variables hold information about one single user, and are available to all pages in one application.
	*/
	session_start();

	// isset() checa se a variável está vazia, ou declarada
	if (isset($_POST['btn-entrar'])):
		$erros = array(); // $erros como um array
		$login = mysqli_escape_string($connect, $_POST['login']); // Escapes special characters in a string for use in an SQL statement, taking into account the current charset of the connection
		$senha = mysqli_escape_string($connect, $_POST['senha']);
		// se login ou senha estiverem vazios, põe mensagem de erro em $erros[]
		if(empty($login) or empty($senha)):
			$erros[] = '<p style="color: #FFCE61;">Entre com login/senha</p>';
		// se não estiverem vazios, verifica se o login está no db
		else:
			$sql = "SELECT Login FROM usuarios WHERE Login = '$login'"; // seleciona o usuario no db
			$resultado = mysqli_query($connect, $sql); // perform consulta no db. parâmetros: conexão com o db, usuario selecionado
			
			// verifica se há registro do usuario no db
			if(mysqli_num_rows($resultado) > 0):
				$senha = sha1($senha);
				$sql = "SELECT Login FROM usuarios WHERE Login = '$login' AND Senha = '$senha'";
				$resultado = mysqli_query($connect, $sql);
				
				// se tiver correspondencia de login e senha no db...
				if(mysqli_num_rows($resultado) == 1):
					$dados = mysqli_fetch_array($resultado); // transforma o resultado da busca para um único array: $dados
					// encerra a conexão com o db
					mysqli_close($connect);
					// declara as variáveis da sessão
					$_SESSION['logado'] = true;
					$_SESSION['id_usuario'] = $dados['Id'];
					// $_SESSION['nome_usuario'] = $dados['nome'];
					header('Location: home.php');
				// se não tiver, exibe mensagem de erro
				else:
					$erros[] = '<p style="color: #FFCE61;">Usuário/senha incorretos</p>';
				endif;
			
			// se não tiver registro, exibe mensagem de erro
			else:
				$erros[] = '<p style="color: #FFCE61;">Usuário não existe</p>';
			endif;

		endif;

	endif;
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="https://kit.fontawesome.com/0b61cc5dfe.js" crossorigin="anonymous"></script>
</head>

<body>

<div id="background-image"></div>
<!-- <div id="background-overlay"></div> -->
<div id="background-pattern"></div> 

<!-- Login Container -->
<div id="login-container">
	<div class="card" style="width: 400px;">
		<div class="card-image">
			<figure class="image">
			<img src="img/business.png" alt="Placeholder image">
			</figure>
		</div>
		<?php
			// se $erros estiver com algo, exibe cada erro
			if(!empty($erros)):
				foreach($erros as $erro):
					echo $erro;
				endforeach;
			endif;
		?>
		<!-- Fields -->
		<form action="<?php echo $_SERVER['PHP_SELF'];?>" method="POST">
		<div class="card-content">
			<!-- <div class="media">
				<p><div class="is-size-4 has-text-centered">Login</div></p>
			</div> -->
			<div class="content">
				<!-- Field Usuário -->
				<div class="field">
				<p class="control has-icons-left has-icons-right">
					<input class="input" type="text" name="login" placeholder="Usuário">
					<span class="icon is-small is-left">
					<i class="fas fa-user"></i>
					</span>
					<span class="icon is-small is-right">
					<i class="fas fa-check"></i>
					</span>
				</p>
				<!-- Field Senha -->
				</div>
				<div class="field">
				<p class="control has-icons-left">
					<input class="input" type="password" name="senha" placeholder="Senha">
					<span class="icon is-small is-left">
					<i class="fas fa-lock"></i>
					</span>
				</p>
				</div>
				<!-- Button Login -->
				<div class="field">
					<button class="button is-fullwidth" type="submit" name="btn-entrar">Login</button>
				</div>
			</div>
		</div>
		</form>
		<!--/ Fields /-->
	</div>
</div>

</body>
</html>