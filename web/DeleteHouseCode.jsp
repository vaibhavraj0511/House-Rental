<%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement"%>

<%
    String id = request.getParameter("uname");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apnagharr","root","root");
    PreparedStatement pst = conn.prepareStatement("delete from addghar where id=?");
    pst.setString(1,id);
    pst.executeUpdate();
    conn.close();
    response.sendRedirect("DeleteHouse.jsp?m1=success");
%>