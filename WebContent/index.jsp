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
		/*Font do conteudo*/
		@import url('https://fonts.googleapis.com/css?family=Syncopate:700');
		
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
			color: red;
		}
		.conteudo
		{
			font-family: 'Syncopate', sans-serif;
			color: white;
			letter-spacing: 2px;
			text-shadow: 3px 2px black;
		}
		
		/* Set black background color, white text and some padding */
		footer 
		{
			background-color: black;
			padding-top: 15px;
			position: fixed;
			bottom: 0;
			width: 100%;
			opacity: 0.9;
		}
		
		footer ul li
		{
			list-style-type: none;
			color: darkgray;
			text-align: center;
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
		
		body
		{ 
			background-image: url("img/background.png");
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover;
		}
		
		.navbar
		{
			background-color: black;
		}
		.navtext
		{
			font-family: 'Syncopate', sans-serif;
			color: white;
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
	      		<a class="navbar-left" href="index.jsp">
	      			<img alt="logo" src="img/logo.png" width="50px" height="50px">
	      			TextYourPath
	      		</a>
	    	</div>
	    	<div class="collapse navbar-collapse navtext" id="myNavbar">
	      		<ul class="nav navbar-nav">
	        		<li><a href="index.jsp">Página Inicial</a></li>
	        		<li><a href="comment.jsp">Comentários</a></li>
	     		</ul>
	      		<ul class="nav navbar-nav navbar-right">
	       			<li><button class="btn btn-success" onclick="document.getElementById('login').style.display='block'" style="font-family: 'Syncopate', sans-serif;width:auto;"> Login</button></li>
	       			<li><button class="btn btn-danger" onclick="document.getElementById('register').style.display='block'" style="font-family: 'Syncopate', sans-serif;width:auto;"> Registo</button></li>
	      		</ul>
	    	</div>
		</div>
	</nav>
  
	<div class="container-fluid text-center">  
			<div class="col-sm-12 text-center conteudo"> 
				<br><br>
				<h1>Bem-vindo!</h1>
				<br><br><br>
				<p>TextYourPath é um jogo de aventura de texto, onde tens de combater pela tua sobrevivência.</p>
				<p>Presta atenção ao texto durante o jogo, porque te dará informações importantes sobre a história do jogo.</p>
				<br><br>
				<p>Encara a dura realidade de teres de lutar pela tua vida e pela tua liberdade.</p>
				<p>Irás encontrar perigos iminentes durante o teu caminho, aprende e evolui a cada combate.</p>
				<p>Nada te preparou para o que vais encontrar ao loongo do teu caminho.</p>
				<br><br><br><br>
				<p>Até te desejava boa sorte, se ela não nos tivesse abandonado...</p>
				<br><br><br>
				<hr>
				<h3>Pré-visualização do jogo</h3>
				<div class="row">
					<div class="col-md-2">
						<div class="thumbnail">
							<a href="img/img1.png" target="_blank">
								<img src="img/img1.png" alt="img1" style="width:100%">
							</a>
						</div>
					</div>
					<div class="col-md-2">
						<div class="thumbnail">
							<a href="img/img2.png" target="_blank">
								<img src="img/img2.png" alt="img2" style="width:100%">
							</a>
						</div>
					</div>
					<div class="col-md-2">
						<div class="thumbnail">
							<a href="img/img3.png" target="_blank">
								<img src="img/img3.png" alt="img3" style="width:100%">
							</a>
						</div>
					</div>
					<div class="col-md-2">
						<div class="thumbnail">
							<a href="img/img4.png" target="_blank">
								<img src="img/img4.png" alt="img4" style="width:100%">
							</a>
						</div>
					</div>
					<div class="col-md-2">
						<div class="thumbnail">
							<a href="img/img5.png" target="_blank">
								<img src="img/img5.png" alt="img5" style="width:100%">
							</a>
						</div>
					</div>
					<div class="col-md-2">
						<div class="thumbnail">
							<a href="img/img6.png" target="_blank">
								<img src="img/img6.png" alt="img6" style="width:100%">
							</a>
						</div>
					</div>
				</div>
				<hr>
			</div>
			<div id="login" class="modal">
				<form class="modal-content animate formulario" action="HLoginAccount" method="post">
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
						<span class="psw">Esqueceu a <a href="recover.jsp">password?</a></span>
					</div>
			  	</form>
			</div>
			<div id="register" class="modal">
				<form class="modal-content animate formulario" action="HRegisterAccount" method="post">
					<div class="imgcontainer">
						<span onclick="document.getElementById('register').style.display='none'" class="close" title="Close Modal">&times;</span>
						<img src="img/avatar.png" alt="Avatar" class="avatar">
					</div>
			
					<div class="container-fluid">
						<label>Nome de utilizador</label>
						<input class="input" type="text" placeholder="Introduzir nome de utilizador" name="reg_username" required><br>
						
						<label>E-mail</label><br>
						<input class="input" type="text" placeholder="Introduzir email" name="reg_email" required><br>
						
						<label>Password</label>
						<input class="input" type="password" placeholder="Introduzir password" name="reg_password" required><br>
						
						<label>Re-Introduzir Password</label>
						<input class="input" type="password" placeholder="Re-Introduzir password" name="password1" required><br>
						        
						<button type="submit">Registar</button>
					</div>
			  	</form>
			</div>
				
	</div>
</div>
</body>

<footer class="container-fluid text-center">
	<div class="container-fluid">
		<ul>
			<li align="left">Todos os direitos reservados ©TextYourPath André Santos, Filipe Sousa, João Bárbara, Rui Bravo.</li>
		</ul>
	</div>
</footer>

<script>
	// Get the modal for the LOGIN
	var modalLogin = document.getElementById('login');
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) 
	{
	    if(event.target == modalLogin) 
	    {
	        modalLogin.style.display = "none";
	    }
	}
	
	// Get the modal for the REGISTER
	var modalRegister = document.getElementById('register');
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) 
	{
	    if(event.target == modalRegister) 
	    {
	        modalRegister.style.display = "none";
	    }
	}
</script>
</html>
