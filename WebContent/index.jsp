<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/favicon.png">

    <title>Welcome to LNMIIT,Jaipur</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="bootstrap/js/html5shiv.js"></script>
    <script src="bootstrap/js/respond.min.js"></script>
    <![endif]-->
</head>

<body data-spy="scroll" data-target="#topnav">

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
                <li class="active"><a href="#home">Home</a></li>
                <li><a  href="#contact">Login</a></li>
                <li><a href="adminlogin.jsp">Admin Login</a></li>
                <li><a target="_blank" href="register.jsp">Register</a></li>
                <li><a href="#features">Instructions</a></li>
                <li><a href="logoutprocess.jsp">Log Out</a></li>
                
            </ul>
        </div>
        <!--/.navbar-collapse -->
    </div>
</div>

<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron" id="home">
    <div class="container">
        <div class="media">
            <!--a href="#" class="pull-right"><img class="media-object" src="images/Finder_256.png"/></a-->

            <div class="media-body">
                <div class="col-md-11" >
                    <h1 style="color: #E0E0E0; text-shadow: 4px 4px black;" class="title">LNMIIT <span>Jaipur</span></h1>

                    <h2 style="color: #E0E0E0; text-shadow: 2px 2px black;"><strong>Admissions Open</strong> </h2>

                    <p><a  href="register.jsp"class="btn btn-success btn-lg"><strong style=" text-shadow: 1px 1px black;">Register</strong><i class="icon icon-angle-right"></i></a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="slider" id="features" style="margin-top:-30px">
    <div class="container">
        <div class="inner-page">
            <h1 style="color: black" class="page-headline large text-center">(Instructions to Applicants applying through JEE (Main) mode)</h1>
        </div>

         <h2>

This is a two stage process:<br>

Stage I (Fill in Personal and Address Details; Pay the Application fee)<br><br>
Step 1: Click on "New Registration" and fill the mandatory information to create an account.<br><br>
Step 2: Your account details containing Application ID and Password for your online application will be sent to your email-id and mobile no.<br><br>
Step 3: Log into your account, using the Sign In on the admission portal. Fill the information in the online form/ student information.<br><br>
Step 4: Pay the application fee of Rs. 1,600/- to complete the application. The fee can be paid in either of the following ways:<br><br>
&nbsp&nbsp&nbsp&nbsp        (i) Pay online using Debit card / Credit card / Net-banking,
            OR <br>
 &nbsp&nbsp&nbsp&nbsp        (ii) Pay through a demand draft drawn in favor of The LNM Institute of &nbsp&nbsp&nbsp&nbsp   Information Technology payable at Jaipur.<br>&nbsp&nbsp&nbsp&nbsp    Fill in the required demand draft details in the
         online application form &nbsp&nbsp&nbsp&nbsp   and submit it on or before 01st June 2015.Please write your name, <br> &nbsp&nbsp&nbsp&nbsp    application ID, mobile no. and email-id at the back of the demand draft <br> &nbsp&nbsp&nbsp&nbsp and send it to LNMIIT by speed post or registered post only.<br> <br> &nbsp&nbsp&nbsp&nbsp The demand draft must be delivered at LNMIIT on or before
         05th June<br> &nbsp&nbsp&nbsp&nbsp 2015.<br><br> 

Stage II (Fill in Eligibility Details, Participation in Talent Search Exams and Sports and Branch preferences)<br><br>
Step 5: Fill in the JEE (Main) Physics, Chemistry and Mathematics marks as soon as the score is declared but not later than the last date for updating eligibility details.<br><br>
Step 6: Fill in the Class 12 Physics, Chemistry and Mathematics marks, and total marks as soon as the Board result is declared but not later than the last date for updating eligibility details.<br><br>
Step 7: Generate PDF of your form and print it for future use.<br><br><br><br>

NOTE: The applicants adopting for off-line mode of payment (Demand Draft) must send their Demand Drafts well in time so that they are received on or before the last date at LNMIIT. LNMIIT will not be responsible for any postal delays.
<br><br>
Please use SPEED POST/ REGISTERED POST for mailing the application form and the demand draft.
</h2>
            </div>
        </div>
    </div>
</section>

<section class="contact" id="contact" style="margin-top:-40px">

    <div class="container">

        <div class="row">

            <div class="col-md-6">

                <div class="alert alert-success hidden" id="contactSuccess">
                    <strong>Success!</strong> Your message has been sent to us.
                </div>

                <div class="alert alert-error hidden" id="contactError">
                    <strong>Error!</strong> There was an error sending your message.
                </div>

                <h2 class="short"><strong>Login</strong> </h2>

                <form class="clearfix" accept-charset="utf-8" method="get" action="controller.LoginController">
                    <div class="row" >
                        <div class="col-sm-6 form-group">
                            <label for="id">Applicant ID</label>
                            <input type="text" name="id" id="id"
                                   class="form-control input-lg">
                        </div>

                        <div class="col-sm-6 form-group">
                            <label for="password">Password</label>
                            <input type="password" name="password" id="password"
                                   class="form-control input-lg">   
                        </div>
                      <button style="margin-left:100px" class="btn btn-success btn-xlg" type="submit">Login</button>
                    </div>
                </form>
            </div>
            <div class="col-md-offset-1 col-md-5">
                <br/>
                
            </div>


        </div>

    </div>

</section>

<footer id="footer">
    <div class="container">
        <div class="row">
            <div class="footer-ribbon" style="right: 0">
                <h3 class="title" style="margin: 0;padding: 5px 10px">Thank <span>You</span></h3>
            </div>

        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    <a class="logo" href="index.html">
                        <img src="images/logo1.png" alt="Template Eden">
                    </a>
                </div>
                <div class="col-md-5">
                    <p>&copy; Copyright 2015 by LNMIIT. All Rights Reserved.</p>
                </div>
                <!-- <div class="col-md-5">
                    <nav id="footer-menu">
                        <ul>
                            <li><a href="#">FAQ's</a></li>
                            <li><a href="#">Sitemap</a></li>
                            <li><a href="#">Contact</a></li>
                        </ul>
                    </nav>
                </div> -->
            </div>
        </div>
    </div>
</footer>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
