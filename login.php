<?php

	include('./rsa/rsa-2007-09-18/rsa.class.php');
	include('./rsa/rsa-2007-09-18/keys.php');

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
		if ($_POST['submit']){//Submit button clicked
			$email=$_POST['email'];
			
			$tempPassword = generateStrongpassword();//"Abc12345!";
			$password=$tempPassword;//$_POST['password'];
			//$password=$_POST['password'];
			$tipodeusuario=$_POST['idtipousuario'];
			$genero=$_POST['idgenero'];
			$nombre=$_POST['nombre'];
			$ap_paterno=$_POST['ap_paterno'];
			$ap_materno=$_POST['ap_materno'];
			$sexo=$_POST['sexo'];
			$f_nacim=$POST['f_nacim'];
			
			//Validate fields
			if(!$email)$error.="<br />Favor de agregar su email";
				else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) $error.="<br />Favor de agregar un correo electrónico válido";
			
			if(!$password)$error.="<br />Favor de agregar una contraseña";
				else {
					if(strlen($password)<8) $error.="<br />Favor de agregar una contraseña de al menos 8 caracteres";
					
					if(!preg_match('`[A-Z]`',$password)) $error.="<br />Favor de agregar al menos una letra mayúscula";
				
				}	
			
			
			if($error) $error= "Hubo un error en su registro, favor de corregirlo".$error;
				else{			
			
				$query="SELECT * FROM users WHERE `email` = '".mysqli_real_escape_string($link, $email)."'";
				
				$result=mysqli_query($link, $query);
				$results=mysqli_num_rows($result);
				
				//$password = sha1($password);
				
				if($results) $error= "This email address is already registered. Do you want to log in?";
				else{
					/*
					$query = "INSERT INTO `users`(`ap_paterno`,`ap_materno`,`idtipousuario`,`sexo`,`f_nacim`,`name`,`email`, `password`) VALUES ('";;					
					$query = $query.$ap_paterno."','".$ap_materno."','".$tipodeusuario."','".$sexo."','".$f_nacim."','".$nombre."','";
					$query = $query.mysqli_real_escape_string($link, $email)."','".md5(md5($email).$password)."')";
					*/
					$query = "INSERT INTO `users`(`ap_paterno`,`ap_materno`,`idtipousuario`,`sexo`,`f_nacim`,`name`,`email`, `password`) VALUES ('";;					
					$query = $query.$ap_paterno."','".$ap_materno."','".$tipodeusuario."','".$sexo."','".$f_nacim."','".$nombre."','";
					$query = $query.mysqli_real_escape_string($link, $email)."','".$password."')";
					
					
					mysqli_query($link, $query);
					echo "You've been signed up";
					
					$_SESSION['id']=mysqli_insert_id($link);
					print_r($_SESSION);
					
					$query="SELECT id FROM users WHERE `email` = '".mysqli_real_escape_string($link, $email)."'";
					$result = mysqli_query($link, $query);

					$row = $result->fetch_assoc();
					$userID = $row['id'];

					//$query = "INSERT INTO `users_det`(`id`, `idtipousuario`) VALUES ('".$userID."','".$tipodeusuario."')";
					
					$query = "INSERT INTO `users_det`(`id`, `idtipousuario`, `idgenero`) VALUES ('".$userID."','".$tipodeusuario."','".$genero."')";

					mysqli_query($link, $query);
					


					//Redirect to logged in page
					/*
					if($tipodeusuario==1){
						header("Location:mainpagepaciente.php");
					}
					else{
						header("Location:mainpagemedico.php");

					}
					*/
					
					//Send an email when an user is created
					$sender = "jmunoz@syner.info";
					$_SESSION['sender']=$sender;
					
					$name2send = "Medikapp Support";
					$_SESSION['name2send']=$name2send;
					
					$mailto = $email.",".$sender;
					$_SESSION['mailto']=$mailto;
					
					$_SESSION['userEmail'] = $email;
					
					//$nombreUsuaro = $nombre." ".$ap_paterno;
					
					
					$from="From: $name2send<$email>\r\nReturn-path: $sender";
					$subject="Creaste un perfil en Medikapp";
					//$message="¡Muchas gracias por unirte a Medikapp ".$nombreUsuaro."! Tu ID es ".$userID.". Tu contraseña temporal es ".$password;
					$message="¡Muchas gracias por unirte a Medikapp ".$nombreUsuaro."! Tu ID es ".$userID.". Y tu contraseña temporal es: ".$tempPassword.". ";
					$message= $message."Es necesario cambiar la contraseña en los PROXIMOS 24 horas o será eliminado el registro y deberá realizarlo de nuevo. ";
					$message= $message."Para cambiar tu contraseña, acceder a esta liga: http://medikapp.syner.info/loginusuarios.php";
					mail($mailto, $subject, $message, $from);
					
					//Log the step in the DB
					$step=1;//Registro 1era vez
					$query = "INSERT INTO `tbl_users_log`(`id_user`, `id_step`, `date`) VALUES ('".$userID."','".$step."',NOW())";
					mysqli_query($link, $query);
					
					//Redirect to logged in page
					/*
					if($tipodeusuario == 1)//usuario tipo paciente
						//die("<script>location.href = 'mainpage.php'</script>");//header("Location:mainpage.php");
						die("<script>location.href = 'main.php'</script>");//header("Location:mainpage.php");
					else if($tipodeusuario == 2)//usuario tipo medico
						die("<script>location.href = 'generalesmedico_agregar.php'</script>");//header("Location:generalesmedico_agregar.php");
					*/
					$message="¡Muchas gracias por unirte a Medikapp!";
					die("<script>location.href = 'esperar.php'</script>");
				}//Sign up
			}//Errors on validation
						
		}//Submit
		else if($_POST['login']) {//Log in button clicked
			$loginEmail=$_POST['loginEmail'];
			$loginPassword=$_POST['loginPassword'];		

			//20170924. Usuario es un laboratorio. JM
			
			if(isset($_POST['rad_lab'])){
				$loginRadio=1;//¿Es necesario/útil?

				$query1="SELECT * FROM tbl_laboratorios WHERE `email` = '".mysqli_real_escape_string($link, $loginEmail)."'";
				$query1=$query1." AND `password` = '".md5(md5($loginEmail).$loginPassword)."' LIMIT 1;";				
				
				$result1=mysqli_query($link, $query1);
				//$results1=mysqli_num_rows($result1);
				
				$row=mysqli_fetch_array($result1);
				

				if($row){
					$_SESSION['id_lab']=$row['id_lab'];				
					$_SESSION['nombre']=$row['nombre'];
					$_SESSION['rfc']=$row['rfc'];
					$_SESSION['direccion']=$row['direccion'];
					$_SESSION['tel']=$row['tel'];
					$_SESSION['email'] = $loginEmail;
					print_r($_SESSION);
					
					die("<script>location.href = 'mainperfil_lab.php'</script>");
				}				
				
			}				
			else{
				//get userID
				$queryUid="SELECT * FROM users WHERE `email` = '".mysqli_real_escape_string($link, $loginEmail)."' LIMIT 1;";			
				$resultUid=mysqli_query($link, $queryUid);			
				$rowUid=mysqli_fetch_array($resultUid);	
				
				if($rowUid){
					$idUsuario = $rowUid['id'];	
					$usrPassword = $rowUid['password'];//sha1($rowUid['password']);
					
					$_SESSION['id']=$rowUid['id'];				
					$_SESSION['nombre']=$rowUid['nombre'];
					$_SESSION['ap_paterno']=$row['ap_paterno'];
					$_SESSION['idtipousuario'] = $rowUid['idtipousuario'];
					$tipodeusuario = $_SESSION['idtipousuario'];
					
					$_SESSION['email'] = $loginEmail;
					$_SESSION['password'] = $loginPassword;
					print_r($_SESSION);		
					
					//Verify it is first login
					$query2="SELECT * FROM tbl_primerLogin WHERE `id_usuario` = ".$idUsuario."";
					$result2=mysqli_query($link, $query2);				
					$row2=mysqli_fetch_array($result2);				
					
					if(!$row2){
						$_SESSION['cambiarContrasena']=1;					
						die("<script>location.href = 'loginusuariosVerific.php'</script>");										
					}
					else{
						//If not first login, validate email's password against SHA-1
						$_SESSION['cambiarContrasena']=0;
						//$loginPassword = sha1($loginPassword);
						if(sha1($loginPassword) == $usrPassword){
							//Crear llaves de cifrado RSA
							$queryKey="SELECT p,q FROM tbl_keys WHERE `idkey` = '1'";//".$idUsuario."";
							$resultKey=mysqli_query($link, $queryKey);				
							$getKeys=mysqli_fetch_array($resultKey);							
							
							if($getKeys){
								$p=$getKeys['p'];
								$q=$getKeys['q'];
							}
							$RSA = new RSA();							
							$keys = $RSA->generate_keys ($p, $q, 0);//('9990454949', '9990450271', 0);							

							//Public key pair is N and E
							//Private key pair is N and D							
							$_SESSION['modn']=$keys[0];
							$_SESSION['keye']=$keys[1];
							$_SESSION['keyd']=$keys[2];
							//$encoded = $RSA->encrypt ($message, $keys[1], $keys[0], 5);
							//$decoded = $RSA->decrypt ($encoded, $keys[2], $keys[0]);						
							
							//Login succesful
							if($tipodeusuario == 1)
								die("<script>location.href = 'mainpage.php'</script>");//header("Location:mainpage.php");
							else if($tipodeusuario == 2)
								die("<script>location.href = 'mainpagemedicos.php'</script>");//header("Location:mainpagemedicos.php");							
						}
						else{
							//Login faild				
							$error= "Usuario ".$idUsuario. " o hay un error en email/password. ";
						}
					}
				}
				else{
					$error=$loginEmail." no encontrado";
				}
			}
			
		}//Login
		elseif ($_POST['regstrarLab']){//Registrar lab
			$nombre=$_POST['nombre'];
			$rfc=$_POST['rfc'];
			$direccion=$_POST['direccion'];
			$tel=$_POST['tel'];			
			$email=$_POST['email'];			
			$password=$_POST['password'];
			
			
			//Validate fields
			if(!$email)$error.="<br />Favor de agregar su email";
				else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) $error.="<br />Favor de agregar un correo electrónico válido";
			
			if(!$password)$error.="<br />Favor de agregar una contraseña";
				else {
					if(strlen($password)<8) $error.="<br />Favor de agregar una contraseña de al menos 8 caracteres";
					
					if(!preg_match('`[A-Z]`',$password)) $error.="<br />Favor de agregar al menos una letra mayúscula";
				
				}	
			
			
			if($error) $error= "Hubo un error en su registro, favor de corregirlo".$error;
				else{			
			
					/*
					$query = "INSERT INTO `users`(`ap_paterno`,`ap_materno`,`idtipousuario`,`sexo`,`f_nacim`,`name`,`email`, `password`) VALUES ('";;
					$query = $query.$ap_paterno."','".$ap_materno."','".$tipodeusuario."','".$sexo."','".$f_nacim."','".$nombre."','";
					$query = $query.mysqli_real_escape_string($link, $email)."','".md5(md5($email).$password)."')";
					*/
					$query = "INSERT INTO `tbl_laboratorios`(`nombre`,`rfc`,`direccion`,`tel`,`email`, `password`,`fecha_registro`, `directorio_img_ordenes`) VALUES ('";;
					$query = $query.$nombre."','".$rfc."','".$direccion."','".$tel."','";
					$query = $query.mysqli_real_escape_string($link, $email)."','".md5(md5($email).$password)."',CURDATE(),'')";
					
					mysqli_query($link, $query);
					//echo "Se registro lab";
					
					$_SESSION['id']=mysqli_insert_id($link);
					//print_r($_SESSION);
					
					$query1="SELECT id_lab as id FROM tbl_laboratorios WHERE `email` = '".mysqli_real_escape_string($link, $email)."'";
					$result = mysqli_query($link, $query1);

					$row = $result->fetch_assoc();
					$userID = $row['id'];
					
					if($row==0){
						$error= "No se agregó lab. Query= ".$query;
						//die;
					}else{//1
						
						//Send an email when an user is created
						$sender = "jmunoz@syner.info";
						$_SESSION['sender']=$sender;
						
						$name2send = "Medikapp Support";
						$_SESSION['name2send']=$name2send;
						
						$mailto = $email.",".$sender;
						$_SESSION['mailto']=$mailto;
						
						$_SESSION['userEmail'] = $email;
						
						//$nombreUsuaro = $nombre." ".$ap_paterno;
						
						
						$from="From: $name2send<$email>\r\nReturn-path: $sender";
						$subject="Creaste un perfil en Medikapp";
						$message="¡Muchas gracias por unirte a Medikapp ".$nombreUsuaro."! Tu ID es ".$userID;
							
						mail($mailto, $subject, $message, $from);
						
						//Log the step in the DB
						$step=1;//Registro 1era vez
						$query = "INSERT INTO `tbl_users_log`(`id_user`, `id_step`, `date`) VALUES ('".$userID."','".$step."',NOW())";
						mysqli_query($link, $query);
						
						$message="¡Se registró lab en Medikapp ".$nombreUsuaro."! Tu ID de laboratorio es ".$userID;
						die("<script>location.href = 'mainperfil_lab.php'</script>");//header("Location:generalesmedico_agregar.php");
						
						//Redirect to logged in page
						/*
						if($tipodeusuario == 1)//usuario tipo paciente
							die("<script>location.href = 'mainpage.php'</script>");//header("Location:mainpage.php");
						else if($tipodeusuario == 2)//usuario tipo medico
							die("<script>location.href = 'generalesmedico_agregar.php'</script>");//header("Location:generalesmedico_agregar.php");
						*/
					}//1
			}//Errors on validation
						
		}//Registrar lab

	
	}//DBConn
	
	//functions
	function generateStrongpassword(){
		/*
		****************************************
		* Based on http://codepad.org/UL8k4aYK *
		****************************************
		*/
		//$alphabet = "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789";
		$alphabet = "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789!@#$%^";
		$pass = array(); //remember to declare $pass as an array
		$alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
		for ($i = 0; $i < 8; $i++) {
			$n = rand(0, $alphaLength);
			$pass[] = $alphabet[$n];
		}
		return implode($pass); //turn the array into a string		
		
	}
	
?>
