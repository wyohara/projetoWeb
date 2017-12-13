<%-- 
    Document   : index
    Created on : 10/12/2017, 22:51:46
    Author     : ohara
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="javax.persistence.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="_header.jsp" />
            <!-- Conteúdo do site -->
            
            <div class="descriptionSite">
                <p>
	O Trampo Certo tem como objetivo facilitar a prestação de serviços diversificados por meio de uma aplicação Web, que possibilita o encontro entre prestadores de serviços e clientes. Como principais funções o site apresentará a possibilidade de cadastro de profissionais, que poderão registrar serviços em várias áreas de atuação, variando de áreas técnicas como mecânica, manutenção de eletrodomésticos assim como serviços no âmbito alimentício e tutorias.
                </p>
            </div>
            <div id="caixaBusca">
            <form method="get" action="ServletIndex" class="mdl-grid">
                <input type="text" class="mdl-cell mdl-cell--8-col mdl-textfield__input" Placeholder="Digite a busca aqui" name="buscaServico"/>
                <button type="submit" class="mdl-cell mdl-cell--4-col">Pesquisar</button>
            </form>
            </div>
            <% if(session.getAttribute("size") != null){%>
            <%=session.getAttribute("servicos")%><br/>
            Total de resultados: <%=session.getAttribute("size")%>
            <%}%>
            
                <table id="caixaServicos">
                    
                    <tr class="mdl-cell mdl-cell--12-col" >
                        <th class="mdl-cell mdl-cell--4-col">Nome</th>
                        <th class="mdl-cell mdl-cell--4-col">Tipo de Servico</th>
                        <th class="mdl-cell mdl-cell--4-col">Experiencia</th>
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
<jsp:include page="_footer.jsp" />