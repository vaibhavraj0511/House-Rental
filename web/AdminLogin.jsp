<html>
    <style>
        body{
            background-image:url('Background.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;  
            background-size: cover;
        }
        body {font-family: Arial, Helvetica, sans-serif;}
       
        .container{
            padding:16px;
            align: center;
        }
        button{
            align: center;
            padding:14px 20px;
            margin:8px 0;
            border:none;
            cursor:pointer;
           
        }
        button:hover {
             opacity: 0.8;
        }
        input[type=text], input[type=password] {
           
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        span.psw {
            float:center;
            padding-top: 16px;   
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cancelbtn {
            }
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
    
    <script>alert('Login Successfully..!')</script>
<%}
    if(request.getParameter("m2")!=null){%>

    <script>alert('Invalid Username or Password..!')</script>
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
                        <li><a href="index.jsp">Home</a></li>
                        <li class="active"><a href="AdminLogin.jsp">Admin Login</a></li>
                        <li><a href="CostumerLogin.jsp">Costumer Login</a></li>
                        <li><a href="SignUp.jsp">SignUp</a></li>
                    </ul>
                </div>
            </div>    
        </nav>
       
        
        <span align="center"><h1>Admin Login</h1></span>
        <form action="AdminLoginCode.jsp" method="POST">
        <div class="container" align="center">
            <label for="uname"><b>Username</b></label><br>
            <input type="text" placeholder="Enter Username" name="uname" required><br>
            <label for="psw"><b>Password</b></label><br>
            <input type="password" placeholder="Enter Password" name="psw" id="myInput" required><br>
            <span class="psw"><input type="checkbox" onclick="myFunction()">Show Password</span><br><br>
            <button type="submit">Login</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="button" class="cancelbtn">Cancel</button>
        </div>
        </form>  
        <script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
    </body>
</html>    