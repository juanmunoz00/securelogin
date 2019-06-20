<?php include("login.php"); ?>

<!DOCTYPE html>
<html lang="en">
 <head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initialscale=1">
 <title>Medikapp</title>

 <!-- Bootstrap -->
 <link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
 <!-- HTML5 Shim and Respond.js IE8 support of HTML5
elements and media queries -->
 <!-- WARNING: Respond.js doesn't work if you view the
page via file:// -->
 <!--[if lt IE 9]>
 <script src="https://oss.maxcdn.com/libs/html5shiv/
3.7.0/html5shiv.js"></script>
 <script src="https://oss.maxcdn.com/libs/respond.js/
1.4.2/respond.min.js"></script>
 <![endif]-->

 </head>

<body>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
		<div class="navbar-header">
		  <a class="navbar-brand" href="main.php">Medikapp</a>
		</div>
		<ul class="nav navbar-nav">
		  <li class="active"><a href="#">Registrarse</a></li>
		  <li><a href="who.html">Quienes Somos</a></li>
		  <li><a href="about.html">Acerca de</a></li>
		</ul>
	  </div>
	</nav>

    <div class="container contentContainer" id="topContainer" >
        <div class="row">
            <div class="col-md-6 col-md-offset-3" id="topRow" >
							
							<?php
								if($error){
									echo '<div class="alert alert-danger">'.addslashes($error).'</div>';
								}
								if($message){
									echo '<div class="alert alert-success">'.addslashes($message).'</div>';
								}
							?>				
							
							<p class="bold marginTop">Registrarse</p>
							<form class="marginTop" method="post">
										
										<div class="form-group">
												<label for="loginEmail">Apellido Paterno</label>
												<input type="text" name="ap_paterno" class="form-control" >
										</div>										
										
										<div class="form-group">
												<label for="loginEmail">Apellido Materno</label>
												<input type="text" name="ap_materno" class="form-control" >
										</div>										
										
										<div class="form-group">
												<label for="loginEmail">Nombre</label>
												<input type="text" name="nombre" class="form-control" >
										</div>	

										<div class="form-group">
												<label for="loginEmail">Fecha de Nacimiento</label>
												<input type="date" name="f_nacim" class="form-control" >
										</div>											
										
										<div class="form-group">
											<label for="sexo">Sexo</label><br>
											<select id="sexo" name="sexo" value="Sexo">
														<option value="H">Hombre</option> <!-- first option contains value="" -->
														<option value="M">Mujer</option>
												</select>
										</div>										
										<br>
										
										<div class="form-group">	
											<label for="idtipousuario">Tipo de Usuario</label><br>
											<select id="idtipousuario" name="idtipousuario">
													<option value="1">Paciente</option> <!-- first option contains value="" -->
													<option value="2">Medico</option>
											</select>																			
										</div>																				
										<br>
										
										<div class="form-group">
												<label for="loginEmail">Correo Electrónico</label>
												<input type="email" name="email" class="form-control" placeholder="alguien@mail.com" value="<?php addslashes($email) ?>"
										</div>
										
										<!--
											<div class="form-group">
													<label for="loginEmail">Contraseña</label>
													<input type="password" name="password" class="form-control" placeholder="Password" />
											</div>			
										-->
							<input type="submit" name="submit" value="Registrarse" class="btn btn-success btn-lg marginTop" />
						</form>
            </div>
        </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/
jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files
    as needed -->
    <script src="js/bootstrap.min.js"></script>
        
    <script>
        //$("#topContainer").css("height", $(window).height());
        $(".contentContainer").css("min-height", $(window).height());

		$(".dropdown-menu li a").click(function(){
		  var selText = $(this).text();
		  $(this).parents('.btn-group').find('.dropdown-toggle').html(selText+' <span class="caret"></span>');
		});		
		
    </script>

</body>
</html> 

