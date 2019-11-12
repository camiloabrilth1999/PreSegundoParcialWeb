<%@page import="model.Empleado"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<body>
	<%
		Empleado empleado = (Empleado) request.getAttribute("empleado");
	%>
	<div align="center">
		<table>
			<tr>
				<td>Codigo:</td>
				<td><input type="text" size="20" name="codigo"
					value="<%=empleado.getCodigo()%>"></td>
			</tr>
			<tr>
				<td>Nombre:</td>
				<td><input type="text" size="20" name="nombre"
					value="<%=empleado.getNombre()%>"></td>
			</tr>
			<tr>
				<td>Cedula:</td>
				<td><input type="text" size="20" name="cedula"
					value="<%=empleado.getCedula()%>"></td>
			</tr>
			<tr>
				<td>Fecha de nacimiento:</td>
				<td><input type="text" size="20" name="nombre"
					value="<%=empleado.getFechanacimiento()%>"></td>
			</tr>
			<tr>
				<td>Fecha de ingreso:</td>
				<td><input type="text" size="20" name="nombre"
					value="<%=empleado.getFechaingreso()%>"></td>
			</tr>
			<tr>
				<td>Fecha de retiro:</td>
				<td><input type="text" size="20" name="nombre"
					value="<%=empleado.getFecharetiro()%>"></td>
			</tr>
		</table>
	</div>
</body>
</html>