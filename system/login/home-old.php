<!-- 
    para chamar os dados de usuario no HTML,
    é necessário conectar ao banco de dados
    e iniciar a sessão aqui    
-->
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

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página restrita</title>
</head>
<body>

    <h1>Olá <?php echo $dados['Nome']; ?></h1>

    <a href="logout.php">Sair</a>

</body>
</html>