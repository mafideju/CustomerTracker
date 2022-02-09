<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="data" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Acesse sua conta</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		 <link rel="stylesheet" type="text/css" href="css/styles.css">
		<style></style>
	</head>
<body>

	<main class="wrapper fadeInDown">
		<section id="formContent">
			<div>
				<h2>Acesse sua conta</h2>
			</div>
			<article>
				<data:if test="${param.error != null}">
					<div class="error fadeIn fourth">
						<p>Sinto, credenciais inválidas.</p>
					</div>	
				</data:if>
				
				<data:if test="${param.logout != null}">
					<div class="success fadeIn first">
						<p>Você foi deslogado da página.</p>
					</div>	
				</data:if>
			</article>
			
			<div>
				<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
			        <input type="text" id="login" class="fadeIn second" name="username" placeholder="Usuário">
			        <input type="password" id="password" class="fadeIn third" name="password" placeholder="Senha">
			        <input type="submit" class="fadeIn fourth" value="Entrar">					
				</form:form>
			</div>
		</section>
	</main>

</body>
</html>