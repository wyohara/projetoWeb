<%-- 
    Document   : registro
    Created on : 12/12/2017, 12:03:23
    Author     : ohara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NomeAqui</title>
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
         <a href="/"> <span class="mdl-layout-title">Nome Aqui</span></a>
          <!-- Add spacer, to align navigation to the right -->
          <div class="mdl-layout-spacer"></div>
          <!-- Navigation. We hide it in small screens. -->
          <nav class="mdl-navigation mdl-layout--large-screen-only">
              <form method="post" action="LoginServlet" id="formLogin">
                  <div class="mdl-grid">
                  <input class="mdl-textfield__input mdl-cell mdl-cell--3-col" type="text" placeholder="Email" name="emailPrestador" />    
                  <input class="mdl-textfield__input mdl-cell mdl-cell--3-col" type="text" placeholder="Senha" name="senhaPrestador" />
   
                  <button class="mdl-button mdl-js-button btnSubmit mdl-cell mdl-cell--3-col">Entrar</button>
                  
                  <a class="mdl-button mdl-js-button btnSubmit mdl-cell mdl-cell--3-col" href="<%= request.getContextPath() %>/registro.jsp">Cadastrar</a>
                  </div>
              </form>
          </nav>
        </div>
        </header>
        <div class="mdl-layout__drawer">
        <span class="mdl-layout-title">Title</span>
        <nav class="mdl-navigation">
          <a class="mdl-navigation__link" href="">Link</a>
          <a class="mdl-navigation__link" href="">Link</a>
          <a class="mdl-navigation__link" href="">Link</a>
          <a class="mdl-navigation__link" href="">Link</a>
        </nav>
        </div>
        <main class="mdl-layout__content">
        <div class="page-content">
            <!-- Conteúdo do site -->
            <div id="caixaBusca">
            <form method="post" action="CadastroServlet" class="mdl-grid">
                <span class="mdl-cell mdl-cell--2-col">nome: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite o nome" name="nomeP"/>
                <span class="mdl-cell mdl-cell--2-col">Senha: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite a senha" name="senhaP"/>
                <span class="mdl-cell mdl-cell--2-col">Repita Senha: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Repita a senha" name="repeteSenhaP"/>
                <span class="mdl-cell mdl-cell--2-col">email: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite o email" name="emailP"/>
                <span class="mdl-cell mdl-cell--2-col">cpf: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite o cpf" name="cpfP"/>
                <span class="mdl-cell mdl-cell--2-col">cnpj: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite o cnpj" name="cnpjP"/>
                <span class="mdl-cell mdl-cell--2-col">endereço: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite o endereço" name="endP"/>
                <span class="mdl-cell mdl-cell--2-col">Telefone: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite o Telefone" name="telP"/>
                <button type="submit" class="mdl-cell mdl-cell--4-col ">Cadastrar</button>
            </form>
    </body>
</html>