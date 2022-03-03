<?php
// sessão
session_start();

if(isset($_SESSION['mensagem'])):
	// echo $_SESSION['mensagem'];
?>

<script>
		window.onload = function() {
			var x = document.getElementById("popup")
			x.innerHTML = `<?php echo $_SESSION['mensagem']?>`
			x.className = "show"
			setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000)
		}
</script>

<?php
endif;
session_unset();
?>