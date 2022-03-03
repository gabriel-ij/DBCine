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
            $erros[] = "<li> Entre com login/senha </li>";
        // se não estiverem vazios, verifica se o login está no db
        else:
            $sql = "SELECT login FROM usuarios WHERE login = '$login'"; // seleciona o usuario no db
            $resultado = mysqli_query($connect, $sql); // perform consulta no db. parâmetros: conexão com o db, usuario selecionado
            
            // verifica se há registro do usuario no db
            if(mysqli_num_rows($resultado) > 0):
                $senha = sha1($senha);
                $sql = "SELECT login FROM usuarios WHERE login = '$login' AND senha = '$senha'";
                $resultado = mysqli_query($connect, $sql);
				
				// se tiver correspondencia de login e senha no db...
	            if(mysqli_num_rows($resultado) == 1):
					$dados = mysqli_fetch_array($resultado); // transforma o resultado da busca para um único array: $dados
                    // encerra a conexão com o db
                    mysqli_close($connect);
                    // declara as variáveis da sessão
					$_SESSION['logado'] = true;
					$_SESSION['id_usuario'] = $dados['id'];
                    // $_SESSION['nome_usuario'] = $dados['nome'];
					header('Location: home.php');
				// se não tiver, exibe mensagem de erro
				else:
					$erros[] = "<li> Usuário e senha não se deram bem </li>";
				endif;
            
            // se não tiver registro, exibe mensagem de erro
            else:
                $erros[] = "<li> Usuário não existe </li>";
            endif;

        endif;

    endif;
?>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>

<h1>Login</h1>
<?php
    // se $erros estiver com algo, exibe cada erro
    if(!empty($erros)):
        foreach($erros as $erro):
            echo $erro;
        endforeach;
    endif;
?>
<hr>

<!-- se tiver nada em action, processa essa mesma pagina por padrão -->
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
    Login: <input type="text" name="login"><br>
    Senha: <input type="password" name="senha"><br>
    <button type="submit" name="btn-entrar">Entrar</button>
</form>
    
</body>
</html>