<%@page import="br.com.dao.Conexao"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Listar Clientes</title>
</head>
<body>
    <h2>Lista de Clientes</h2>
    <table border="1">
        <tr>
            <th>ID</th><th>Nome</th><th>Email</th><th>Telefone</th><th>Ações</th>
        </tr>

        <%
            Connection conn = Conexao.conectar();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM cliente");

            while(rs.next()){
        %>
        <tr>
            <td><%= rs.getInt("id") %></td>
            <td><%= rs.getString("nome") %></td>
            <td><%= rs.getString("email") %></td>
            <td><%= rs.getString("telefone") %></td>
            <td>
                <a href="editar.jsp?id=<%= rs.getInt("id") %>">Editar</a> | 
                <a href="deletar.jsp?id=<%= rs.getInt("id") %>">Deletar</a>
            </td>
        </tr>
        <%
            }
            conn.close();
        %>
    </table>

    <br><a href="menu.jsp">Voltar</a>
</body>
</html>