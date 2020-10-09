<%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet" %>
<%
    String uname = request.getParameter("uname");
    String password = request.getParameter("psw");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/apnagharr","root","root");
    PreparedStatement ps = con.prepareStatement("select * from costumerregistration where MobileNumber=? and password=?");
    ps.setString(1,uname);
    ps.setString(2,password);
    ResultSet rs = ps.executeQuery();
    if(rs.next()){
        response.sendRedirect("CostumerMenu.jsp?m1=success");
    }else{  
        response.sendRedirect("CostumerLogin.jsp?m2=success");
    }
    
%>