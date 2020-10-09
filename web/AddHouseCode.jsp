<%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement"%>

<%
    int id=0;
    String fullName = request.getParameter("fullname");
    String propertyType = request.getParameter("propertytype");
    String money = request.getParameter("money");
    String emailAddress = request.getParameter("emailaddress");
    String mobileNumber = request.getParameter("mobilenumber");
    String addressOfHouse = request.getParameter("addressofhouse");
    String areaOfHouse = request.getParameter("areaofhouse");
    String status = request.getParameter("status");
    String selectImage = request.getParameter("chooseimage");
  
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apnagharr","root","root");
    PreparedStatement pstt = conn.prepareStatement("insert into addghar values(?,?,?,?,?,?,?,?,?,?)");
    
    pstt.setInt(1,id);
    pstt.setString(2,fullName);
    pstt.setString(3,propertyType);
    pstt.setString(4,money);
    pstt.setString(5,emailAddress);
    pstt.setString(6,mobileNumber);
    pstt.setString(7,addressOfHouse);
    pstt.setString(8,areaOfHouse);
    pstt.setString(9,status);
    pstt.setString(10,selectImage);
    
    pstt.executeUpdate();
    
    response.sendRedirect("AddHouse.jsp?m1=success");
%>