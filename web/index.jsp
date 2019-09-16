<%-- 
    Document   : index
    Created on : 10/09/2019, 10:14:57
    Author     : gabriela.s.duarte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto POO 003</title>
        <style>
            
        * {
            box-sizing: border-box;
          }
        body {margin: 0; background-color: gray; font-family: arial;}
       
        .header {
          background-color: #f1f1f1;
          padding: 20px;
          text-align: center;
          font-family: arial;
          font-size: 200px;
        }
        /* Style the top navigation bar */
        .topnav {
          overflow: hidden;
          background-color: #333;
        }
        /* Style the topnav links */
        .topnav a {
          float: left;
          display: block;
          color: #f2f2f2;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
          font-family: arial;
        }
        /* Change color on hover */
        .topnav a:hover {
          background-color: #ddd;
          color: black;
        }
        .footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: black;
  color: white;
  text-align: center;
}
 
        </style>
    </head>
<body>

<div class="Header">
  <h1>My Music Record  </h1>
</div>

<div class="topnav">
  <a href="/Projeto03-Musicas/Bandas/listar.jsp">Bandas</a>
  <a href="/Projeto03-Musicas/Album/listar.jsp">Albuns</a>
  <a href="/Projeto03-Musicas/Musicas/listar.jsp">Musicas</a>
</div>
    <div class="row">
  <div class="column side">
    <h2>Discos</h2>
    <p >Total de 1 disco cadastrado </p>
    
  </div>
  
  <div class="column middle">
    <h2>Musicas</h2>
    <p>Total de 10 músicas cadastradas.</p>
  </div>
  
  <div class="column side">
    <h2>Banda</h2>
    <p> Total de 1 banda cadastrada.</p>
  </div>
</div>

<div class="footer">
  <p>Projeto criado pelos alunos do 4° Ciclo de ADS - Disciplina POO - All Rights Reserved</p>
</div>
    
</body>
</html>
        
            
   