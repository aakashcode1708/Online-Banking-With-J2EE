<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>OnlineBanking</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserra" type="text/css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
  body
        {
            font: 400 15px Lato, sans-serif;
            line-height: 1.8;
            color: #818181;
        }
        h2
        {
            font-size: 24px;
            text-transform: uppercase;
            color: #303030;
            font-weight: 600;
            margin-bottom: 30px;
        }
        h4
        {
            font-size: 19px;
            line-height: 1.375em;
            color: #303030;
            font-weight: 400;
            margin-bottom: 30px;
        }
        .jumbotron
        {
            background-color: #f4511e;
            color: #fff;
            padding: 100px 25px;
            font-family: Montserrat,sans-serif;
        }
        
        .container-fluid
        {
            padding: 60px 50px;
        }
        
        .bg-grey
        {
            background-color: #f6f6f6;
            
        }
        .logo-small
        {
            color: #f4511e;
            font-size: 50px;
        }
        .logo
        {
            color: #f4511e;
            font-size: 200px;
        }
        
        .panel
        {
            border: 1px solid #f4511e;
            border-radius: 0px !important;
            transition: box-shadow 0.5s;
        }
        
        .panel:hover
        {
            box-shadow: 5px 0px 40px rgba(0,0,0,0.2);
            
        }
        .panel-footer .btn:hover
        {
            border: 1px solid #f4511e;
            background-color: #fff !important;
            color: #f4511e;
        }
        .panel-heading
        {
            color: #fff !important;
            background-color: #f4511e !important;
            padding: 25px;
            border-bottom: 1px solid transparent;
            border-top-left-radius: 0px;
            border-top-right-radius: 0px;
            border-bottom-left-radius: 0px;
            border-bottom-right-radius: 0px;
            
        }
        .panel-footer
        {
            background-color: white !important;
        }
        .panel-footer h3
        {
            font-size: 32px;
        }
        .panel-footer h4
        {
            color: #aaa;
            font-size: 14px;
        }
        .panel-footer .btn
        {
            margin: 15px 0;
            background-color: #f4511e;
            color: #fff;
        }
        .navbar
        {
            margin-bottom: 0;
            background-color: #f4511e;
            z-index: 9999;
            border: 0;
            font-size: 12px !important;
            line-height: 1.42em;
            letter-spacing: 4px;
            border-radius: 0;
            font-family: Montserrat,sans-serif;
        }
        
        .navbar li a,.navbar .navbar-brand
        {
            color: #fff !important;
        }
        .navbar-nav li a:hover,.navbar-nav li.active a
        {
            color: #f4511e !important;
            background-color: #fff !important;
        }
        
        footer .glyphicon
        {
            font-size: 20px;
            margin-bottom: 20px;
            color: #f4511e;
        }
        
        
        @media screen and (max-width:480px)
        {
            .logo
            {
                font-size: 150px;
            }
        }
        @media screen and (max-width:768px)
        {
            .col-sm-4
            {
                text-align: center;
                margin: 25px 0;
            }
            .btn-lg
            {
                width: 100%;
                margin-bottom: 35px;
            }
        }
    
  </style>  
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>    
            </button>
            <a class="navbar-brand" href="index.jsp">OnlineBanking</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">ABOUTUS</a></li>
                <li><a href="#">SERVICES</a></li>
                <li><a href="#">CONTACTUS</a></li>
                </ul>
            </div>
        </div>
        </nav>
        <div class="jumbotron text-center">
        <h1>OnlineBanking.Com</h1>
            <p style="letter-spacing: 2px;"><u>We Make The World More Secure</u></p>
        </div>
        <div class="container-fluid">
        <div class="row text-center">
            
            <div class="col-sm-6 col-md-6">
            <div class="panel panel-default text-center">
                <div class="panel-heading">
                <h1>LoginPanel</h1>
                </div>
                <div class="panel-body">
                <form action="login-validate.jsp" method="post" role="form" class="form-horizontal col-sm-12 col-md-12" autocomplete="off">
                    <div class="form-group">
                    <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" required>
                    </div>
                    <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>    
                    </div>
                    <div class="form-group">
                    <a href="forgot-password.jsp">forgot password?</a>
                    </div>
                    <div class="form-group">
                    <input type="submit" value="Login" class="btn btn-lg">
                    </div>
                    </form>
                </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-6">
            <div class="panel panel-default text-center">
                <div class="panel-heading">
                <h1>SignUp Panel</h1>
                </div>
                <div class="panel-body">
                <form action="signup-validate.jsp" method="post" role="form" class="form-horizontal col-sm-12 col-md-12" autocomplete="off">
                    <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" name="name" id="name" class="form-control" placeholder="Enter Name" required>
                    </div>
                    <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" class="form-control" placeholder="Enter Email" required>    
                    </div>
                    <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password" required>    
                    </div>
                    <div class="form-group">
                    <label for="mobile">Mobile</label>
                    <input type="text" name="mobile" id="mobile" class="form-control" placeholder="Enter Mobile" required>    
                    </div>
                    <div class="form-group">
                    <label for="min">Minimum Amount</label>
                    <input type="text" name="min" id="" class="form-control" placeholder="Enter Minimum Amount" required>
                    </div>
                    <div class="form-group">
                    <input type="submit" value="SignUp" class="btn btn-lg">
                    </div>
                    </form>
                </div>
                </div>
            </div>
            </div>
        </div>
        <footer class="container-fluid text-center" style="padding: 10px;background-color:#f4511e;">
        <p style="color: white;">OnlineBanking &copy; Production</p>
        </footer>
   
</body>
</html>