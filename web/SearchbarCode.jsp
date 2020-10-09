<html>
    <style>
        body{
            background-image:url('Background.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;  
            background-size: cover;
        }
        
    </style>        
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                        <li><a href="CostumerMenu.jsp">Home</a></li>
                        <li class="active"><a href="ViewHouse.jsp">View Houses</a></li>
                        <li><a href="AddHouse.jsp">Add House</a></li>
                        <li><a href="MyHouse.jsp">My House</a></li>
                        <li><a href="Logout.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>    
        </nav>
        
        <span align="center"><h1>House Details</h1></span>
        
        <form action="SearchbarCode.jsp" method="POST">
            <div align="center">
                <input type="text" name="search" placeholder="Search house Area here...." style="width:25%">
                <button type="submit" style="height:30px"><i class="fa fa-search"></i></button>
            </div>
        </form>
        
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet" %>
        
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apnagharr","root","root");
            String search = request.getParameter("search");
            PreparedStatement ps = con.prepareStatement("Select * from addghar where areaofhouse=?");
            ps.setString(1,search);
            ResultSet rst = ps.executeQuery();
            
        %>
        
        <center>
            <table>
        
        <%
            while(rst.next())
            {
                PreparedStatement pst = con.prepareStatement("Select * from addghar");
                pst.execute();
                ResultSet rs = pst.getResultSet();
                String photo = request.getParameter("photo");
        %>
       
        <tr widht="100%">
           <td><br><img src="Gallery/<%=photo%>" width="130" height="130">&nbsp;&nbsp;</td>
           <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                
            <td><br><b>Id: &nbsp;</b><b><%=rst.getString("id")%></b><br>
                <b>Name: &nbsp;</b><b><%=rst.getString("fullname")%></b><br>
                <b>Category: &nbsp;</b> <b><%=rst.getString("propertytype")%></b><br>
                <b>Price: &nbsp;</b><b><%=rst.getString("money")%></b><br>
                <b>Address: &nbsp;</b><b><%=rst.getString("addressofhouse")%></b><br/>
                <b>Location: &nbsp;</b><b><%=rst.getString("areaofhouse")%></b><br>
                <b>Status: &nbsp;</b><b><%=rst.getString("status")%></b><br>
                <b>Mobile: &nbsp;</b><b><%=rst.getString("mobilenumber")%></b><br>

            </td>
        </tr>
        <%}
        %>  
        </table>
        
    </body>
</html>