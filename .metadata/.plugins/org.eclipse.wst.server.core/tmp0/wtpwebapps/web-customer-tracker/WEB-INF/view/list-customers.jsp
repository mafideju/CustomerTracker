<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Lista de Investidores</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	</head>
	
	<body>	
		<main>
			
			<div id="wrapper"  style="display: flex; justify-content: center;">
				<div id="header">
					<h2>CRM - Rela��o de Investidores</h2>
				</div>
				<input type="button" value="Novo Cliente" onclick="window.location.href='showAddForm'; return false;" class="add-button" />
			</div>
			
			<div id="container">
				<div id="content">
				
				
				
					<table>
						<tr>
							<th>Nome</th>
							<th>Sobrenome</th>
							<th>Email</th>
							<th>...</th>
						</tr>
						
						<c:forEach var="customer" items="${customers}">
							<c:url var="updateLink" value="/customer/showUpdateForm">
								<c:param name="customerId" value="${customer.id}" />
							</c:url>
							<c:url var="deleteLink" value="/customer/delete">
								<c:param name="customerId" value="${customer.id}" />
							</c:url>
							<tr>
								<td>${customer.firstName}</td>
								<td>${customer.lastName}</td>
								<td>${customer.email}</td>
								<td><a href="${updateLink}">Atualizar</a> | <a href="${deleteLink}" onclick="if(!(confirm('Quer deletar mesmo esse cliente?')))return false;">Delete</a></td>
							</tr>
						</c:forEach>
						
					</table>		
				</div>
			</div>
				
		</main>
		<footer>
			<small>Marcio Mafideju Rodrigues, 2022 - Riacho Grande, S�o Paulo - Brasil</small>
		</footer>
	</body>
</html>