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
	<div class="container">
		<form action="SignUpController" method="post">
			<div class="row">
				<div class="form-group col-md-3">
					<label for="codigo">Codigo</label> <input type="text"
						class="form-control" name="codigo" placeholder="1234" required>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-3">
					<label for="nombre">Nombre</label><input type="text"
						class="form-control" name="nombre"
						placeholder="Camilo Andrés Obando Abril" required>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-3">
					<label for="cedula">Cedula</label> <input type="text"
						class="form-control" name="cedula" placeholder="1090535741"
						required>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-3">
					<label for="fecha_nacimiento">Fecha de nacimiento</label> <input
						type="date" class="form-control" name="fecha_nacimiento" required>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-3">
					<label for="fecha_ingreso">Fecha de ingreso</label> <input
						type="date" class="form-control" name="fecha_ingreso" required>
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-3">
					<label for="fecha_retiro">Fecha de retiro</label> <input
						type="date" class="form-control" name="fecha_retiro" required>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<button type="submit" class="btn btn-primary">Registrate
						ahora</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>