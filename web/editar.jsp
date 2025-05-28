<%@page import="br.com.dao.Conexao"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String id = request.getParameter("id");
    Connection conn = Conexao.conectar();

    if(request.getParameter("nome") != null){
        PreparedStatement ps = conn.prepareStatement(
            "UPDATE cliente SET nome=?, email=?, telefone=? WHERE id=?"
        );
        ps.setString(1, request.getParameter("nome"));
        ps.setString(2, request.getParameter("email"));
        ps.setString(3, request.getParameter("telefone"));
        ps.setInt(4, Integer.parseInt(id));
        ps.executeUpdate();
        response.sendRedirect("listar.jsp");
    }

    PreparedStatement ps = conn.prepareStatement("SELECT * FROM cliente WHERE id=?");
    ps.setInt(1, Integer.parseInt(id));
    ResultSet rs = ps.executeQuery();
    rs.next();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Editar Cliente</title>
</head>
<body>
    <h2>Editar Cliente</h2>
    <form method="post">
        Nome: <input type="text" name="nome" value="<%= rs.getString("nome") %>"/><br/>
        Email: <input type="text" name="email" value="<%= rs.getString("email") %>"/><br/>
        Telefone: <input type="text" name="telefone" value="<%= rs.getString("telefone") %>"/><br/><br/>
        <input type="submit" value="Atualizar"/>
    </form>

    <a href="listar.jsp">Voltar</a>
</body>
</html>

<%
    conn.close();
%>