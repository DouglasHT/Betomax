<%-- 
    Document   : saudacao
    Created on : 17/09/2018, 13:30:03
    Author     : doug
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="<c:url value='/Resources/css/style.css' />" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/Resources/css/principal.css' />" />
        <title>BETOMAX</title>
   
    </head>
    <body>
        <ul>
            <li class="logo" >      <a href="index">Betomax</a></li>
            <li class="linkmenu">   <a href="login">Login</a></li>
        </ul>
                   
        <p class="titulo style">Obrigado por cadastrar! Seja bem vindo(a) ${nome}!</p>
       
    </body>
</html>
