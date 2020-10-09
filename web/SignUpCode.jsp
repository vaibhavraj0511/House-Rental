<%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement"%> 
<%
    int id=0;
    String fname = request.getParameter("fname");
    String email = request.getParameter("email");
    String password = request.getParameter("psw");
    String cPassword = request.getParameter("psw-repeat");
    String mobile = request.getParameter("mobile");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/apnagharr","root","root");
    PreparedStatement ps = con.prepareStatement("insert into costumerregistration values(?,?,?,?,?)");
    if(password.equals(cPassword))
    {
        ps.setInt(1,id);
        ps.setString(2,fname);
        ps.setString(3,email);
        ps.setString(4,password);
        ps.setString(5,mobile);
        ps.executeUpdate();
        response.sendRedirect("SignUp.jsp?m1=success");
    }
   
%>