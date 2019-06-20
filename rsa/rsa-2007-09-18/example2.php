<!DOCTYPE html>
<html>
    <head>
        <title>Test</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <script type="text/javascript">

		function clearContent()
		{
			document.getElementById("mensaje").value='';
			//alert('borrado!');
		}		
		
        window.onload = clearContent;
        </script>
    </head>
	<body>

		<form action="cifrar1.php" method="post">
		<textarea id="mensaje" rows="4" cols="50" placeholder="Mensaje a cifrar" name="mensaje">
		</textarea>
		</br>
		<input type="submit" name="cifrar" value="Enviar">
		</form>

	</body>
</html>