<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="Login.css">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
</head>
<body>
  

	  <div class="logo">
      <form method="POST"  class="login-block" action="${pageContext.request.contextPath}/login">
                <h1>Login</h1>
                <input type="text" name="login" id="username" placeholder="Nom d'utilisateur" required="" />
            
                <input type="password" name="pwd" id="password" placeholder="Mot de passe" required=""/>
                   
                 <button  type="submit">Connexion</button>       
        
      </form>
	
	  </div>
	</body>
</html>