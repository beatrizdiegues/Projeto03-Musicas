<%@page import="br.com.fatecpg.musicas.musica"%>
<%@page import="br.com.fatecpg.musicas.dbMusica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(request.getParameter("remove")!= null){
    int index = Integer.parseInt(request.getParameter("index"));
    dbMusica.getMusica().remove(index);
    response.sendRedirect("/Projeto03-Musicas/conteudo/listaDeMusicas.jsp");
}
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Músicas</title>
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
            <h1><center>Remover musica</center></h1>
                    <%try {%>
                    <%int index = Integer.parseInt(request.getParameter("index"));%>
                    <% musica musica = dbMusica.getMusica().get(index);%>
            <form><center>
                    Indice: <%=index%> <br/>
                    <input type="hidden" name="index" value="<%=index%>"/>
                    <input type="hidden" name="remove" value="1"/>
                    <p class="font-weight-bold">Nome: <%=musica.getNome()%></p>
                    <p class="font-weight-bold">Genero: <%=musica.getGenero()%></p>
                    <p class="font-weight-bold">Ano: <%=musica.getAno()%></p>

                    <input type="submit" value="Remover" class="btn btn-danger"/>
                    <br><br>
                    <a href="/Projeto03-Musicas/conteudo/listaDeMusicas.jsp">
                        <input type="button" class="btn btn-light" name="Cancelar" value ="Cancelar"/>
                    </a>

                </center>        
            </form>
            <%} catch (Exception ex) {%>
            <h3> Erro ao processar formulario</h3>
            <%}%>
            </div>
        </div>
        <footer class="footer">
            <%@include file="../WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
