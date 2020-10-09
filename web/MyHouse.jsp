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
                        <li><a href="ViewHouse.jsp">View Houses</a></li>
                        <li><a href="AddHouse.jsp">Add House</a></li>
                        <li class="active"><a href="MyHouse.jsp">My House</a></li>
                        <li><a href="Logout.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>    
        </nav>
        <span align="center"><h1>My House</h1></span>
         <form action="MyHouse.jsp" method="POST">
            <div align="center">
                <input type="text" name="search" placeholder="Enter Mobile Number to show your house details..." style="width:25%">
                <button type="submit" style="height:30px"><i class="fa fa-search"></i></button>
            </div>
        </form>
        <%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet"%>
        <%
            String mobile = request.getParameter("search");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/apnagharr","root","root");
            PreparedStatement pst = con.prepareStatement("Select * from addghar where mobilenumber=?");
            pst.setString(1,mobile);
            ResultSet rs = pst.executeQuery();
           %>
        
           <br><div align="center"><a href="ChangeStatus.jsp" style="color:red"><b>Click here</b></a><b> to change status if house is not available</b></div>
        <center>
            <table>
        
        <%
            while(rs.next())
            {
                PreparedStatement ps = con.prepareStatement("Select * from addghar");
                ps.execute();
                ResultSet rst = ps.getResultSet();
                String photo = request.getParameter("photo");
        %>
       
        <tr widht="100%">
           <td><br><img src="Gallery/<%=photo%>" width="130" height="130">&nbsp;&nbsp;</td>
           <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
                
            <td><br><b>Id: &nbsp;</b><b><%=rs.getString("id")%></b><br>
                <b>Name: &nbsp;</b><b><%=rs.getString("fullname")%></b><br>
                <b>Category: &nbsp;</b> <b><%=rs.getString("propertytype")%></b><br>
                <b>Price: &nbsp;</b><b><%=rs.getString("money")%></b><br>
                <b>Address: &nbsp;</b><b><%=rs.getString("addressofhouse")%></b><br/>
                <b>Location: &nbsp;</b><b><%=rs.getString("areaofhouse")%></b><br>
                <b>Status: &nbsp;</b><b><%=rs.getString("status")%></b><br>
                <b>Mobile: &nbsp;</b><b><%=rs.getString("mobilenumber")%></b><br>

            </td>
            
        </tr>
      
        <%}
        %>  
       
        </table>
          
    </body>
</html>    