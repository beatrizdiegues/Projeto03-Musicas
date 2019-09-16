<%-- 
    Document   : removerDisco
    Created on : 12/09/2019, 21:26:50
    Author     : helio
--%>
<%@page import="br.com.fatecpg.musicas.disco" %>
<%@page import="br.com.fatecpg.musicas.dbDisco" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (request.getParameter("remove") != null) {
        int index = Integer.parseInt(request.getParameter("index"));
        dbDisco.getdisco().remove(index);
        response.sendRedirect("/Projeto03-Musicas/conteudo/listaDeDiscos.jsp");
    }
%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="shortcut icon" href="img/play.svg">
        <style>
            p{
                font-size: 20pt;
            }
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
            <h1><center>Remover Disco</center></h1>
                    <%try {%>
                    <%int index = Integer.parseInt(request.getParameter("index"));%>
                    <% disco disco = dbDisco.getdisco().get(index);%>
            <form>
                <center>
                    Índice: <%=index%> <br/>
                    <input type="hidden" name="index" value="<%=index%>"/>
                    <input type="hidden" name="remove" value="1"/>
                    <p class="font-weight-bold">Nome Disco: <%=disco.getNomeDisco()%></p>
                    <p class="font-weight-bold">Nome Gravadora: <%=disco.getNomeGravadora()%></p>
                    <p class="font-weight-bold">Data Lançamento: <%=disco.getDataDisco()%></p>
                    
                    <input type="submit" value="Remover" class="btn btn-danger"/>
                    <br><br>
                    <a href="/Projeto03-Musicas/conteudo/listaDeDiscos.jsp">
                        <input type="button" class="btn btn-light" name="Cancelar" value ="Cancelar"/>
                    </a>
            </form>
            <%} catch (Exception ex) {%>
            <h3><center>Erro ao processar formulário</center></h3>
                    <%}%>
        </div>
        </div>
        <footer class="footer">
            <%@include file="../WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>