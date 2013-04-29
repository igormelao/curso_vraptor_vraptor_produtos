<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Novo Produto</title>
</head>
<body>
<table>
<c:forEach items="${errors}" var="error">
	${error.category } - ${error.message } <br />
</c:forEach>
<form action="<c:url value="/produto/adiciona"/>" method="post">
	<tr>
		<td>Nome:</td>
		<td><input type="text" name="produto.nome" value="${produto.nome}"/></td>
	</tr>
	<tr>
		<td>Descrição:</td>
		<td><input type="text" name="produto.descricao" value="${produto.descricao}"/></td>
	</tr>
	<tr>
		<td>Preço:</td>
		<td><input type="text" name="produto.preco" value="${produto.preco}"/></td>
	</tr>
	<tr>
		<td>Cor:</td>
		<td><input type="text" name="produto.cor" value="${produto.cor}"/></td>
	</tr>
	<tr>
		<td><input type="submit" value="Adicionar"/></td>
	</tr>
</form>
</table>

</body>
</html>