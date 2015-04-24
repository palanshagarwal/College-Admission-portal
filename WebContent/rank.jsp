<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang='en'>
<head>
    <meta /> 
    <title>
        Viewer Admin
    </title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>

<form action="/controller.RviewerController" method="POST">
   <div>
     <h1 style="margin-left:400px"> Welcome your admin id is <%=session.getAttribute("id")%></h1>
	 <h3 style="margin-left:400px"> Your access previliage type is viewer</h3>
	 
    <table>
	<tr>
	<td><h2 style="margin-left:300px" > Enter a rank range<br></h2></td>
	</tr>
    <tr>
	<td>
	<input type="text" name="minrangerank" id="minrangerank" style="margin-left:300px ; width:200px">
    </td><td>
	<input type="text" name="maxrangerank" id="maxrangerank" style="margin-left:200px ; width:200px">
    </td></tr>
	
	</table>
	
	</div>
	<input type="submit" name="submit" value="submit" style="margin-left:600px ; margin-top:50px">
	
 </form>

</body>
</html>