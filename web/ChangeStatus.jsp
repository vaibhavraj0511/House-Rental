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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <%
if(request.getParameter("m1")!=null){%>

<script>alert('Status Successfully Change...!')</script>

<%}
if(request.getParameter("m2")!=null){%>

 <script>alert('Status UnSuccessfully Change..!')</script>
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
                        <li><a href="AddHouse.jsp">Add House</a></li>
                        <li class="active"><a href="MyHouse.jsp">My House</a></li>
                        <li><a href="Logout.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>    
        </nav>
        <span align="center"><h1>Change House Status</h1></span><br>
        
        <form action="ChangeStatusCode.jsp" method="POST">
        
       <center>
            <table width="567">
                <tr>
                    <td height="43"><b>Enter House Id</b></td>
                    <td><input type="number" name="id" placeholder="Enter House ID" required></td>
                </tr>
                <tr>
                    <td height="43"><b>Status<b></td>
                    <td>
                        <select name="select" required style="width: 55%">
                            <option>Select Status</option>
                            <option>Not Available</option>
                        </select> 
                    </td>
                </tr>
                <tr>
                    <td height="43" rowspan="3">
                            <p>&nbsp;</p></td>
                          <td align="left" valign="middle"> <p>&nbsp;
                            </p>
                            <p>
                              <input name="submit" type="submit" value="Change" />
                            </p>
                            <div align="right">
                           
                          </div></td>
                </tr>
            </table>
        </center>
        </form>    
        <div align="center"><a href="MyHouse.jsp" style="color:red"><b>Click here</b></a><b> to show Houses</b><br>
        <b>Note:- For House Id First check your house details...</b></div>
    </body>
</html>