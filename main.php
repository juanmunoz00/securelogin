<?php include("login.php"); ?>

<!DOCTYPE html>
<html lang="en">
 <head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initialscale=1">
 <title>Medikapp</title>

 <!-- Bootstrap -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	 
	 
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
		  <li class="active"><a href="#">Inicio</a></li>
		  <li><a href="who.html">Quienes Somos</a></li>
		  <li><a href="about.html">Acerca de</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
		  <li><a href="registraro_init.php"><span class="glyphicon glyphicon-user"></span> Registrarse</a></li>
		  <li><a href="loginusuarios.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>	
		</ul>
	  </div>
	</nav>

    </div>

    <div class="container contentContainer" id="topContainer" >
        <div class="row">
            <div class="col-md-6 col-md-offset-3" id="topRow" >
				 <img src="img/mainpage.jpg" alt="Medikapp" height="125" width="125" >
				</br>                
				<h1 class="marginTop">Medikapp</h1>
        <p class="mainMsg" >Esta App permite una comunicación directa entre médicos y pacientes.</p>
				<p>Favor de registrarse o iniciar sesión en la sección de login</p>
				<h3>En construcción...</h3>	<br>
				<h3><span><img src="img/chrome.png" height="50" width="50">Por el momento el desempeño óptimo del portal se da en el navegador Google Chrome</span></h3>	<br>
				<?php
					if($error){
						echo '<div class="alert alert-danger">'.addslashes($error).'</div>';
						
					}
					
					if($message){
						echo '<div class="alert alert-success">'.addslashes($message).'</div>';
						
					}
				
				?>
<div class="panel-group" id="accordion">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
													Citas y Tratamientos</a>
												</h4>
											</div>
											<div id="collapse1" class="panel-collapse collapse in">
												<div class="panel-body">
													Medikapp facilita la gestión de citas paciente-médico. Permite mantener un historial
													de los tratamientos, seguro y privado, así como el seguimiento del mismo entre el paciente y su Doctor.
												</div>
											</div>
										</div>
	
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
													Gestión de servicios de salud</a>
												</h4>
											</div>
											<div id="collapse2" class="panel-collapse collapse">
												<div class="panel-body">
													Medikapp eficientiza la interacción entre el paciente y los proveedores de servicios de salud como médicos, 
													hospitales, laboratorios, farmacias, etc.
													(En desarrollo, disponible a partir de la versión 3)
												</div>
											</div>
										</div>
	
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
													Soporte a de biosensores</a>
												</h4>
											</div>
											<div id="collapse3" class="panel-collapse collapse">
												<div class="panel-body">
													Medikapp soporta el uso de "wearables" y biosensores como apoyo a la gestión de la salud del paciente, 
													que puede ser monitoreado en tiempo real por el médico tratante.
													(En conceptualización, disponible a partir de la versión 4)
												</div>
											</div>
										</div>
	

	
									</div>

			
    </div>

		<footer>
			<p>Posted by: Syner</p>
			<p>Contact information: <a href="mailto:jmunoz@syner.info">
			jmunoz@syner.info</a>.</p>
		</footer>	
	
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

