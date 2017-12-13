<%-- 
    Document   : registro
    Created on : 12/12/2017, 12:03:23
    Author     : ohara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="_header.jsp" />
            <!-- Conteúdo do site -->
            <div id="caixaBusca">
            <form method="post" action="CadastroServlet" class="mdl-grid">
                <span class="mdl-cell mdl-cell--2-col">nome: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite o nome" name="nomeP"/>
                <span class="mdl-cell mdl-cell--2-col">Senha: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite a senha" name="senhaP"/>
                <span class="mdl-cell mdl-cell--2-col">email: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite o email" name="emailP"/>
                <span class="mdl-cell mdl-cell--2-col">cpf: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite o cpf" name="cpfP"/>
                <span class="mdl-cell mdl-cell--2-col">cnpj: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite o cnpj" name="cnpjP"/>
                <span class="mdl-cell mdl-cell--2-col">endereço: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite o endereço" name="endP"/>
                <span class="mdl-cell mdl-cell--2-col">Telefone: </span><input type="text" class="mdl-cell mdl-cell--10-col mdl-textfield__input" Placeholder="Digite o Telefone" name="telP"/>
                <button type="submit" class="mdl-cell mdl-cell--4-col ">Cadastrar</button>
            </form>
<jsp:include page="_footer.jsp" />