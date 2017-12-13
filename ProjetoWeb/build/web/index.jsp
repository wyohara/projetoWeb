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
                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
            </div>
            <div id="caixaBusca">
            <form method="get" action="ServletIndex" class="mdl-grid">
                <input type="text" class="mdl-cell mdl-cell--8-col mdl-textfield__input" Placeholder="Digite a busca aqui" name="buscaServico"/>
                <button type="submit" class="mdl-cell mdl-cell--4-col">Pesquisar</button>
            </form>
            </div>
            
            
            tamanho: <%=session.getAttribute("size")%>
                <table id="caixaServicos">
                    
                    <tr class="mdl-cell mdl-cell--12-col" >
                        <th class="mdl-cell mdl-cell--4-col">Nome</th>
                        <th class="mdl-cell mdl-cell--4-col">Tipo de Servico</th>
                        <th class="mdl-cell mdl-cell--4-col">Experiencia</th>
                    </tr>
                    ${attrib}
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