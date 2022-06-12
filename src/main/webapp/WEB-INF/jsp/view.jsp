<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<html lang="en">
<head>
	<title>PokeDex</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
<div class="container-fluid">
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title text-capitalize"><b>${pokemon.name}</b></h3>
				</div>
				<div class="panel-body">
					<div class="col-xs-3">
						<div class="row">
							<img src="${pokemon.sprites.frontDefault}" class="img-responsive" />
						</div>
						<div class="row">
							<h5><b>Base Stats</b></h5>
							<p class="text-capitalize">
							<c:forEach items="${pokemon.stats}" var="pokeStat" varStatus="vs">
								${fn:replace(pokeStat.stat.name, "-", " ")}: ${pokeStat.baseStat}${not vs.last ? "<br/>" : ""}
							</c:forEach>
							</p>
						</div>
					</div>
					<div class="col-xs-9 text-left text-capitalize">
						<h5>
							<b>Type:</b> <c:forEach items="${pokemon.types}" var="pokeType" varStatus="vs">
								${pokeType.type.name}${not vs.last ? ', ' : ''}
							</c:forEach>
						</h5>
						<h5>
							<b>Abilities:</b> <c:forEach items="${pokemon.abilities}" var="pokeAbility" varStatus="vs">
								${fn:replace(pokeAbility.ability.name, "-", " ")}${pokeAbility.isHidden ? " (Hidden)" : ""}${not vs.last ? ", " : ""}
							</c:forEach>
						</h5>
						<h5>
							<b>Featured in:</b> <c:forEach items="${pokemon.gameIndices}" var="version" varStatus="vs">
								${fn:replace(version.version.name, "-", " ")}${not vs.last ? ", " : ""}
							</c:forEach>
						</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>