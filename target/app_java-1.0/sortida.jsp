<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sortida_Web</title>
</head>
<body>

	<%
	String numero = request.getAttribute("numero").toString();
	String miss = request.getAttribute("miss").toString();
	%>
	<h1>La tornada val: <%=numero %></h1>
	<h3>Missatge de tornada: <%=miss %></h3>
	<p>
	<p>
		<form name="tornada" method="post" action="inici.html">
		<input type="submit" value="Tornar" />
	</form>

</body>
</html>