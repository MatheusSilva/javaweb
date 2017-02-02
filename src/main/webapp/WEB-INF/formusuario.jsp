<!DOCTYPE html>
<%@page import="br.com.matheussilva.persistencia.entidade.Usuario"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Sistema de gestao de usuários</title>
    </head>
    
    <body>
        <a href="/javaweb">Voltar</a>
        <br /><br />

        <%
        Usuario u = (Usuario)request.getAttribute("usu");
        %>
        <form action="usucon.do" method="post">
            <label for="id">ID - <%=u.getId()%></label>
            <input type="hidden" name="id" id="id" value="<%=u.getId()%>" />
            <br />

            <label for="nome">Nome:</label>                 
            <input type="text" name="nome" id="nome" value="<%=u.getNome()%>" />
            <br />

            <label for="login">Login:</label>  
            <input type="text" name="login" id="login" value="<%=u.getLogin()%>" />
            <br />

            <label for="senha">Senha:</label> 
            <input type="text" name="senha" id="senha" value="<%=u.getSenha()%>" />
            <br />

            <input type="submit" value="Salvar" />
        </form>
    </body>
</html>