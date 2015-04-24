<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset="UTF-8" /> 
    <title>
        Master Admin
    </title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>

<form action="controller.MasterController" method="POST">
   <div>
     <h1 style="margin-left:400px"> Welcome your admin id is <%=session.getAttribute("id")%></h1>
	 
	<div style="margin-left:150px">
    <table width="100%" height="400px">
	<tr>
    
	<td><input type="radio" name="query" value="select">SELECT</td>
	<td><input type="text" name="select_value"></td>
	<td><p>FROM</p></td>
	<td><input type="text" name="select_table"></td>
	<td><input type="text" name="select_condition"></td>
	</tr>
    <tr>
	<td><input type="radio" name="query" value="delete">DELETE FROM</td>
	<td><input type="text" name="delete_table"></td>
	
	</tr>
	<tr>
	<td><input type="radio" name="query" value="alter">ALTER TABLE</td>
	<td><input type="text" name="alter_table"></td>
	<td></td>
	<td><input type="text" name="alter_condition"></td>
	</tr>
	<tr>
	<td><input type="radio" name="query" value="update">UPDATE</td>
	<td><input type="text" name="update_table"></td>
	<td><p>SET</p></td>
	<td><input type="text" name="update_value"></td>
	<td><input type="text" name="update_condition"></td>
	
	</tr>
	</table>
	</div>
	<input type="submit" name="submit" value="submit" style="margin-left:600px ; margin-top:50px ; height:40px ; width:100px">
	</div>
 </form>

</body>
</html>