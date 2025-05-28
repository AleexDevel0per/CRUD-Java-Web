<%@page import="br.com.dao.Conexao"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Criar Cliente</title>
</head>
<body>
    <h2>Criar Cliente</h2>
    <form method="post">
        Nome: <input type="text" name="nome"/><br/>
        Email: <input type="text" name="email"/><br/>
        Telefone: <input type="text" name="telefone"/><br/><br/>
        <input type="submit" value="Cadastrar"/>
    </form>

    <a href="menu.jsp">Voltar</a>

    <%
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");

        if (nome != null) {
            Connection conn = Conexao.conectar();
            PreparedStatement ps = conn.prepareStatement("INSERT INTO cliente (nome, email, telefone) VALUES (?, ?, ?)");
            ps.setString(1, nome);
            ps.setString(2, email);
            ps.setString(3, telefone);
            ps.executeUpdate();
            out.println("<p>Cliente cadastrado com sucesso!</p>");
            conn.close();
        }
    %>
</body>
</html>