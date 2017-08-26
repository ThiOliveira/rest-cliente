<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/tags/minhasTags" prefix ="mt" %>

<html> 
	<head> 
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">

    	<link href="/clienterest/resources/css/bootstrap.min.css" rel="stylesheet">
    	<link href="/clienterest/resources/css/sistema.css" rel="stylesheet">
		
		<title>Livros</title>
	</head> 
	
	<body>
		<div class="container">
			<h2>Listagem de Livros</h2>
			
			<br />
		
			<table class="table table-striped">
				<thead>
					<tr>
						<th class="text-center">#ID</th>
						<th>Título</th>
						<th class="text-center">Genero</th>
						<th class="text-center">Editar</th>
						<th class="text-center">Deletar</th>
					</tr>
				</thead>
				
				<tbody>
					<mt:listar />
					
					<c:forEach var="livros" items="${livros}">
						<tr>
							<td class="text-center">${livros.id}</td>
							<td>${livros.titulo}</td>
							<td class="text-center">${livros.genero}</td>
							<td class="text-center">
								<c:url value="/private/cadastrarLivro.jsp" var="link">
									<c:param name="id" value="${livros.id}"/>
								</c:url>
								<a href="${link}"><i class="glyphicon glyphicon-edit"></i></a>
							</td>
							
							<td class="text-center">
								<c:url value="/private/confirmacaoDeletar.jsp" var="link">
									<c:param name="id" value="${filme.id}"/>
								</c:url>
								<a href="${link}"><i class="glyphicon glyphicon-trash"></i></a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<a class="btn btn-default" href="/clienterest/private/cadastrarLivro.jsp" role="button">Novo Livro</a>
		</div>
	</body> 
</html>