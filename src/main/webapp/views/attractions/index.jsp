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

		<div class="bg-light p-5 rounded">
			<h1>Estas son las atracciones de la Tierra Media</h1>
		</div>
		<table class="table table-stripped table-hover">
			<thead>
				<tr>
					<th>Atracci&oacute;n</th>
					<th>Costo</th>
					<th>Duraci&oacute;n</th>
					<th>Cupo</th>
					<c:if test="${user.isAdmin()}">
						<th></th>
					</c:if>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${attractions}" var="attraction">
					<tr>
						<td><c:out value="${attraction.name}"></c:out></td>
						<td><c:out value="${attraction.cost}"></c:out></td>
						<td><c:out value="${attraction.duration}"></c:out></td>
						<td><c:out value="${attraction.capacity}"></c:out></td>
						<c:if test="${user.admin}">
							<td><a href="/turismo/attractions/edit.do?id=${attraction.id}"
								class="btn btn-light rounded-0" role="button"><i
									class="bi bi-pencil-fill"></i></a> <a
								href="/turismo/attractions/delete.do?id=${attraction.id}"
								class="btn btn-danger rounded" role="button"><i
									class="bi bi-x-circle-fill"></i></a></td>
						</c:if>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<c:if test="${user.isAdmin()}">
			<div></div>
			<div>
				<a href="/turismo/attractions/create.do" class="btn btn-primary" role="button">Nueva
					Atracci&oacute;n <i class="bi bi-plus-circle-fill"></i>
				</a>
			</div>
		</c:if>

	</main>

</body>
</html>