<%@page import="br.com.fatecpg.musicas.musica"%>
<%@page import="br.com.fatecpg.musicas.dbMusica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 if(request.getParameter("set")!=null){
     int index = Integer.parseInt(request.getParameter("index"));
     String nome = request.getParameter("Nome");
     String genero = request.getParameter("Genero");
     String Ano = request.getParameter("Ano");
     dbMusica.getMusica().set(index, new musica(nome,genero,Ano));
     response.sendRedirect("/Projeto03-Musicas/conteudo/listaDeMusicas.jsp");   
 }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Música</title>
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
            <h1><center>Alterar musica</center></h1>
                    <%try {%>
                    <%int index = Integer.parseInt(request.getParameter("index"));%>
                    <%musica musica = dbMusica.getMusica().get(index);%>            
            <form>
                <center>
                    <br>
                    Indice: <br/>
                    <%=index%> <br/>
                    <input type="hidden" name="index" value="<%=index%>"/>
                    <input type="hidden" name="set" value="1"/>
                    Nome:<br/>
                    <input class="form-control form-control-lg" name="Nome" value=" <%=musica.getNome()%>"/><br/>
                    Genero:<br/>
                    <input class="form-control form-control-lg" name="Genero" value="<%=musica.getGenero()%>"/><br/>
                    Ano:<br/>
                    <input class="form-control form-control-lg" name="Ano" value="<%=musica.getAno()%>"/><br/><br/>
                    
                    <input type="submit" name="add" value="Alterar" class="btn btn-success"/><br/><br/>
                    <a href="/Projeto03-Musicas/conteudo/listaDeMusicas.jsp"><input type="button" value="Cancelar" class="btn btn-dark"/></a>

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

