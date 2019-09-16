<%@page import="br.com.fatecpg.musicas.dbMusica"%>
<%@page import="br.com.fatecpg.musicas.musica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Músicas</title>
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
            <h1><center>Musica</center></h1>
            <center>
                <table class="table">
                    <tr>
                        <th>Índice</th>
                        <th>Nome</th>
                        <th>Genero</th>
                        <th>Ano</th>
                        <th>Opções</th>
                    </tr>
                    <% for (musica musica : dbMusica.getMusica()) {%>
                    <tr>
                        <td><%=dbMusica.getMusica().indexOf(musica)%></td>
                        <td><%=musica.getNome()%></td>
                        <td><%=musica.getGenero()%></td>
                        <td><%=musica.getAno()%></td>
                        <td>
                            <a href="alterarMusica.jsp?index=<%=dbMusica.getMusica().indexOf(musica)%>">                                
                                <button type="button" class="btn btn-light"">Alterar</button>
                            </a>
                        <a class="remove" href="removerMusica.jsp?index=<%=dbMusica.getMusica().indexOf(musica)%>">
                            <button type="button" class="btn btn-danger">Remover</button>                            
                        </a></td>
                    </tr>
                    <%}%>
                </table>
            </center>
            <div class="categories">
                <a href="/Projeto03-Musicas/conteudo/incluirMusica.jsp">
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
