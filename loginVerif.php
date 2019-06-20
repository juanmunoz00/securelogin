<?php
	session_start();

	if($_GET["logout"]==1 AND $_SESSION['id']) {session_destroy();		
		$message = "You've been logged out, have a nice day";	
	}
	
	include("connection.php");
	
	//DB connection
	if( mysqli_connect_error()){					
		echo mysqli_connect_error();
		die;//die "Could not connect to server";//mysqli_connect_error();
	}			
	else{//If DB connection is succesful	
		if ($_POST['loginVerif']){//Submit button clicked
		
			//$loginEmail=$_POST['loginEmail'];
			//$loginPassword1=$_POST['loginPassword1']
			//$loginPassword=$_POST['loginPassword'];
			$passwordOld = $_POST['passwordOld'];
			$passwordNew1 = $_POST['passwordNew1'];
			$passwordNew2 = $_POST['passwordNew2'];
			

			$idUsuario = $_SESSION['id'];
			$tipodeusuario = $_SESSION['idtipousuario'];
			$dbPassword = $_SESSION['password'];
			
			//if(hanpasado24h($idUsuario,$link)==0){
				$error = "Han pasado más de 24 horas, el registro se elimino, usuario debe generarlo de nuevo.";
			//}
			//else{			
				//$password = sha1($password);
				//$loginPassword = sha1($_POST['loginPassword']);		

				//$cambiarContrasena = $_SESSION['cambiarContrasena'];
				
				//if($loginPassword1 == $loginPassword){
				if(verificaContrasenas($passwordOld,$dbPassword,$passwordNew1,$passwordNew2) == 1){					
					$loginPassword = $passwordNew1;
					//update password
					//update `users` set `password` = 'temp02' where id = '162'
					$queryUpdate="update `users` set `password` = '".sha1($loginPassword)."' where id = '".$idUsuario."'";
					$resultUpdate=mysqli_query($link, $queryUpdate);
					sleep(1);
					
					//insert first login
					//insert into `tbl_primerLogin` (`id_usuario`) VALUES (162)
					$queryInsert="insert into `tbl_primerLogin` (`id_usuario`) VALUES (".$idUsuario.")";  //"insert in `users` set `password` = '".$loginPassword."' where id = '".$idUsuario."'";
					$resultInsert=mysqli_query($link, $queryInsert);
					
					$message= "Cambio de contraseña exitoso";
					
					//$cambiarContrasena = 0;
					if($_SESSION['cambiarContrasena']=1)
						$_SESSION['cambiarContrasena']=0;
					
					if($tipodeusuario == 1)
						die("<script>location.href = 'mainpage.php'</script>");//header("Location:mainpage.php");
					else if($tipodeusuario == 2)
						die("<script>location.href = 'mainpagemedicos.php'</script>");//header("Location:mainpagemedicos.php");	
					else
						die("<script>location.href = 'mainpage.php'</script>");
				}else
					$error = "Contaseñas no coinciden, favor de verificar";
			//}
		}
			
		
	}//DBConn
	
	function verificaContrasenas($passwordOld,$dbPassword,$passwordNew1,$passwordNew2){
		//Coincide la contraseña vieja?
		$allOk = 0;
		if($passwordOld == $dbPassword){
			$oldOk = 1;
			//Coincide la contraseña nueva?
			if($passwordNew1 == $passwordNew2)
				$allOk = 1;
		}
		
		return $allOk;
	}
	
	function hanpasado24h($id_usuario, $link){		
		$hanpasado24h = 0;
		$query="SELECT date FROM tbl_users_log WHERE `id_user` = '".$id_usuario."' AND id_step = '1'";
		
		$result = mysqli_query($link, $query);

		$row = $result->fetch_assoc();
		
		if(!$row) $error= "No se encontró el usuario ".$id_usuario;
		else{
			$dbDate = $row['date'];
			$date = date($dbDate, "Y-m-d H:i:s");//"2010-01-21 00:00:00";
			$today = date("Y-m-d H:i:s");			

			if ($today <= $date)
				$hanpasado24h = 1;
		}

		return $hanpasado24h;
		
		
	}
?>
