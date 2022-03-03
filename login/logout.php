<?php
/* ENCERRA A SESSÃO */
// inicia sessão
session_start();
// limpa a sessão
session_unset();
// destrói a sessão
session_destroy();

// redireciona usuário
header('Location: index.php');