<%-- 
    Document   : incluirDisco
    Created on : 12/09/2019, 21:25:23
    Author     : helio
--%>
<%@page import="br.com.fatecpg.musicas.disco" %>
<%@page import="br.com.fatecpg.musicas.dbDisco" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("cancelar") != null) {
        response.sendRedirect("listaDeDiscos.jsp");
    }
    if (request.getParameter("add") != null) {
        String nomeDisco = request.getParameter("nomeDisco");
        String nomeGravadora = request.getParameter("nomeGravadora");
        String dataDisco = request.getParameter("dataDisco");
        dbDisco.getdisco().add(new disco(nomeDisco, nomeGravadora, dataDisco));
        response.sendRedirect("listaDeDiscos.jsp");
    }
%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
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
        <div>
            <%@include file="../WEB-INF/jspf/header.jspf" %>
        </div>
        <div class="tudo">
            <h1><center>Incluir Disco</center></h1>
            <form>
                <center>

                    Nome:<br/>
                    <input class="form-control form-control-lg" name="nomeDisco"/><br/>
                    Gravadora:<br/>
                    <input class="form-control form-control-lg" name="nomeGravadora"/><br/>
                    Data Lançamento:<br/>
                    <input class="form-control form-control-lg" name="dataDisco"/><br/></br>
                    <input type="submit" name="add" value="Incluir" class="btn btn-success"/><br/><br/>
                    <a href="/Projeto03-Musicas/conteudo/listaDeDiscos.jsp"><input type="button" value="Cancelar" class="btn btn-dark"/></a>
                </center>
            </form>
        </div>
        <footer class="footer">
            <%@include file="../WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
