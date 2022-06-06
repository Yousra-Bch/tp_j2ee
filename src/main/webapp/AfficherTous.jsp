<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="UTF-8">
<title>Afficher tous les livres</title>
<link rel="stylesheet" href="AfficherTous.css">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
</head>
<body>
  

	<div class="table-title">
	<h3>Voici la liste des livres (le mot des passe pour télécharger les livres est : book123)</h3>
	</div>
		<table class="table-fill">
			<thead>
			<tr>
				<th class="text-left">Nom</th>
				<th class="text-left">Domaine</th>
				<th class="text-left">Télécharger</th>
			</tr>
			</thead>
			<tbody class="table-hover">
			<c:forEach var="Livre" items="${listl}">
			
				<tr>
					<td class="text-left">${Livre.nom}</td>
					<td class="text-left">${Livre.domaine}</td>
					<td class="text-left"><a href="${Livre.url}">${Livre.url}</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	<br/>
	<p><a href="Login.jsp" class="a">Déconnexion</a></p>
</body>
</html>