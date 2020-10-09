<%@page import="java.sql.DriverManager,java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet" %>
<%
    String uname = request.getParameter("uname");
    String password = request.getParameter("psw");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/apnagharr","root","root");
    PreparedStatement ps = con.prepareStatement("select * from admin where username=? and password=?");
    ps.setString(1,uname);
    ps.setString(2,password);
    ResultSet rs = ps.executeQuery();
    if(rs.next())
    {
        response.sendRedirect("AdminMenu.jsp?m1=success");
    }
    
%>        