<%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement"%>

<%
    String id = request.getParameter("uname");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apnagharr","root","root");
    PreparedStatement pst = conn.prepareStatement("delete from costumerregistration where Id=?");
    pst.setString(1,id);
    pst.executeUpdate();
    conn.close();
    response.sendRedirect("DeleteUser.jsp?m1=success");
%>