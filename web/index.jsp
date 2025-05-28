<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>
    <form method="post">
        Usuário: <input type="text" name="usuario"/><br/><br/>
        Senha: <input type="password" name="senha"/><br/><br/>
        <input type="submit" value="Entrar"/>
    </form>

    <%
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");

        if (usuario != null && senha != null) {
            // Usuário e senha fixos para teste
            if (usuario.equals("admin") && senha.equals("123")) {
                response.sendRedirect("menu.jsp");
            } else {
                out.println("<p style='color:red;'>Usuário ou senha incorretos!</p>");
            }
        }
    %>
</body>