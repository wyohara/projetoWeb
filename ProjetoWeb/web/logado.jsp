<%-- 
    Document   : logado
    Created on : 12/12/2017, 16:27:11
    Author     : ohara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="_header.jsp" />
<!-- Conteúdo do site -->
<div class="mdl-grid">
    <div class="mdl-cell mdl-cell--6-col">
        <h3>Dados: </h3>
        <h4>Nome: <%=session.getAttribute("nome")%></h4>
        <h4>CPF: <%=session.getAttribute("cpf")%></h4>
        <h4>CNPJ: <%=session.getAttribute("cnpj")%></h4>
        <h4>Endereco: <%=session.getAttribute("endereco")%></h4>
        <h4>Telefone: <%=session.getAttribute("telefone")%></h4>
        <h4>Email: <%=session.getAttribute("email")%></h4>
    </div>


    <div class="mdl-cell mdl-cell--6-col">

        <div class="mdl-grid">
            <h3 class="mdl-cell mdl-cell--12-col">Habilidades</h3>
            <div class="mdl-cell mdl-cell--12-col">
            <form action="CadastroServicosServlet" method="post">
                <input  type="checkbox" name="prof" value="Mecânico"> Mecânico - Experiência 
                <select name= "mec_exp">
                    <option value="nenhuma">Nenhuma</option>
                    <option value="baixa">Baixa</option>
                    <option value="média">Media</option>
                    <option value="alta">Alta</option>
                    <option value="mestre">Mestre</option>
                </select>
                </br>
                <input  type="checkbox" name="prof" value="Eletricista"> Eletricista - Experiência 
                <select name= "el_exp">
                    <option value="baixa">Nenhuma</option>
                    <option value="baixa">Baixa</option>
                    <option value="média">Media</option>
                    <option value="alta">Alta</option>
                    <option value="mestre">Mestre</option>
                </select></br>
                <input type="checkbox" name="prof" value="Faxineira">Faxineira - Experiência 
                <select name= "fac_exp">

                    <option value="nenhuma">Nenhuma</option>
                    <option value="baixa">Baixa</option>
                    <option value="média">Media</option>
                    <option value="alta">Alta</option>
                    <option value="mestre">Mestre</option>
                </select></br>
                <input type="checkbox" name="prof" value="Pedreiro">Pedreiro - Experiência 
                <select name= "ped_exp">
                    <option value="nenhuma">Nenhuma</option>
                    <option value="baixa">Baixa</option>
                    <option value="média">Media</option>
                    <option value="alta">Alta</option>
                    <option value="mestre">Mestre</option>
                </select></br>


                <textarea name="descricao" rows="10" cols="30" placeholder="Fale sobre você">

                </textarea>
                  <button class="mdl-button mdl-js-button btnSubmit mdl-cell mdl-cell--3-col">Salvar</button>
            </form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="_footer.jsp" />