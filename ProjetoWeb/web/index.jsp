<%-- 
    Document   : index
    Created on : 10/12/2017, 22:51:46
    Author     : ohara
--%>

<%@page import="javax.persistence.Query"%>
<%@page import="org.hibernate.Session"%>
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
            <div class="descriptionSite">
                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
            </div>
            
            <div id="caixaBusca">
            <form method="get" action="#" class="mdl-grid">
                <input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite a busca aqui"/>
                <button type="submit" class="mdl-cell mdl-cell--1-col "></button>
            </form>
            </div>
            
                <table id="caixaServicos">
                    <tr class="mdl-cell mdl-cell--12-col" >
                        <th class="mdl-cell mdl-cell--4-col">Header</th>
                        <th class="mdl-cell mdl-cell--4-col">Header2</th>
                        <th class="mdl-cell mdl-cell--4-col">Header2</th>
                    </tr>
                    <tr class="mdl-cell mdl-cell--12-col">
                        <td class="mdl-cell mdl-cell--4-col">Cell</td>
                        <td class="mdl-cell mdl-cell--4-col">Cell</td>
                        <td class="mdl-cell mdl-cell--4-col">Cell</td>
                    </tr>
                    <tr class="mdl-cell mdl-cell--12-col">
                        <td class="mdl-cell mdl-cell--4-col">Cell</td>
                        <td class="mdl-cell mdl-cell--4-col">Cell</td>
                        <td class="mdl-cell mdl-cell--4-col">Cell</td>
                    </tr>

                </table>
          
        </div>
        </main>
        </div>
    </body>
</html>