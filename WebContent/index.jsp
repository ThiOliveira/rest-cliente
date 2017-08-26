<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/tags/minhasTags" prefix ="mt" %>

<html> 
	<head> 
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">

    	<link href="/clienterest/resources/css/bootstrap.min.css" rel="stylesheet">
    	<link href="/clienterest/resources/css/sistema.css" rel="stylesheet">
		
		<title>Login</title>
	</head> 
	
	<body>
		<div class="container">
			<h2>Login</h2>
			
			<br />
		
			<form method="post">
				<div class="form-group">
					<label for="usuario">Usuário</label>
					<input type="text" class="form-control" id="usuario"
						>
				</div>
			  
			  	<div class="form-group">
					<label for="senha">Senha</label>
					<input type="password" class="form-control" id="senha">
				</div>
				
			  	<button type="submit" class="btn btn-primary">Logar</button>
			</form>
		</div>
	</body> 
</html>