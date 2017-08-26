<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/tags/minhasTags" prefix ="mt" %>

<html> 
	<head> 
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">

    	<link href="/josaflix-ui/resources/css/bootstrap.min.css" rel="stylesheet">
		
		<title>Confirmação salvar</title>
	</head> 
	
	
	<body> 
		<mt:salvar id="${param.id}" titulo="${param.titulo}" genero="${param.genero}" />
		
		<div class="container">
			<br />
			<div class="alert alert-success" role="alert">
		 		Livro salvo com sucesso.
				<a href="/clienteserver/private/listarLivros.jsp" class="alert-link">
				  	Voltar para a listagem de Livros.
				</a>
			</div>
		</div>
	</body> 
</html>