<%@page import="model.Attraction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/partials/head.jsp"></jsp:include>
</head>
<% Attraction attraction = (Attraction) session.getAttribute("attraction"); %>
<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
		<div class="container-fluid">
			<a class="navbar-brand" href="/turismo/index.jsp">Turismo en la Tierra Media</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
				aria-controls="navbarCollapse" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav me-auto mb-2 mb-md-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="attractions.do">Atracciones</a></li>
				</ul>
				<a href="logout" class="ms-auto link-light" hreflang="ar">Salir</a>
			</div>
		</div>
	</nav>

	<main class="container">
		<form action="/turismo/attractions/edit.do" method="post">
			<input type="hidden" name="id" value="${attraction.id}">
			<div class="modal-body">
				<div class="mb-3">
					<label for="name" class="col-form-label">Nombre:</label>
					<input type="text" class="form-control" id="name" name="name" value="${attraction.name}">
				</div>
				<div class="mb-3">
					<label for="cost" class="col-form-label">Costo:</label> <input
						class="form-control" id="cost" name="cost" value="${attraction.cost}"></input>
				</div>
				<div class="mb-3">
					<label for="duration" class="col-form-label">Duration:</label>
					<input class="form-control" id="duration" name="duration" value="${attraction.duration}"></input>
				</div>
				<div class="mb-3">
					<label for="capacity" class="col-form-label">Capacity:</label>
					<input class="form-control" id="capacity" name="capacity" value="${attraction.capacity}"></input>
				</div>

			</div>
			<div>
				<button type="submit" class="btn btn-light">Guardar</button>
				<a onclick="window.history.back();" class="btn btn-secondary" role="button">Cancelar</a>
			</div>
		</form>

	</main>
</body>
</html>