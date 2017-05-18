<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		      		<li>
		      		
		      		</li>
		      		<li><a href="index.jsp"><button onclick="document.getElementById('logout').style.display='none'" class="btn btn-danger" style="font-family: 'Syncopate', sans-serif;width:auto;"> Logout</button></a></li>
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
		<div id="logout">
			<form class="formulario" action="HLogout" method="post">
				<span onclick="document.getElementById('logout').style.display='none'" class="close" title="Close">&times;</span>
		
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
	</div>
</body>

<footer class="container-fluid text-center">
	<div class="container-fluid">
		<ul>
			<li align="left">Todos os direitos reservados ©TextYourPath André Santos, Filipe Sousa, João Bárbara, Rui Bravo.</li>
		</ul>
	</div>
</footer>

</html>