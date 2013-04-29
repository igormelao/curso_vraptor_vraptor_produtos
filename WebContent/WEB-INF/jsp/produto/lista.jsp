<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Produto Lista</title>
<script type="text/javascript" src="<c:url value="/js/jquery-1.6.1.min.js" />"></script>
<script type="text/javascript">
function remover(id) {
    $.get('remove?produto.id=' + id,update(id) );
}
function update(id) {
	$('#produto-' + id).hide();
    alert('removidocomsucesso');
}
</script>
</head>
<body>
	${mensagem}
	<table>
		<c:forEach var="produto" items="${produtoList }">
			<tr id="produto-${produto.id}">
				<td>${produto.nome }</td>
				<td>${produto.descricao }</td>
				<td>${produto.preco }</td>
				<td>${produto.cor }</td>
				<td><a href="#" onclick="remover(${produto.id})">Remove</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>