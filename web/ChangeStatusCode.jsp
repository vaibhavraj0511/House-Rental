<%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet" %>

<%
    String id = request.getParameter("id");
    String status = request.getParameter("select");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apnagharr","root","root");
    
    PreparedStatement pst = conn.prepareStatement("select * from addghar where id=?");
    pst.setString(1,id);
    ResultSet rs=pst.executeQuery();
    if(rs.next())
    {
        PreparedStatement ps = conn.prepareStatement("update addghar set status=? where id=?");
        ps.setString(1,status);
        ps.setString(2,id);
        ps.executeUpdate();
        conn.close();
        response.sendRedirect("ChangeStatus.jsp?m1=success");
    }
%>