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
				<a href="attractions/create.do" class="btn btn-light" role="button">Nueva Atracci&oacute;n <i class="bi bi-plus-circle-fill"></i></a>
			</div>
		</c:if>
		
	</main>

</body>
</html>