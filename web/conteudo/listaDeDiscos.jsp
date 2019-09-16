<%-- 
    Document   : listaDeDiscos
    Created on : 12/09/2019, 21:09:23
    Author     : helio
--%>
<%@page import="br.com.fatecpg.musicas.disco"%>
<%@page import="br.com.fatecpg.musicas.dbDisco" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="shortcut icon" href="img/play.svg">
        <link rel="stylesheet" href="css/base.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <div class="menu">
                <%@include file="../WEB-INF/jspf/header.jspf"%>
            </div>
        <div class="tudo">
            <center>
                <h1>Lista de Discos</h1>
                <table class="table">
                    <tr>
                        <th>Índice</th>
                        <th>Disco</th>
                        <th>Gravadora</th>
                        <th>Data Lançamento</th>
                        <th>Opções</th>
                    </tr>
                    <% for (disco disco : dbDisco.getdisco()) {%>
                    <tr>
                        <td><%=dbDisco.getdisco().indexOf(disco)%></td>
                        <td><%=disco.getNomeDisco()%></td>
                        <td><%=disco.getNomeGravadora()%></td>
                        <td><%=disco.getDataDisco()%></td>
                        <td><a href="alterarDisco.jsp?index=<%=dbDisco.getdisco().indexOf(disco)%>">
                                <button type="button" class="btn btn-light"">Alterar</button>
                            </a>
                        <a class="remove" href="removerDisco.jsp?index=<%=dbDisco.getdisco().indexOf(disco)%>">
                            <button type="button" class="btn btn-danger">Remover</button>
                        </a></td>
                    </tr>
                    <%}%>
                </table>
                
                <div class="categories">
                <a href="/Projeto03-Musicas/conteudo/incluirDisco.jsp">
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
            </center>
        </div>
        </div>
        <footer class="footer">
            <%@include file="../WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
