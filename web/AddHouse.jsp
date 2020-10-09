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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
<%
if(request.getParameter("m1")!=null){%>

<script>alert('House Added Successfully...!')</script>

<%}
if(request.getParameter("m2")!=null){%>

 <script>alert('Added Failed..!')</script>
 <%
}
%>
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
                        <li class="active"><a href="AddHouse.jsp">Add House</a></li>
                        <li><a href="MyHouse.jsp">My House</a></li>
                        <li><a href="Logout.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>    
        </nav>
        <span align="center"><h1>Add House</h1></span>
        <form action="AddHouseCode.jsp" method="POST">
        <center>
            <table width="567">
                <tr>
                    <td height="43"><b>Name</b></td>
                    <td>
                    <input type="text" id="name" name="fullname" placeholder="Enter Name" style="width: 100%" required/></td>
                </tr>
                <tr>
                    <td height="43"><b>Category</b></td>
                    <td>
                        <input type="text" name="propertytype" id="category" placeholder="Enter Category eg:-Flat(1BHK)/PG/Shop etc..." style="width: 100%" required></td>
                </tr>
                <tr>
                    <td height="43"><b>Price</b></td>
                    <td>
                        <input type="number" name="money" id="price" placeholder="Enter Price" style="width: 100%" required></td>
                </tr>
                <tr>
                    <td height="43"><b>E-mail</b></td>
                    <td>
                        <input type="text" name="emailaddress" id="email" placeholder="Enter E-mail" style="width: 100%" required>
                    </td>
                </tr>
                <tr>
                    <td height="43"><b>Mobile Number</b></td>
                    <td>
                        <input type="number" name="mobilenumber" id="mobilenumber" placeholder="Enter Mobile Number" style="width:100%" required>
                    </td>
                </tr>
                <tr>
                    <td height="43"><b>Address</b></td>
                    <td>
                        <textarea name="addressofhouse" id="address" placeholder="address" style="width:100%" required></textarea>
                    </td>
                </tr>
                <tr>
                    <td height="43"><b>Location</b></td>
                    <td>
                        <input type="text" name="areaofhouse" id="location" placeholder="Enter Location(area) of house. Eg:-Vijay Nagar" style="width:100%" required>
                    </td>
                </tr>
                <tr>
                    <td height="43"><b>Status</b></td>
                    <td>
                        <select name="status" style="width:100%" required>
                            <option>Select Status</option>
                            <option>Available</option>
                        </select>    
                    </td>
                </tr>
                <tr>
                    <td height="43"><b>Image</b></td>
                    <td>
                        <input type="file" name="chooseimage" style="width: 100%">
                    </td>
                </tr>
                <tr>
                    <td height="43" rowspan="3">
                            <p>&nbsp;</p></td>
                          <td align="left" valign="middle"> <p>&nbsp;
                            </p>
                            <p>
                              <input name="submit" type="submit" value="Add" />
                            </p>
                            <div align="right">
                           
                          </div></td>
                </tr>
                    
            </table>
        </center>
        </form>
    </body>
</html>