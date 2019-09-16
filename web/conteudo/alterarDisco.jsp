<%-- 
    Document   : alterarDisco
    Created on : 12/09/2019, 21:24:31
    Author     : helio
--%>
<%@page import="br.com.fatecpg.musicas.disco" %>
<%@page import="br.com.fatecpg.musicas.dbDisco" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%
    if (request.getParameter("set") != null) {
        int index = Integer.parseInt(request.getParameter("index"));
        String nomeDisco = request.getParameter("Nome");
        String nomeGravadora = request.getParameter("Gravadora");
        String dataDisco = request.getParameter("Lancamento");
        dbDisco.getdisco().set(index, new disco(nomeDisco, nomeGravadora, dataDisco));
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
        <div class="container">
        <div class="menu">
            <%@include file="../WEB-INF/jspf/header.jspf" %>
        </div>
        <div class="tudo">
            <h1><center>Alterar Disco</center></h1>
                    <%try {%>
                    <%int index = Integer.parseInt(request.getParameter("index"));%>
                    <%disco disco = dbDisco.getdisco().get(index);%>            
            <form>
                <center>
                    Índice:<br/>
                    <%=index%><br/>
                    <input type="hidden" name="index" value="<%=index%>"/>
                    <input type="hidden" name="set" value="1"/>
                    Nome Disco:<br/>
                    <input class="form-control form-control-lg" name="Nome" value="<%=disco.getNomeDisco()%>"/><br/>
                    Nome Gravadora:<br/>
                    <input class="form-control form-control-lg" name="Gravadora" value="<%=disco.getNomeGravadora()%>"/><br/>
                    Data Lançamento:<br/>
                    <input class="form-control form-control-lg" name="Lancamento" value="<%=disco.getDataDisco()%>"/><br/><br/>
                    
                    <input type="submit" name="add" value="Alterar" class="btn btn-success"/><br/><br/>
                    <a href="/Projeto03-Musicas/conteudo/listaDeDiscos.jsp"><input type="button" value="Cancelar" class="btn btn-dark"/></a>

                </center>
            </form>
            <%} catch (Exception ex) {%>
            <h3><center>Erro ao processar formulario</center></h3>
                    <%}%>
        </div>
        </div>
        <footer class="footer">
            <%@include file="../WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
