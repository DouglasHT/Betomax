<%-- 
    Document   : login
    Created on : 16/09/2018, 18:52:57
    Author     : doug
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="<c:url value='/Resources/css/bootstrap.css' />" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/Resources/css/style.css' />" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/Resources/css/principal.css' />" />
        <title>BETOMAX</title>
    </head>

    <body>
        
        <ul>
            <li class="logo" >      <a href="index">Betomax</a></li>
            <li class="linkmenu">   <a href="cadastro">Cadastrar</a></li>
        </ul>
        <div class="container">
           
            <div class="col-md-4 login">
                
       
                 <div>
                    <form action="home" method="POST">
                        <div class="form-group subtitulo">
                            E-mail
                            <input type="email" name="email" id="email" class="form-control" required="">
                        </div>
                
                        <div class="form-group subtitulo">
                            Senha
                            <input type="password" name="senha" id="senha" class="form-control" required="">
                        </div>
                
                        <div class="form-group">
                            <input type="submit" id="submit" class="btn btn-success" value="Acessar">
                        </div>
                    </form>
                 </div>                
            </div>           
        </div>        
    </body>
</html>
