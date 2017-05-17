<!DOCTYPE html>
<html lang="pt">
<head>
	<title>TextYourPath</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<style>
		/*Font do logotipo*/
		@import url('https://fonts.googleapis.com/css?family=Frijole');
		
		/* Remove the navbar's default margin-bottom and rounded borders */ 
		.navbar 
		{
			margin-bottom: 0;
			border-radius: 0;
		}
		    
		/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
		.row.content
		{
			height: 100%;
		}
		    
		/* Set gray background color and 100% height */
		.sidenav 
		{
			padding-top: 20px;
			background-color: #f1f1f1;
			height: 100%;
		}
		    
		.logotipo a
		{
			text-decoration: none;
			font-family: 'Frijole', cursive;
			color: white;
		}
		.logotipo a:hover
		{
			text-decoration: none;
			color: orange;
		}
		
		/* Set black background color, white text and some padding */
		footer 
		{
			background-color: #555;
			color: white;
			padding-top: 15px;
			opacity: 0.7;x
		}
		
		footer ul li
		{
			list-style-type: none;
			color: white;
		}
		
		footer ul a
		{
			text-decoration: none;
		}
		
		footer ul a:hover
		{
			text-decoration: none;
			color: orange;
		}
		
		/* On small screens, set height to 'auto' for sidenav and grid */
		@media screen and (max-width: 767px) 
		{
			.sidenav 
			{
				height: auto;
				padding: 15px;
			}
			.row.content 
			{
				height: auto;
			} 
		}
		
		/* ------------------------------------------ LOGIN FORM ---------------------------------------------------------------------*/
				
		/* Full-width input fields */
		input[type=text], input[type=password] 
		{
		    width: 100%;
		    padding: 12px 20px;
		    margin: 8px 0;
		    display: inline-block;
		    border: 1px solid #ccc;
		    box-sizing: border-box;
		}
		
		/* Set a style for all buttons */
		button 
		{
		    background-color: #4CAF50;
		    color: white;
		    padding: 14px 20px;
		    margin: 8px 0;
		    border: none;
		    cursor: pointer;
		    width: 100%;
		}
		
		button:hover 
		{
		    opacity: 0.8;
		}
		
		/* Extra styles for the cancel button */
		.cancelbtn 
		{
		    width: auto;
		    padding: 10px 18px;
		    background-color: #f44336;
		}
		
		/* Center the image and position the close button */
		.imgcontainer 
		{
		    text-align: center;
		    margin: 24px 0 12px 0;
		    position: relative;
		}
		
		img.avatar 
		{
		    width: 20%;
		    border-radius: 50%;
		}
		
		.container 
		{
		    padding: 16px;
		}
		
		span.psw 
		{
		    float: left;
		    padding-top: 16px;
		}
		span.reg
		{
		    float: right;
		    padding-top: 16px;
		}
		
		/* The Modal (background) */
		.modal 
		{
		    display: none; /* Hidden by default */
		    position: fixed; /* Stay in place */
		    z-index: 1; /* Sit on top */
		    left: 0;
		    top: 0;
		    width: 100%; /* Full width */
		    height: 100%; /* Full height */
		    overflow: auto; /* Enable scroll if needed */
		    background-color: rgb(0,0,0); /* Fallback color */
		    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		    padding-top: 60px;
		}
		
		/* Modal Content/Box */
		.modal-content 
		{
		    background-color: #fefefe;
		    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
		    border: 1px solid #888;
		    width: 80%; /* Could be more or less, depending on screen size */
		}
		
		/* The Close Button (x) */
		.close 
		{
		    position: absolute;
		    right: 25px;
		    top: 0;
		    color: #000;
		    font-size: 35px;
		    font-weight: bold;
		}
		
		.close:hover,
		.close:focus 
		{
		    color: red;
		    cursor: pointer;
		}
		
		/* Add Zoom Animation */
		.animate 
		{
		    -webkit-animation: animatezoom 0.6s;
		    animation: animatezoom 0.6s
		}
		
		@-webkit-keyframes animatezoom 
		{
		    from 
		    {
		    	-webkit-transform: scale(0);
		    } 
		    to 
		    {
		    	-webkit-transform: scale(1);
		    }
		}
		    
		@keyframes animatezoom 
		{
		    from 
		    {
		    	transform: scale(0);
		    } 
		    to 
		    {
		    	transform: scale(1);
		    }
		}
		
		/* Change styles for span and cancel button on extra small screens */
		@media screen and (max-width: 300px) 
		{
		    span.psw 
		    {
		       display: block;
		       float: none;
		    }
		    .cancelbtn 
		    {
		       width: 100%;
		    }
		}
	</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header logotipo">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>                        
	      		</button>
	      		<a class="navbar-left" href="#">
	      			<img alt="logo" src="img/logo.png" width="50px" height="50px">
	      			TextYourPath
	      		</a>
	    	</div>
	    	<div class="collapse navbar-collapse" id="myNavbar">
	      		<ul class="nav navbar-nav">
	        		<li class="active"><a href="#">Página Inicial</a></li>
	        		<li><a href="sobre.jsp">Sobre nós</a></li>
	        		<li><a href="#">Registar</a></li>
	     		</ul>
	      		<ul class="nav navbar-nav navbar-right">
	       			<li><button class="btn btn-success glyphicon glyphicon-log-in" onclick="document.getElementById('login').style.display='block'" style="width:auto;"> Login</button></li>
	      		</ul>
	    	</div>
		</div>
	</nav>
  
	<div class="container-fluid text-center">    
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p><a href="#">Link</a></p>
				<p><a href="#">Link</a></p>
				<p><a href="#">Link</a></p>
			</div>
			<div class="col-sm-8 text-left"> 
				<h1>Bem-vindo</h1>
				<p>TextYourPath é um jogo criado por alunos da ATEC da turma TPSI1116 para a disciplina de Java.</p>
				<p>Mais em concreto para o módulo de J2EE.</p>
				<p>O jogo é criado em Java, HTML, CSS, usando como recursos WEB, o Bootstrap.</p>
				<p>E para o jogo vamos estar a usar Frames em Java tirando proveito do Window Builder do eclipse para nos ajudar nessa tarefa.</p>
				<hr>
				<h3>Test</h3>
				<p>Lorem ipsum...</p>
			</div>
			<div id="login" class="modal">
				<form class="modal-content animate formulario" action="/action_page.php">
					<div class="imgcontainer">
						<span onclick="document.getElementById('login').style.display='none'" class="close" title="Close Modal">&times;</span>
						<img src="img/avatar.png" alt="Avatar" class="avatar">
					</div>
			
					<div class="container-fluid">
						<label><b>Nome de utilizador</b></label>
						<input type="text" placeholder="Introduzir nome de utilizador" name="username" required>
						
						<label><b>Password</b></label>
						<input type="password" placeholder="Introduzir password" name="password" required>
						        
						<button type="submit">Login</button>
						<input type="checkbox" checked="checked"> Lembrar-me
					</div>
			
					<div class="container-fluid" style="background-color:#f1f1f1">
						<button type="button" onclick="document.getElementById('login').style.display='none'" class="cancelbtn">Cancel</button>
						<span class="reg">Ainda não tem conta?<a href="#"> registar uma nova</a></span>
						<span class="psw">Esqueceu a <a href="#">password?</a></span>
					</div>
			  	</form>
			</div>
		</div>		
	</div>
</div>

<footer class="container-fluid text-center">
	<div class="container-fluid">
		<div class="row content">
			<ul>
				<a href="#"><li>Página Inicial</li></a>
				<a href="sobre.jsp"><li>Sobre nós</li></a>
			</ul>
		</div>
	</div>
</footer>

<script>
	// Get the modal
	var modal = document.getElementById('login');
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) 
	{
	    if(event.target == modal) 
	    {
	        modal.style.display = "none";
	    }
	}
</script>

</body>
</html>
