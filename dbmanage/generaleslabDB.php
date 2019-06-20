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
		if ($_POST['guardargenerales']){//Submit button clicked
			//$email=$_POST['email'];
      $cedula = $_POST['cedula'];
      $idespecialidad = $_POST['selEspecialidad'];//$_POST['idespecialidad'];
      $consulta_en = $_POST['consulta_en'];
	  $horarios_consulta = $_POST['horarios_consulta'];
      $honorariosDe_consulta = $_POST['honorariosDe_consulta'];
			
      $query = "INSERT INTO `tbl_generalesmedicos`(`idmedico`, `cedula`, `idespecialidad`, `consulta_en`) ";
      $query = $query." VALUES ('".$_SESSION['id']."', '".$cedula."', '".$idespecialidad."', '".$consulta_en."')";
      mysqli_query($link, $query);
			
      $query1 = "INSERT INTO `tbl_catmedicos`(`idusuario`, `idespecialidad`, `cedula`) ";
      $query1 = $query1." VALUES ('".$_SESSION['id']."', '".$idespecialidad."', '".$cedula."')";			
      mysqli_query($link, $query1);
      /*
      $query = "INSERT INTO `historial` (`id`, `padecimientos`, `alergias`, `adicciones`, `ejercicio`, `hisotria_fam`)";
      $query = $query." VALUES ('".$_SESSION['id']."', '".$padecimientos."', '".$alergias."', '".$adicciones."', '".$actfisica."', '".$hisotria_fam."')";
      */
			
			//Horarios de consulta
      $query1 = "INSERT INTO `tbl_horariosconsultas`(`idmedico`, `desc`) ";
      $query1 = $query1." VALUES ('".$_SESSION['id']."', '".$horarios_consulta."')";			
      mysqli_query($link, $query1);			
			

			//Honorarios
      $query1 = "INSERT INTO `tbl_honorariosmedicos`(`idmedico`, `desc`) ";
      $query1 = $query1." VALUES ('".$_SESSION['id']."', '".$honorariosDe_consulta."')";			
      mysqli_query($link, $query1);						
			
      //mysqli_query($link, $query);
      //$message = "Generales registrados ";
			//echo "<a href='mainperfilpaciente.php' class='btn btn-info' role='button'> Regresar a Perfil</a>";
			
			$sender = $_SESSION['sender'];
			$name2send = $_SESSION['name2send'];

			$mailto = $_SESSION['mailto'];

			$email= $_SESSION['userEmail'];

			//$nombreUsuaro = $nombre." ".$ap_paterno;


			$from="From: $name2send<$email>\r\nReturn-path: $sender";
			$subject="Registro de perfil medico en Medikapp";
			$message="Estimado(a) Dr(a) ".$nombreUsuaro.", completaste tu perfil medico";

			mail($mailto, $subject, $message, $from);
			
			die("<script>location.href = 'mainpagemedicos.php'</script>");//header("Location:mainpagemedicos.php");
			}
			
			
		}//Submit
		//else{//If DB connection is succesful	
		if ($_POST['guardarhorarios']){//Submit button clicked
			//$email=$_POST['email'];
			$dia = $_POST['dia'];
			$hora = $_POST['hora'];
			$idtarifahonorarios = $_POST['idtarifahonorarios'];


			$query = "INSERT INTO `tbl_horariosconsultas`(`idmedico`, `dia`, `hora`, `idtarifahonorarios`) ";
			$query = $query." VALUES ('".$_SESSION['id']."', '".$dia."', '".$hora."', '".$idtarifahonorarios."')";


			mysqli_query($link, $query);
			$message = "Horarios registrados ";
			//echo "<a href='mainperfilpaciente.php' class='btn btn-info' role='button'> Regresar a Perfil</a>";
			//header("Location:mainperfilpaciente.php");
			}
			if ($_POST['guardartarifahonorarios']){//Submit button clicked
				//$email=$_POST['email'];
				$concepto = $_POST['concepto'];
				$cantidad = $_POST['cantidad'];
				$idtarifahonorarios = $_POST['idtarifahonorarios'];


				$query = "INSERT INTO `tbl_honorariosmedicos`(`idmedico`, `concepto`, `cantidad`, `idtarifahonorarios`) ";
				$query = $query." VALUES ('".$_SESSION['id']."', '".$concepto."', '".$cantidad."', '".$idtarifahonorarios."')";


				mysqli_query($link, $query);
				$message = "Tarifa de honorarios registrada ";
				//echo "<a href='mainperfilpaciente.php' class='btn btn-info' role='button'> Regresar a Perfil</a>";
				//header("Location:mainperfilpaciente.php");
				}


			//}//Submit

?>
