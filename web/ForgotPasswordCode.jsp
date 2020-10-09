<%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet" %>

<%
    String id = request.getParameter("uname");
    String Passwrd = request.getParameter("psw");
    String cPasswrd = request.getParameter("psw-repeat");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apnagharr","root","root");
    
    PreparedStatement pst = conn.prepareStatement("select * from costumerregistration where MobileNumber=?");
    pst.setString(1,id);
    ResultSet rs=pst.executeQuery();
    if(rs.next())
    {
        PreparedStatement ps = conn.prepareStatement("update costumerregistration set Password=? where MobileNumber=?");
        if(Passwrd.equals(cPasswrd))
        {
            ps.setString(1,Passwrd);
            ps.setString(2,id);
            ps.executeUpdate();
            conn.close();
            response.sendRedirect("ForgotPassword.jsp?m1=success");
        }
        else
        {
            response.sendRedirect("ForgotPassword.jsp?m2=success");
        }
    }
%>