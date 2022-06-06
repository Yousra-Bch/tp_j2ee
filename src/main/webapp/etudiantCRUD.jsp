<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="UTF-8">
<title>Gestion des étudiants</title>
<link rel="stylesheet" href="AfficherTous.css">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
</head>
<body>
  
	<div  class="table-title">
		<h3>Liste des étudiants</h3>
		<table class="table-fill" >
		<thead>
			<tr>
				<th class="text-left">ID</th>
				<th class="text-left">Nom</th>
				<th class="text-left">Prenom</th>
				<th class="text-left">Login</th>
				<th class="text-left">Password</th>
				<th class="text-left">Nb_LivreMensuel_Autorise</th>
				<th class="text-left">Nb_Livre_Emprunte</th>
				<th class="text-left">Type_Package</th>
				<th class="text-left">Password Livre</th>
				<th class="text-left">Actions</th>
				<th class="text-left"></th>
			</tr>
			<thead>
			<tbody class="table-hover">
			<c:forEach var="Etudiant" items="${listE}">
				<tr>
					<td class="text-left">${Etudiant.id}</td>
					<td class="text-left">${Etudiant.nom}</td>
					<td class="text-left">${Etudiant.prenom} </td>
					<td class="text-left">${Etudiant.login}</td>
					<td class="text-left">${Etudiant.pwd}</td>
					<td class="text-left">${Etudiant.nbLivreMensuel_Autorise} </td>
					<td class="text-left">${Etudiant.nbLivreEmprunte}</td>
					<td class="text-left">${Etudiant.pack} </td>
					<td class="text-left">${Etudiant.pwdLivre} </td>
					<td class="text-left"> <a href="update?id=${Etudiant.id}"> Modifier</a> </td>
					<td class="text-left"> <a href="delete?id=${Etudiant.id}">Supprimer</a> </td>
					
				 
				</tr>
			</c:forEach>
			</thead>
		</table>
	</div>
	
	
	 
	  
	<c:if test="${Etudiant == null}">
	  <div class="table-title">
	 <h3>Ajouter un étudiant</h3>
   
          
      <form method="POST" action="${pageContext.request.contextPath}/new">
       
         <table >
            
            <tr>
               <td>Nom &nbsp</td>
               <td><input type="text" name="nom" value="${Etudiant.nom}" /></td>
            </tr>
            <tr>
               <td>Prenom &nbsp</td>
               <td><input type="text" name="prenom" value="${Etudiant.prenom}" /></td>
            </tr>
            
            <tr>
               <td>Login &nbsp </td>
               <td><input type="text" name="login" value="${Etudiant.login}" /></td>
            </tr>
            <tr>
               <td>Password &nbsp</td>
               <td><input type="password" name="pwd" value="${Etilisateur.pwd}" /></td>
            </tr>
            
            <tr>
               <td>Nb_LivreMensuel_Autorise &nbsp </td>
               <td><input type="text" name="nbLivreMensuel_Autorise" value="${Etudiant.login}" /></td>
            </tr>
            <tr>
               <td>Nb_Livre_Emprunte &nbsp</td>
               <td><input type="text" name="nbLivreEmprunte" value="${Etudiant.nbLivreEmprunte}" /></td>
            </tr>
            
             <tr>
               <td>Type_Package &nbsp</td>
               <td><input type="text" name="pack" value="${Etudiant.pack}" /></td>
            </tr>
            
            <tr>
               <td>Password Livre &nbsp</td>
               <td><input type="text" name="pwdLivre" value="${Etudiant.pwdLivre}" /></td>
            </tr>
          
             </table>
               <br> <br>              
             <input type="submit" value="Ajouter" class="b"/>
                   
               
        
      </form>
	
	  </div>
	  </c:if>
	  
	<c:if test="${Etudiant != null}">
	  <div class="table-title">
	 <h3>Modifier un étudiant</h3>
   
          
      <form method="POST" action="${pageContext.request.contextPath}/update">
          <input type="hidden" name="id" value="<c:out value='${Etudiant.id}' />" />
         <table >
            
            <tr>
               <td>Nom &nbsp</td>
               <td><input type="text" name="nom" value="${Etudiant.nom}" /></td>
            </tr>
            <tr>
               <td>Prenom &nbsp</td>
               <td><input type="text" name="prenom" value="${Etudiant.prenom}" /></td>
            </tr>
            
            <tr>
               <td>Login &nbsp </td>
               <td><input type="text" name="login" value="${Etudiant.login}" /></td>
            </tr>
            <tr>
               <td>Password &nbsp</td>
               <td><input type="password" name="pwd" value="${Etudiant.pwd}" /></td>
            </tr>
            
            <tr>
               <td>Nb_LivreMensuel_Autorise &nbsp </td>
               <td><input type="text" name="nbLivreMensuel_Autorise" value="${Etudiant.nbLivreMensuel_Autorise}" /></td>
            </tr>
            <tr>
               <td>Nb_Livre_Emprunte &nbsp</td>
               <td><input type="text" name="nbLivreEmprunte" value="${Etudiant.nbLivreEmprunte}" /></td>
            </tr>
            
             <tr>
               <td>Type_Package &nbsp</td>
               <td><input type="text" name="pack" value="${Etudiant.pack}" /></td>
            </tr>
            
            <tr>
               <td>Password Livre &nbsp</td>
               <td><input type="text" name="pwdLivre" value="${Etudiant.pwdLivre}" /></td>
            </tr>
          
             </table>
               <br> <br>              
             <input type="submit" value="Modifier" class="b"/>
                   
               
        
      </form>
	
	  	</div>
	  </c:if>
	         
             
       
	</body>
</html>