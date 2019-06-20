<?php 
	//	include("login.php"); 
	include("loginVerif.php");
	
?>

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
		  <li class="active"><a href="#">Login</a></li>
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
							
                <form class="navbar-form navbar-right" method="post">
					<p>Cambiar contraseña</p>
                    <div class="form-group">
                        <input type="password" name=" passwordOld" placeholder="Confirmar vieja contraseña" class="form-control" />
                    </div></br></br>					
					<div class="form-group">
                        <!--<input type="email" name="loginEmail" placeholder="Email" class="form-control"  />-->
						<input type="password" name=" passwordNew1" placeholder="Nueva contraseña" class="form-control" />
                    </div></br></br>
                    <div class="form-group">
                        <input type="password" name=" passwordNew2" placeholder="Confirmar nueva contraseña" class="form-control" />
                    </div>
					<br>
					
                     <input type="submit" name="loginVerif" class="btn btn-success btn-lg marginTop" value="Log in" />
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

