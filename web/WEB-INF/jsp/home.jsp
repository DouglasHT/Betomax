<%-- 
    Document   : home
    Created on : 17/09/2018, 10:42:24
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
            <li class="logo" >      <a href="home">Betomax</a></li>
            <li class="linkmenu">   <a href="index">Logout</a></li>
            <li class="linkmenu">   <a href="cliente">Cliente</a></li>            
            <li class="linkmenu">   <a href="equipamento">Equipamento</a></li>
            <li class="linkmenu">   <a href="listaEquipamentos">Alugar</a></li> 
            <li class="linkmenu">   <a href="relatorios">Relatorios</a></li>
        </ul>
                   
        <p class="titulo style">Seja bem vindo ${nome}!</p>
       
    </body>
</html>