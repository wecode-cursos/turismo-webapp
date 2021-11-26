<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Turismo en la Tierra Media</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="navbar-nav me-auto mb-2 mb-md-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/turismo/attractions/index.do">Atracciones</a></li>
				<li class="nav-item"><a class="nav-link disabled"> <c:out
							value="${user.coins}"></c:out> Monedas
				</a></li>
				<li class="nav-item"><a class="nav-link disabled"> <c:out
							value="${user.time}"></c:out> Tiempo
				</a></li>
			</ul>
			<a href="/turismo/logout" class="ms-auto link-light" hreflang="ar">Salir</a>
		</div>
	</div>
</nav>
