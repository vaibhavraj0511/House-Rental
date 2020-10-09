<html>
    <style>
        body{
            background-image:url('Background.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;  
            background-size: cover;
        
    </style>        
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="jumbotron text-center" style="margin-bottom:0;height: 150px">
            <img src="Images/output-onlinepngtools.png" alt="ApnaGhar" align="left" style="height: 100px">
            <h1>ApnaGhar.com</h1>
        </div>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        
                    </button>
                    <a class="navbar-brand" href="index.jsp">ApnaGhar.com</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li><a href="AdminMenu.jsp">Home</a></li>
                        <li class="active"><a href="ViewUser.jsp">View User</a></li>
                        <li><a href="ViewHouseAdmin.jsp">View Houses</a></li>
                        <li><a href="ViewHouseStatus.jsp">View House Status</a></li>
                        <li><a href="DeleteHouse.jsp">Delete Houses</a></li>
                        <li><a href="DeleteUser.jsp">Delete User</a></li>
                        <li><a href="Logout.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>    
        </nav>
        <span align="center"><h1>User Details</h1></span>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet" %>
        <%@page import="java.sql.Statement"%>
        
        <table align="center" cellpadding="9" cellspacing="9" border="3">
        <tr>
            <td><b><center>ID</center></b></td>
            <td><b><center>Name</center></b></td>
            <td><b><center>E-mail</center></b></td>      
            <td><b><center>Mobile Number</center></b></td>
        </tr>
<%
    
Statement st = null;
ResultSet rs = null;
try{ 
Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/apnagharr","root","root");
st=con.createStatement();
 
String sql ="SELECT * FROM costumerregistration";
rs = st.executeQuery(sql);
while(rs.next()){
%>
        <tr>
            <td><br><%=rs.getString("Id") %><br></td>
            <td><br><%=rs.getString("FullName") %><br></td>
            <td><br><%=rs.getString("Email") %><br></td>
            <td><br><%=rs.getString("MobileNumber") %><br></td>
        </tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

    </body>
</html>