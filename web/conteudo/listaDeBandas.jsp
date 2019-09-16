<%-- 
    Document   : listaDeBandas
    Created on : 12/09/2019, 21:07:00
    Author     : helio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.musicas.bandas"%>
<%@page import="br.com.fatecpg.musicas.dbBandas"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Bandas</title>
        <link rel="shortcut icon" href="img/play.svg">
        <!--<link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">-->
    </head>
    <body>
        
        <div class="container">
            <div class="menu">
                <%@include file="../WEB-INF/jspf/header.jspf"%>
            </div>
            
            <div class="tudo">
            <h1><center>Bandas</center></h1>
            <center>
                <table class="table">
                    <tr>
                        <th>Índice</th>
                        <th>Nome</th>
                        <th>Genero</th>
                        <th>Ano</th>
                        <th>Opções</th>
                    </tr>
                    <% for (bandas banda : dbBandas.getBanda()) {%>
                    <tr>
                        <td><%=dbBandas.getBanda().indexOf(banda)%></td>
                        <td><%=banda.getNome()%></td>
                        <td><%=banda.getGenero()%></td>
                        <td><%=banda.getAno()%></td>
                        <td><a href="alterarBanda.jsp?index=<%=dbBandas.getBanda().indexOf(banda)%>">
                                <button type="button" class="btn btn-light">Alterar</button>
                            </a>
                        <a class="remove" href="removerBanda.jsp?index=<%=dbBandas.getBanda().indexOf(banda)%>">
                            <button type="button" class="btn btn-danger">Remover</button>
                        </a></td>

                    </tr>
                    <%}%>

                </table></center>
            
            <div class="categories">
                <a href="/Projeto03-Musicas/conteudo/incluirBanda.jsp">
                    <div class="card" id="acesso">
                        <h2>Incluir</h2>
                    </div>
                </a>
                <br>
                <a href="/Projeto03-Musicas/index.html">
                    <div class="card" id="acesso">
                        <h2>Home</h2>
                    </div>
                </a>
            </div>
            </div>
        </div>
        <footer class="footer">
            <%@include file="../WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
