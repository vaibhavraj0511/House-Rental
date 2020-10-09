<html>
    <style>
         body{
            background-image:url('Background.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;  
            background-size: cover;
        }
        .container{
            padding:16px;
            align: center;
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

<script>alert('House Deleted Successfully...!')</script>

<%}
if(request.getParameter("m2")!=null){%>

 <script>alert('House not Deleted..!')</script>
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
                        <li><a href="AdminMenu.jsp">Home</a></li>
                        <li><a href="ViewUser.jsp">View User</a></li>
                        <li><a href="ViewHouseAdmin.jsp">View Houses</a></li>
                        <li><a href="ViewHouseStatus.jsp">View House Status</a></li>
                        <li  class="active"><a href="DeleteHouse.jsp">Delete Houses</a></li>
                        <li><a href="DeleteUser.jsp">Delete User</a></li>
                        <li><a href="Logout.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>    
        </nav>
        <span align="center"><h1>Delete House</h1></span>
        <form action="DeleteHouseCode.jsp" method="POST">
        <div class="container" align="center">
            <label for="uname"><b>House Id</b></label><br>
            <input type="text" placeholder="Enter House ID" name="uname" required><br><br>
             <button type="submit">Delete</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="button" class="cancelbtn">Cancel</button>
        </div>
        </form>
    </body>
</html>