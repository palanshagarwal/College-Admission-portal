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

<form >
   <div>
     <h1 style="margin-left:400px"> Welcome your admin id is <%=session.getAttribute("id")%> </h1>
	 <h3 style="margin-left:400px"> Your access previliage type is viewer</h3>
	 
    <table>
	<tr>
	<td><h2 style="margin-left:400px">  <a href="rank.jsp" target="_blank"> Information on the basis of Rank</a> <br></h2></td>
	</tr>
    <tr>
	<td>
	 <h2 style="margin-left:400px"><a href="marks.jsp" target="_blank">Information on the basis of  Jee Mains Marks</a></h2> </td>
	</tr>
	</table>
	</div>
 </form>

</body>
</html>