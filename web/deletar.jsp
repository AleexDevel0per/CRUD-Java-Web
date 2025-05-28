<%@page import="br.com.dao.Conexao"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String id = request.getParameter("id");

    if(request.getParameter("confirmar") != null){
        Connection conn = Conexao.conectar();
        PreparedStatement ps = conn.prepareStatement("DELETE FROM cliente WHERE id=?");
        ps.setInt(1, Integer.parseInt(id));
        ps.executeUpdate();
        conn.close();
        response.sendRedirect("listar.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Deletar Cliente</title>
</head>
<body>
    <h2>Deseja realmente deletar este cliente?</h2>
    <form method="post">
        <input type="submit" name="confirmar" value="Sim"/>
        <a href="listar.jsp">Não</a>
    </form>
</body>
</html>