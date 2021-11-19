<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/partials/head.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/partials/nav.jsp"></jsp:include>

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
				<button type="submit" class="btn btn-primary btn-light">Guardar</button>
				<a onclick="window.history.back();" class="btn btn-secondary" role="button">Cancelar</a>
			</div>
		</form>

	</main>
</body>
</html>