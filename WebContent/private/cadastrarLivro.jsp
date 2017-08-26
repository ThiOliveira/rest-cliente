<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/tags/minhasTags" prefix="mt"%>

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
		<c:if test="${not empty param.id}">
			<mt:buscarPorId id="${param.id}" />
		</c:if>
		<div class="container">
			<c:choose>
				<c:when test="${empty param.id}">
					<h2>Novo Livro</h2>
				</c:when>
				<c:otherwise>
					<h2>Editar Livro</h2>
				</c:otherwise>
			</c:choose>
	
	
			<form action="/clienterest/private/confirmacaoSalvar.jsp" method="post">
				<input type="hidden" value="${param.id}" name="id" />
	
				<div class="form-group">
					<label for="titulo">Título</label> <input type="text"
						class="form-control" id="titulo" name="titulo" required="required"
						value="${filme.titulo}">
				</div>
	
				<div class="form-group">
					<label for="genero">Genero</label> <input type="text"
						class="form-control" id="genero" name="genero" required="required"
						value="${filme.genero}">
				</div>
	
				<c:choose>
					<c:when test="${empty param.id}">
						<button type="submit" class="btn btn-primary">Salvar</button>
					</c:when>
					<c:otherwise>
						<button type="submit" class="btn btn-primary">Atualizar</button>
					</c:otherwise>
				</c:choose>
	
				<a class="btn btn-default" href="/clienterest/private/listarLivros.jsp"
					role="button">Listar livros</a>
			</form>
		</div>
	</body>
</html>