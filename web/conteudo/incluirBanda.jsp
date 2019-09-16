<%-- 
    Document   : incluirBanda
    Created on : 13/09/2019, 04:18:24
    Author     : helio
--%>
<%@page import="br.com.fatecpg.musicas.bandas"%>
<%@page import="br.com.fatecpg.musicas.dbBandas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 if(request.getParameter("cancelar")!=null){
     response.sendRedirect("listaDeBandas.jsp");
 }
 if(request.getParameter("add")!=null){
     String nome = request.getParameter("Nome");
     String genero = request.getParameter("Genero");
     String Ano = request.getParameter("Ano");
     dbBandas.getBanda().add(new bandas(nome,genero,Ano));
     response.sendRedirect("listaDeBandas.jsp");   
 }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir Banda</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>
            input {
                width:30%
            }
        </style>
    </head>
    <body>
        
        <div class="container">
            <div class="menu">
                <%@include file="../WEB-INF/jspf/header.jspf" %>
            </div>
            <div class="tudo">
            <h1><center>Cadastro de Banda</center></h1>
            <h2> <center>Incluir Banda </center></h2>
            <form><center>
                    Nome:<br/>
                    <input class="form-control form-control-lg" name="Nome"/><br/>
                    Genero:<br/>
                    <input class="form-control form-control-lg" name="Genero"/><br/>
                    Ano:<br/>
                    <input class="form-control form-control-lg" type="number" name="Ano"/> <br/><br/>
                    <input type="submit" name="add" value="Incluir" class="btn btn-success"/><br/><br/>
                    <a href="/Projeto03-Musicas/conteudo/listaDeMusicas.jsp"><input type="button" value="Cancelar" class="btn btn-dark"/></a>    

                </center>   
            </form><br/><br/>
            </div>
        </div>
        <footer class="footer">
            <%@include file="../WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
