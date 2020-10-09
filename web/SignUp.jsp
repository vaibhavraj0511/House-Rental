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
        input[type=text], input[type=password] {
           
            padding: 7px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        .signupbtn{
            padding: 5px 10px;
        }
        .cancelbtn {
            padding: 5px 10px;
            background-color: #f44336;
        }
        .cancelbtn, .signupbtn {
            float: center;
        }
        /* The message box is shown when the user clicks on the password field */
#message {
  display:none;
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 20px;
  margin-top: 10px;
}

#message p {
  padding: 10px 35px;
  font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -35px;
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}

.invalid:before {
  position: relative;
  left: -35px;
}
    </style>        
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    </head>
    <%
    if(request.getParameter("m1")!=null){%>
    
    <script>alert('SignUp Successfully..!')</script>
<%}
    if(request.getParameter("m2")!=null){%>

    <script>alert('Password and Confirm Password Does not match ..!')</script>
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
                        <li><a href="AdminLogin.jsp">Admin Login</a></li>
                        <li><a href="CostumerLogin.jsp">Costumer Login</a></li>
                        <li  class="active"><a href="SignUp.jsp">SignUp</a></li>
                    </ul>
                </div>
            </div>    
        </nav>
        
        <span align="center"><h1>SignUp Form</h1></span>
        
        <form action="SignUpCode.jsp" method="POST">
        
        <div class="container" align="center">
            <label for="Full Name"><b>Full Name</b></label>&nbsp;&nbsp;&nbsp;<br>
            <input type="text" placeholder="Enter Full Name" name="fname" required><br>
            
            <label for="Email"><b>E-mail</b></label><br>
            <input type="text" placeholder="Enter E-mail" name="email" required><br>
            
            <label for="psw"><b>Password</b></label><br>
            <input type="password" placeholder="Enter Password" id="psw" name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required><br>
            
            <span class="psw"><input type="checkbox" onclick="myFunctionn()">Show Password</span><br><br>
            
            <div id="message" align="center">
                <h3>Password must contain the following:</h3>
                <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                <p id="number" class="invalid">A <b>number</b></p>
                <p id="length" class="invalid">Minimum <b>8 characters</b></p>
            </div>
            
            <label for="psw-repeat"><b>Confirm Password</b></label><br>
            <input type="password" placeholder="Enter Repeat Password" name="psw-repeat" id="psw-repeat" required><br>
            
            <label for="mobile"><b>Mobile Number</b></label><br>
            <input type="number" placeholder="Enter Mobile Number" name="mobile" required><br><br>
            
            <div class="clearfix">
                <button type="submit" class="signupbtn">Sign Up</button>
                <button type="button" class="cancelbtn">Cancel</button>                
            </div>
        
        </div>
        
        </form>
        
        <script>
            function myFunctionn() {
            var x = document.getElementById("psw");
            if (x.type === "password") {
            x.type = "text";
            } else {
            x.type = "password";
            }
        }
        var myInput = document.getElementById("psw");
        var letter = document.getElementById("letter");
        var capital = document.getElementById("capital");
        var number = document.getElementById("number");
        var length = document.getElementById("length");

        // When the user clicks on the password field, show the message box
        myInput.onfocus = function() {
            document.getElementById("message").style.display = "block"; 
        }

        // When the user clicks outside of the password field, hide the message box
        myInput.onblur = function() {
            document.getElementById("message").style.display = "none";
        }

        // When the user starts to type something inside the password field
        myInput.onkeyup = function() {
        // Validate lowercase letters
            var lowerCaseLetters = /[a-z]/g;
            if(myInput.value.match(lowerCaseLetters)) {  
                letter.classList.remove("invalid");
                letter.classList.add("valid");
            } else {
                letter.classList.remove("valid");
                letter.classList.add("invalid");
            }
  
        // Validate capital letters
        var upperCaseLetters = /[A-Z]/g;
        if(myInput.value.match(upperCaseLetters)) {  
            capital.classList.remove("invalid");
            capital.classList.add("valid");
        } else {
            capital.classList.remove("valid");
            capital.classList.add("invalid");
        }

        // Validate numbers
        var numbers = /[0-9]/g;
        if(myInput.value.match(numbers)) {  
            number.classList.remove("invalid");
            number.classList.add("valid");
        } else {
            number.classList.remove("valid");
            number.classList.add("invalid");
        }
  
        // Validate length
        if(myInput.value.length >= 8) {
            length.classList.remove("invalid");
            length.classList.add("valid");
        } else {
            length.classList.remove("valid");
            length.classList.add("invalid");
        }
        }       
        </script>
    </body>
</html>    