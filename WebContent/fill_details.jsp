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
    <form method="POST" action="controller.ApplicantInfoController">
    <div id="">
	<h1 style="margin-top:100px;margin-left:100px;">APPLICANT'S REGISTRATION&nbsp;</h1>
                        
            <table width="100%">
                
                <tr>
                    <td>
                        
                        <div style="color: Red; font-weight: bold">
                            &nbsp;Note : * Marked Fields are Mandatory</div>
                        
                        <table width="100%">
                            <tr>
                                <td align="left" class="legend" style="width: 99%">
                                    <h2 style="margin-left:400px;">Personal Details</h2>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                 <span id="" style="font-weight:bold;color: Gray;">Welcome Applicant ID :<%=session.getAttribute("id")  %> </span>
                              
                <tr>
                    <td>
                        <div id="divpersonal" style="display: block">
                            <table  style="width: 100%; table-layout: auto;">
                                
                                <tr>
                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> DOB <span style="font-size: xx-small">
                                            (dd/mm/yyyy) </span>:
                                    </td>
                                    <td style="width: 35%; text-align: left;">
                                        <input name="DOB" type="date" id="DOB" >
                                        
                                    </td>
                                </tr>
                                <tr>
                                
                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> Father's Name :
                                    </td>
                                    <td valign="middle" style="width: 35%; text-align: left">
                                        <input name="fathername" id="fathername" type="text">
                                    </td>
                                </tr>
                                <tr>
                                
                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> Mother's Name :
                                    </td>
                                    <td valign="middle" style="width: 35%; text-align: left">
                                        <input name="mothername" id="mothername" type="text">
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td style="width: 15%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> Alternate Email :
                                    </td>
                                    <td style="width: 35%; text-align: left">
                                        <input name="altemailid" id="altemailid" type="email">
                                        <span id="ctl00_ContentPlaceHolder1_rfvEmail" style="color:Red;display:none;"></span>
                                    </td>
                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> Gender :
                                    </td>
                                    <td style="width: 35%; text-align: left">
                                        <select id="gender" name="gender" >
										  <option value="male">M</option>
										  <option value="female">F</option>
										</select>
                                    </td>
                                    
                                </tr>
                                <tr>

                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> Nationality :
                                    </td>
                                    <td style="width: 35%; text-align: left">
                                        <select id="nationality" name="nationality" >
										  <option value="indian">Indian</option>
										  <option value="other">Other</option>
										</select>
                                    </td>
            
                                </tr>
                                
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
                                
                                
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <div id="divAddressAndContactDetails" style="display: block;">
                            <div id="ctl00_ContentPlaceHolder1_upAddressDetails">
		
                                    
                                    <fieldset class="fieldset">
                                        <legend>&nbsp;&nbsp;Address&nbsp;&nbsp;</legend>
                                        <table cellpadding="2" cellspacing="2" width="100%">
                                          
                                            <tr>
                                                <td valign="top" style="width: 11%">
                                                    <span class="validstar"></span>Address :
                                                </td>
                                                <td colspan="4" style="width: 35%">
                                                    <input name="address" type="text" maxlength="100" id="address" tabindex="23"  style="width:50%;" />
                                                    
                                                </td>
                                            </tr>
                                            

		</select>
                                                    
                                                </td>
                                                <td width="15%">
                                                    <span class="validstar"></span>State :
                                                </td>
                                                <td width="35%">
                                                    
                                                    <select name="state" id="state" style="width:55%;">
			<option selected="selected" value="0">Please Select</option>
			<option value="OTHER">OTHER</option>
			<option value="ANDAMAN">ANDAMAN &amp; NICOBAR</option>
			<option value="ANDHRA">ANDHRA PRADESH</option>
			<option value="ARUNACHALPRADESH">ARUNACHAL PRADESH</option>
			<option value="ASSAM">ASSAM</option>
			<option value="BIHAR">BIHAR</option>
		</select>
                                                    
                                                </td>
                                            </tr>
                                            <tr>
                                             
                                                <td style="width: 11%">
                                                    <span class="validstar"></span>City/ Village :
                                                </td>
                                                <td width="35%" style="margin-left: 200px">
                                                    
                                                    <select name="city" id="city" tabindex="31"  style="width:55%;">
			<option selected="selected" value="0">Please Select</option>
			<option value="OTHER">OTHER</option>
			<option value="AALANAVARA">AALANAVARA</option>
			<option value="ABHAYAPURI">ABHAYAPURI</option>
			<option value="ACHABBAL">ACHABBAL</option>
		

		</select>
                                                    
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 11%">
                                                    <span class="validstar">&nbsp</span>ZIP/ PIN :
                                                </td>
                                                <td width="35%">
                                                    <input name="pincode" type="text" maxlength="6" id="pincode" tabindex="33"  style="width:55%;" />
                                                    
                                                </td>
                                                <td width="15%">
                                                    <span class="validstar"></span>
                                                </td>
                                                <td width="35%">
                                                </td>
                                            </tr>
                                        </table>
                                    </fieldset>
                                    <br />
                                
	</div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%">
                            <tr>
                                <td align="left" class="legend" style="width: 99%">
                                    Eligibility Details
                                </td>
                                					
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div id="divacdemic" style="display: block">
                            <div id="ctl00_ContentPlaceHolder1_pnljee">
		
                                <fieldset>
                                    <span>&nbsp;JEE (Main) Information</span>
                                    <br />
                                    <table cellspacing="5" cellpadding="6" style="border: solid 1px black; table-layout: auto;
                                        width: 100%;">
                                        <tr style="border: solid 1px black;" id="trjeetxt">
                                            <td style="width: 13%; border-bottom: solid 1px black; border-right: solid 1px black;
                                                text-align: center">
                                                <span style="color: red; font-weight: bold;">&nbsp;</span> JEE (Main) Roll No.
                                            </td>
                                            <td style="width: 13%; border-bottom: solid 1px black; border-right: solid 1px black;
                                                text-align: center">
                                                <span style="color: red; font-weight: bold;">&nbsp;</span>Marks Obtained in Physics
                                            </td>
                                            <td style="width: 13%; border-bottom: solid 1px black; border-right: solid 1px black;
                                                text-align: center">
                                                <span style="color: red; font-weight: bold;">&nbsp;</span>Marks Obtained in Chemistry
                                            </td>
                                            <td style="width: 13%; border-bottom: solid 1px black; border-right: solid 1px black;
                                                text-align: center">
                                                <span style="color: red; font-weight: bold;">&nbsp;</span>Marks Obtained in Mathematics
                                            </td>
                                            
                                            <td style="width: 13%; border-bottom: solid 1px black; text-align: center;">
                                                <span style="color: red; font-weight: bold;">&nbsp;</span>JEE MAIN RANK
                                            </td>
                                        </tr>
                                        <tr id="trjeevale">
                                            <td style="width: 13%; border-right: solid 1px black; text-align: center">
                                                <input name="jeerollno" type="text" maxlength="10" id="jeerollno" tabindex="34" style="width:65%;" />
                                                
                                            </td>
                                            <td style="width: 13%; border-right: solid 1px black; text-align: center">
                                                <input name="phymarks" type="number" maxlength="3" id="phymarks" style="width:45%;" max="120"/>
                                                
                                            </td>
                                            <td style="width: 13%; border-right: solid 1px black; text-align: center">
                                                <input name="chemmarks" type="number" maxlength="3" id="chemmarks" tabindex="36" style="width:45%;" max="120" />
                                                
                                            </td>
                                            <td style="width: 13%; border-right: solid 1px black; text-align: center">
                                                <input name="mathsmarks" type="number" maxlength="3" id="mathsmarks" tabindex="37"  max="120" style="width:45%;" />
                                                
                                            </td>
                                            
                                            <td style="width: 13%; text-align: center">
                                                <input name="rank" type="text" maxlength="12" id="rank" tabindex="38"  style="width:45%;" />
                                                
                                            </td>
                                        </tr>
                                    </table>
                          
			</tr>
		</table>
		
                                    <br />
                                </fieldset>
	</div>
                            
<div>
&nbsp;
</div>
<fieldset>
<span>&nbsp;10th Standard</span>
<div>
<table width="100%">      
                <tr>
                    <td>
                        <div id="divpersonal" style="display: block">
                            <table cellspacing="2" style="width: 100%; table-layout: auto;">
                                
                                <tr>
                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> Board <span style="font-size: xx-small">
                                            
                                    </td>
                                    <td style="width: 35%; text-align: left;">
                                        <input name="10board" type="text" id="10board" >
                                        
                                    </td>
                                </tr>
                                <tr>
                                
                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> School Name :
                                    </td>
                                    <td valign="middle" style="width: 35%; text-align: left">
                                        <input name="10name" id="10name" type="text">
                                    </td>
                                </tr>
                                <tr>
                                
                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> Percentage :
                                    </td>
                                    <td valign="middle" style="width: 35%; text-align: left">
                                        <input name="10percentage" id="10percentage" type="number" min="0" max="100" step="0.01">
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td style="width: 15%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> City :
                                    </td>
                                    <td style="width: 35%; text-align: left">
                                        <input name="10city" id="10city" type="text">
                                        <span  style="color:Red;display:none;"></span>
                                    </td>
                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> State :
                                    </td>
                                    <td style="width: 35%; text-align: left">
                                        <input name="10state" id="10state" type="text">
                                        <span  style="color:Red;display:none;"></span>
                                    </td>
                                    
                                </tr>
                                <tr>
                                	<td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> Pin Code :
                                    </td>
                                    <td style="width: 35%; text-align: left">
                                        <input name="10pincode" id="10pincode" type="text">
                                        <span  style="color:Red;display:none;"></span>
                                    </td>
                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> Country :
                                    </td>
                                    <td style="width: 35%; text-align: left">
                                        <input name="10country" id="10country" type="text">
                                        <span  style="color:Red;display:none;"></span>
                                    </td>
                                </tr>
                                
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
                                
                                
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                </tr>
                </table>
    
                                    

</div>
</fieldset>
<div>
&nbsp;
</div>
<fieldset>
<span>&nbsp;12th Standard</span>
<div>
<table width="100%">      
                <tr>
                    <td>
                        <div id="divpersonal" style="display: block">
                            <table cellspacing="2" style="width: 100%; table-layout: auto;">
                                
                                <tr>
                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> Board <span style="font-size: xx-small">
                                            
                                    </td>
                                    <td style="width: 35%; text-align: left;">
                                        <input name="12board" type="text" id="12board" >
                                        
                                    </td>
                                </tr>
                                <tr>
                                
                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> School Name :
                                    </td>
                                    <td valign="middle" style="width: 35%; text-align: left">
                                        <input name="12name" id="12name" type="text">
                                    </td>
                                </tr>
                                <tr>
                                
                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> Percentage :
                                    </td>
                                    <td valign="middle" style="width: 35%; text-align: left">
                                        <input name="12percentage" id="12percentage" type="number" min="0" max="100" step="0.01">
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td style="width: 15%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> City :
                                    </td>
                                    <td style="width: 35%; text-align: left">
                                        <input name="12city" id="12city" type="text">
                                        <span  style="color:Red;display:none;"></span>
                                    </td>
                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> State :
                                    </td>
                                    <td style="width: 35%; text-align: left">
                                        <input name="12state" id="12state" type="text">
                                        <span  style="color:Red;display:none;"></span>
                                    </td>
                                    
                                </tr>
                                <tr>
                                	<td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> Pin Code :
                                    </td>
                                    <td style="width: 35%; text-align: left">
                                        <input name="12pincode" id="12pincode" type="text">
                                        <span  style="color:Red;display:none;"></span>
                                    </td>
                                    <td style="width: 16%; text-align: left">
                                        <span style="color: red; font-weight: bold;">*</span> Country :
                                    </td>
                                    <td style="width: 35%; text-align: left">
                                        <input name="12country" id="12country" type="text">
                                        <span  style="color:Red;display:none;"></span>
                                    </td>
                                </tr>
                                
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
       <table width="100%">
                            <tr>
                              <span>&nbsp;</span>  
                                
                            </tr>
                        </table>

</form>


</body>
</html>
