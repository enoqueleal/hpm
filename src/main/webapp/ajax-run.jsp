<%@taglib uri="/struts-tags" prefix="s"%>
<table class="table table-striped">
    <tr>
        <th class="tabela-chamados"> SIGLA    </th>
        <th class="tabela-chamados"> NOME     </th>
        <th class="tabela-chamados"> ATIVA    </th>
        <th class="tabela-chamados"> DETALHES </th>
    </tr>

    <s:if test="listaoficinas.size() > 0" >
        <s:iterator value="listaoficinas" status="userStatus">

            <tr>
                <td class="tabela-chamados"> <s:property value="sigla" />  </td>
            <td class=""> <s:property value="nome" />  </td>
            <td class="tabela-chamados"> <s:property value="status" /> </td>

            <td class="tabela-chamados"> 
            <s:url id="editURL" action="detalhesOficina">
                <s:param name="id" value="%{id}"></s:param>
            </s:url>
            <s:a href="%{editURL}" cssClass="glyphicon glyphicon-zoom-in zoom" ></s:a>
            </td>

            </tr>

        </s:iterator>
    </s:if>
</table>