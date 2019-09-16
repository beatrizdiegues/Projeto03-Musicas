<%@page import="br.com.fatecpg.musicas.dbMusica"%>
<%@page import="br.com.fatecpg.musicas.musica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 if(request.getParameter("cancelar")!=null){
     response.sendRedirect("listaDeMusica.jsp");
 }
 if(request.getParameter("add")!=null){
     String nome = request.getParameter("Nome");
     String genero = request.getParameter("Genero");
     String Ano = request.getParameter("Ano");
     dbMusica.getMusica().add(new musica(nome,genero,Ano));
     response.sendRedirect("listaDeMusicas.jsp");   
 }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir Música</title>
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
            <h1><center>Cadastro de musica</center></h1>
            <h2> <center>Incluir musica </center></h2>
            <form>
                <center>
                    Nome:<br/>
                    <input class="form-control form-control-lg" name="Nome"/><br/>
                    Genero:<br/>
                    <input class="form-control form-control-lg" name="Genero"/><br/>
                    Ano:<br/>
                    <input class="form-control form-control-lg" name="Ano"/> <br/><br/>
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