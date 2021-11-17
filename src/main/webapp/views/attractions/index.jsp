<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/partials/head.jsp"></jsp:include>
</head>
<body>
<% User user = (User) session.getAttribute("user"); %>
<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Turismo en la Tierra Media</a>
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

		<div class="bg-light p-5 rounded">
			<h1>Estas son las atracciones de la Tierra Media</h1>
		</div>
		<table class="table table-stripped table-hover">
			<thead>
				<tr>
					<c:if test="${user.getAdmin()}">
						<th></th>
					</c:if>
					<th>Atracci&oacute;n</th>
					<th>Costo</th>
					<th>Duraci&oacute;n</th>
					<th>Cupo</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${attractions}" var="attraction">
					<tr>
						<c:if test="${user.getAdmin()}">
							<td>
							<div class="btn-group" role="group">
 									<button type="button" class="btn btn-light rounded-0"><i class="bi bi-pencil-fill"></i></button>
 									<button type="button" class="btn btn-danger rounded"><i class="bi bi-x-circle-fill"></i></button>
							</div>
							</td>
						</c:if>
						<td><c:out value="${attraction.name}"></c:out></td>
						<td><c:out value="${attraction.cost}"></c:out></td>
						<td><c:out value="${attraction.duration}"></c:out></td>
						<td><c:out value="${attraction.capacity}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<c:if test="${user.getAdmin()}">
			<div></div>
			<div>
				<button type="button" class="btn btn-light" data-bs-toggle="modal" data-bs-target="#editAttraction">Nueva Atracci&oacute;n <i class="bi bi-plus-circle-fill"></i></button>
			</div>
		</c:if>
		
		<form action="createattraction.do" method="post">
			<div class="modal fade" id="editAttraction" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">Editar Atracci&oacute;n</h5>
	        				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
								<div class="mb-3">
									<label for="attracion-name" class="col-form-label">Nombre:</label>
									<input type="text" class="form-control" id="attraction-name">
								</div>
								<div class="mb-3">
									<label for="attracion-cost" class="col-form-label">Costo:</label>
									<input class="form-control" id="attraction-cost"></input>
								</div>
								<div class="mb-3">
									<label for="attracion-duration" class="col-form-label">Duration:</label>
									<input class="form-control" id="attraction-duration"></input>
								</div>
								<div class="mb-3">
									<label for="attracion-capacity" class="col-form-label">Capacity:</label>
									<input class="form-control" id="attraction-capacity"></input>
								</div>
				
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-light">Guardar</button>
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</main>

</body>
</html>