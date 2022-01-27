<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Salvar Investidores</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
	</head>
	
	<body>	
		<main>

			<div id="wrapper">
				<div id="header">
					<h2>CRM - Adicionar Novo Investidor</h2>
				</div>
			</div>
			
			<div id="container">
				
				<h3>Adicione e salve novos investidores</h3>
				<form:form action="saveCustomer" modelAttribute="customer" method="POST">
				<form:hidden path="id" />
				
					<table>
						<tbody>
							<tr>
								<td><label>Nome: </label></td>
								<td><form:input path="firstName"/></td>
							</tr>
							<tr>
								<td><label>Sobrenome: </label></td>
								<td><form:input path="lastName"/></td>
							</tr>
							<tr>
								<td><label>Contato: </label></td>
								<td><form:input path="email"/></td>
							</tr>
							<tr>
								<td><label></label></td>
								<td><input type="submit" value="Salvar" class="save" /></td>
							</tr>
							
						</tbody>
					</table>
				</form:form>
				<div style="clear; both"></div>
				<p><a href="${pageContext.request.contextPath}/customer/list">Voltar</a></p>
			</div>			
				
		</main>
		<footer>
			<small>Marcio Mafideju Rodrigues, 2022 - Riacho Grande, S�o Paulo - Brasil</small>
		</footer>
	</body>
</html>