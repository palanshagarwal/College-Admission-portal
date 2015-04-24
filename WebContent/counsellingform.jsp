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
<title>

</title>
    <style type="text/css">
        /* highlighting the text box on focus */input:focus, textarea:focus, select:focus
        {
            /*background-color: lightyellow;*/ /*border: solid 2px #e1e1b1;*/
            border-color: Blue;
            border-style: groove;
        }
        input:select
        {
            border-color: Blue;
            border-style: groove;
        }
       
        select:select
        {
            border-color: Blue;
            border-style: groove;
        }
        select:hover
        {
            border-color: Gray;
            border-style: groove;
        }
        .visibleDiv, #topLeft, #topRight, #bottomLeft, #bottomRight
        {
            position: fixed;
            width: 280px;
            border: solid 1px #e1e1b1;
            vertical-align: middle;
            background: #ffdab9;
            text-align: center;
        }
        #topLeft
        {
            top: 10px;
            left: 10px;
        }
        #topRight
        {
            top: 10px;
            right: 10px;
        }
        #bottomLeft
        {
            bottom: 10px;
            left: 10px;
        }
        #bottomRight
        {
            bottom: 1px;
            right: 1px;
            opacity: .4;
            filter: Alpha(Opacity=40);
        }
    </style>
</head>

<body  data-spy="scroll" class="body" >
    <div class="navbar navbar-inverse navbar-fixed-top" id="topnav" style="margin-bottom:10px">
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
                <li class="active"><a href="index2.jsp">Home</a></li>
                <li><a href="index2.jsp#features">Instructions</a></li>
                <li><a href="logoutprocess.jsp">Log OUT</a></li>
                
            </ul>
        </div>
        <!--/.navbar-collapse -->
    </div>
</div>
    <div style="padding: 0px 2px 1px 2px;">
    <style type="text/css">
        .FileUpload
        {
            background-color: Gray;
        }
        .style1
        {
        }
        .style2
        {
            width: 8%;
        }
        .style3
        {
            width: 11%;
        }
    </style>
    <div Style="margin-left:300px">
    <form action="controller.CounsellingController">
    
	<h1 style="margin-right:300px">Counselling Form&nbsp;</h1>
                        
            <table width="100%">
                
                <tr>
                    <td>
                        
                        <div style="color: Red; font-weight: bold">
                            &nbsp;Note : * Marked Fields are Mandatory</div>
                        
                        <table width="100%">
                            <tr>
                                <td align="left" class="legend" style="width: 99%">
                                    <h2 style="margin-right:500px;">Branch Preferences</h2>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                 <span id="" style="font-weight:bold;color: Gray;">Welcome on Counselling Portal :<%=session.getAttribute("id")  %> </span>
                              
                <tr>
                    <td>
                        <div id="divpersonal" style="display: block">
                            <table cellspacing="2" style="width: 100%; table-layout: auto;">
                                
                                <tr>
                                                                    </tr>
                                <tr>
                                
                                    
                                </tr>
                                <tr>

                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span>First Preference :
                                    </td>
                                    <td style="width: 35%; text-align: left">
                                        <select id="branch1" name="branch1" >
										  <option value="cse">CSE</option>
										  <option value="ece">ECE</option>
                                          <option value="cce">CCE</option>
                                          <option value="mme">MME</option>
										</select>
                                    </td>
            
                                </tr>
                                <tr>

                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span>Second Preference :
                                    <td style="width: 35%; text-align: left">
                                        <select id="branch2" name="branch2" >
										  <option value="cse">CSE</option>
										  <option value="ece">ECE</option>
                                          <option value="cce">CCE</option>
                                          <option value="mme">MME</option>
										</select>
                                    </td>
                                </tr>
                                
                                <tr>

                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span>Third Preference :
                                    </td>
                                    <td style="width: 35%; text-align: left">
                                        <select id="branch3" name="branch3" >
										  <option value="cse">CSE</option>
										  <option value="ece">ECE</option>
                                          <option value="cce">CCE</option>
                                          <option value="mme">MME</option>
										</select>
                                    </td>
            
                                </tr>
                                <tr>

                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span>Fourth Preference :
                                    </td>
                                     <td style="width: 35%; text-align: left">
                                        <select id="branch4" name="branch4" >
										  <option value="cse">CSE</option>
										  <option value="ece">ECE</option>
                                          <option value="cce">CCE</option>
                                          <option value="mme">MME</option>
										</select>
                                    </td>
            
                                </tr>
</div>
</fieldset>
                                
                                <tr>
                                    <td style="width: 15%; text-align: left">
                                        <span style="color: red; font-weight: bold;">&nbsp;</span>
                                    </td>
                                    <td style="width: 35%; text-align: left">
                                    </td>
                                </tr>
                                <tr>
                                    
                                    <td>
                                    </td>
                                    <td align="center">
                                        <span id="ctl00_ContentPlaceHolder1_rfvNationality" style="color:Red;display:none;"></span>
                                        
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <table width="100%">
                            <tr>
                              <span>&nbsp;</span>  
                                
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                </tr>
                </table>
       </div></fieldset>  
       <input style=" margin-left:600px;margin-bottom:20px" type="submit" name="submit" id="submit" value="Submit" >    
 </form>
        <table width="100%">
                            <tr>
                              <span>&nbsp;</span>  
                                
                            </tr>
                        </table>    
       <table width="100%">
                            <tr>
                              <span>&nbsp;</span>  
								<a href="GetStatus.html">Get Status</a>                                
                            </tr>
                        </table>                 

</form>
</div>



</body>
</html>
