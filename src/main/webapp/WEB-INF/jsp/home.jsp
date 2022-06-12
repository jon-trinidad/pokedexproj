<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html lang="en">
<head>
	<title>PokeDex</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<c:url value="css/custom.css"/>" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/home">Pokedex</a>
		</div>
	</div>
</nav>

<div class="container-fluid text-center">
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2">
			<div class="row">
				<div class="col-xs-12 text-left">
					<h3><b>Pokemons</b></h3>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6 col-sm-3">
					<p><a class="btn btn-default btn-block" href="${pageContext.request.contextPath}/view/bulbasaur">Bulbasaur</a></p></p>
				</div>
				<div class="col-xs-6 col-sm-3">
					<p><a class="btn btn-default btn-block" href="${pageContext.request.contextPath}/view/charmander">Charmander</a></p>
				</div>
				<div class="col-xs-6 col-sm-3">
					<p><a class="btn btn-default btn-block" href="${pageContext.request.contextPath}/view/squirtle">Squirtle</a></p>
				</div>
				<div class="col-xs-6 col-sm-3">
					<p><a class="btn btn-default btn-block" href="${pageContext.request.contextPath}/view/chikorita">Chikorita</a></p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6 col-sm-3">
					<p><a class="btn btn-default btn-block" href="${pageContext.request.contextPath}/view/cyndaquil">Cyndaquil</a></p>
				</div>
				<div class="col-xs-6 col-sm-3">
					<p><a class="btn btn-default btn-block" href="${pageContext.request.contextPath}/view/totodile">Totodile</a></p>
				</div>
				<div class="col-xs-6 col-sm-3">
					<p><a class="btn btn-default btn-block" href="${pageContext.request.contextPath}/view/treecko">Treecko</a></p>
				</div>
				<div class="col-xs-6 col-sm-3">
					<p><a class="btn btn-default btn-block" href="${pageContext.request.contextPath}/view/torchic">Torchic</a></p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6 col-sm-3">
					<p><a class="btn btn-default btn-block" href="${pageContext.request.contextPath}/view/mudkip">Mudkip</a></p>
				</div>
				<div class="col-xs-6 col-sm-3">
					<p><a class="btn btn-default btn-block" href="${pageContext.request.contextPath}/view/pikachu">Pikachu</a></p>
				</div>
				<div class="col-xs-6 col-sm-3">
					<p><a class="btn btn-default btn-block" href="${pageContext.request.contextPath}/view/diglett">Diglett</a></p>
				</div>
				<div class="col-xs-6 col-sm-3">
					<p><a class="btn btn-default btn-block" href="${pageContext.request.contextPath}/view/rayquaza">Rayquaza</a></p>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>