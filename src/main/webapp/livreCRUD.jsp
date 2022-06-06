<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="UTF-8">
<title>Gestion des livres</title>
<link rel="stylesheet" href="AfficherTous.css">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
</head>
<body>
  

	<div  class="table-title">
		<h3>Liste des livres</h3>
		<table class="table-fill" >
		<thead>
			<tr>
				<th class="text-left">ID</th>
				<th class="text-left">Nom</th>
				<th class="text-left">Domaine</th>
				<th class="text-left">Url</th>
				<th class="text-left">Actions</th>
				<th class="text-left"></th>
			</tr>
			</thead>
			<tbody class="table-hover">
			<c:forEach var="Livre" items="${listL}">
				<tr>
					<td class="text-left">${Livre.id}</td>
					<td class="text-left">${Livre.nom}</td>
					<td class="text-left">${Livre.domaine} </td>
					<td class="text-left">${Livre.url} </td>
					<td class="text-left"> <a href="Lupdate?id=${Livre.id}"> Modifier</a> </td>
					<td class="text-left"> <a href="Ldelete?id=${Livre.id}">Supprimer</a> </td>
					
				 
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	
	
	 
	  
	<c:if test="${Livre == null}">
	 <div class="table-title">
	 <h3>Ajouter un livre</h3>
   
          
      <form method="POST" action="${pageContext.request.contextPath}/Lnew">
       
         <table >
            
            <tr>
               <td>Nom &nbsp</td>
               <td><input type="text" name="nom" value="${Livre.nom}" /></td>
            </tr>
            <tr>
               <td>Domaine &nbsp</td>
               <td><input type="text" name="domaine" value="${Livre.domaine}" /></td>
            </tr>
             <tr>
               <td>Url &nbsp</td>
               <td><input type="text" name="url" value="${Livre.url}" /></td>
            </tr>
             </table>
               <br> <br>              
             <input type="submit" value="Ajouter" class="b" />
                   
               
        
      </form>
	
	  </div >
	  </c:if>
	  
	<c:if test="${Livre != null}">
	  <div class="table-title">
	 <h3>Modifier un livre</h3>
   
          
      <form method="POST" action="${pageContext.request.contextPath}/Lupdate">
          <input type="hidden" name="id" value="<c:out value='${Livre.id}' />" />
         <table >
            
            <tr>
               <td>Nom &nbsp</td>
               <td><input type="text" name="nom" value="${Livre.nom}" /></td>
            </tr>
            <tr>
               <td>Domaine &nbsp</td>
               <td><input type="text" name="domaine" value="${Livre.domaine}" /></td>
            </tr>
            <tr>
               <td>Url &nbsp</td>
               <td><input type="text" name="url" value="${Livre.url}" /></td>
            </tr>
            
             </table>
               <br> <br>              
             <input type="submit" value="Modifier" class="b"/>
                   
               
        
      </form>
	
	  	</div>
	  </c:if>
	         
             
       
	</body>
</html>