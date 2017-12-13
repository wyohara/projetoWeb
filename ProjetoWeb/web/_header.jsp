<%-- 
    Document   : header
    Created on : 13/12/2017, 08:59:27
    Author     : ohara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trampo Certo</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-deep_purple.min.css" /> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <!--Importando o diretorio raiz do projeto-->
        <link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/css.css"/>
        
        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
        
    </head>
    <body>
        <!-- Always shows a header, even in smaller screens. -->
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
        <header class="mdl-layout__header">
        <div class="mdl-layout__header-row">
          <!-- Title -->
         <a href="<%=request.getContextPath()%>/" class=" titleSite"> <span class="mdl-layout-title titleSite">Trampo Certo</span></a>
          <!-- Add spacer, to align navigation to the right -->
          <div class="mdl-layout-spacer"></div>
          <!-- Navigation. We hide it in small screens. -->
          <nav class="mdl-navigation mdl-layout--large-screen-only">
            <%
                //caso o login seja um sucesso é exibido a mensagem abaixo
                if (session.getAttribute("prestador") == null) {
             %>
            <form method="post" action="LoginServlet" id="formLogin">   
            <div class="mdl-grid">
            <input class="mdl-textfield__input mdl-cell mdl-cell--3-col" type="text" placeholder="Email" name="emailPrestador" />    
            <input class="mdl-textfield__input mdl-cell mdl-cell--3-col" type="password" placeholder="Senha" name="senhaPrestador" />

            <button class="mdl-button mdl-js-button btnSubmit mdl-cell mdl-cell--3-col">Entrar</button>

            <a class="mdl-button mdl-js-button btnSubmit mdl-cell mdl-cell--3-col" href="<%= request.getContextPath() %>/registro.jsp">Cadastrar</a>
            </div>
            </form>
            <%}else{%>
            <form method="post" action="DeslogarServlet" id="formLogin">   
                <div class="mdl-grid">
                    <a class="mdl-button mdl-js-button btnSubmit mdl-cell mdl-cell--6-col" href="<%=request.getContextPath()%>/logado.jsp">Conta</a>
                    <button class="mdl-button mdl-js-button btnSubmit mdl-cell mdl-cell--4-col" >sair</button>
                </div>
            </form>
            <% };%>
          </nav>
        </div>
        </header>
        <main class="mdl-layout__content">
        <div class="page-content boxContent">