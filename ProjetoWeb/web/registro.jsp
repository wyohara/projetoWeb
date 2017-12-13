<%-- 
    Document   : registro
    Created on : 12/12/2017, 12:03:23
    Author     : ohara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="_header.jsp" />
<!-- Conteúdo do site -->
<div id="caixaBusca">
    
<button class="mdl-cell mdl-cell--4-col btnSelectCPF">Selecionar CPF</button>
<button class="mdl-cell mdl-cell--4-col btnSelectCNPJ">Selecionar CNPJ</button>
<form method="post" action="CadastroServlet" class="mdl-grid">
    <span class="mdl-cell mdl-cell--4-col">nome: </span><input type="text" class="mdl-cell mdl-cell--6-col mdl-textfield__input" Placeholder="Digite o nome" name="nomeP"/>
    <span class="mdl-cell mdl-cell--4-col">Senha: </span><input type="password" class="mdl-cell mdl-cell--6-col mdl-textfield__input" Placeholder="Digite a senha" name="senhaP"/>
    <span class="mdl-cell mdl-cell--4-col">email: </span><input type="text" class="mdl-cell mdl-cell--6-col mdl-textfield__input" Placeholder="Digite o email" name="emailP"/>
    <span class="mdl-cell mdl-cell--4-col">cpf: </span><input type="text" class="mdl-cell mdl-cell--6-col mdl-textfield__input cpfValue" Placeholder="Digite o cpf" name="cpfP"/> 
    <span class="mdl-cell mdl-cell--4-col">cnpj: </span><input type="text" class="mdl-cell mdl-cell--6-col mdl-textfield__input cnpjValue" Placeholder="Digite o cnpj" name="cnpjP"/>
    <span class="mdl-cell mdl-cell--4-col">endereço: </span><input type="text" class="mdl-cell mdl-cell--6-col mdl-textfield__input" Placeholder="Digite o endereço" name="endP"/>
    <span class="mdl-cell mdl-cell--4-col">Telefone: </span><input type="text" class="mdl-cell mdl-cell--6-col mdl-textfield__input" Placeholder="Digite o Telefone" name="telP"/>
    <button type="submit" class="mdl-cell mdl-cell--4-col ">Cadastrar</button>
</form>
    <script>
        $(".cnpjValue").prop('disabled', true).val('').css({backgroundColor: '#c2c2c2'});
        $( ".btnSelectCPF" ).click(function() {
            $(".cnpjValue").prop('disabled', true).val('').css({backgroundColor: '#c2c2c2'});
            $('.cpfValue').prop('disabled', false).css({backgroundColor: '#e6e6e6'});
            });
            
        $( ".btnSelectCNPJ" ).click(function() {
            $('.cnpjValue').prop('disabled', false).css({backgroundColor: '#e6e6e6'});
            $('.cpfValue').prop('disabled', true).val('').css({backgroundColor: '#c2c2c2'});
            });
    </script>
<jsp:include page="_footer.jsp" />