<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <title>Registration form </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="regbootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="regjs/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="regbootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top" id="topnav">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img  src="images/logo1.png" alt="LNMIIT" height="18px" /> </a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.jsp#home">Home</a></li>
                <li><a  href="index.jsp#contact">Login</a></li>
                <li><a href="index.jsp#features">Instructions</a></li>
                <li><a href="logoutprocess.jsp">Log Out</a></li>
                
            </ul>
        </div>
        <!--/.navbar-collapse -->
    </div>
</div>
<div class="container">
<br><br>
<div class="page-header">
    <h1>Registration form </h1>
</div>

<!-- Registration form - START -->
<div class="container">
    <div class="row">
        <form action="controller.UserController" method="POST">
            <div class="col-lg-6">
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Required Field</strong></div>
                <div class="form-group">
                    <label for="Name">Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="Name" id="Name">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email">Emailid</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="Emailid" id="Emailid" >
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="Contactno"> Contact Number</label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="Contactno" name="Contactno" >
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password"> Password </label>
                    <div class="input-group">
                        <input type="password" class="form-control" id="Password" name="Password" >
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>

                <!-- <div class="form-group">
                    <label for="InputMessage">Enter Message</label>
                    <div class="input-group">
                        <textarea name="InputMessage" id="InputMessage" class="form-control" rows="5" required></textarea>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div> -->
                <input type="submit" name="submit" id="submit" value="Register" class="btn btn-info">
            </div>
        </form>
        <div class="col-lg-5 col-md-push-1">
            <div class="col-md-12">
                <div class="alert alert-success">
                    <strong><span class="glyphicon "></span>If you face any problem in generating PDF, please unblock popup blocker. To unblock the popup blocker do the following:<br>
To see blocked pop-ups for a Chrome, follow the steps listed below:<br>
1. Click the Chrome menu on the browser toolbar.<br>
2. Select Settings.<br>
3. Click Show advanced settings.<br>
4. In the "Privacy" section, click the Content settings button.<br>
5. In the "Pop-ups" section, select "Allow all sites to show pop-ups.<br>

To see blocked pop-ups for a Firefox, follow the steps listed below:<br>
1. At the top of the Firefox window, click on the Firefox button and then select Options.<br>
2. Select the Content panel.<br>
3. Make sure the Block pop-up windows checkbox is checked.<br></strong>
                </div>
                <!-- <div class="alert alert-danger">
                    <span class="glyphicon glyphicon-remove"></span><strong> Error! Please check all page inputs.</strong>
                </div> -->
            </div>
        </div>
    </div>
</div>
<!-- Registration form - END -->

</div>

</body>
</html>