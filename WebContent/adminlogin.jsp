<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang='en'>
<head>
    <meta charset="UTF-8" /> 
    <title>
       Administrator Login
    </title>
    <link rel="stylesheet" type="text/css" href="adstyle.css" />
</head>
<body style="background-color:white">

<form style="background-color:#C0C0C0" action="controller.AdministratorController" method="POST">
  <h1 style="color:black">Admin Log in</h1>
  <div class="inset">
  <p>
    <label for="id" style="color:black">Admin ID</label>
    <input type="text" name="id" id="id">
  </p>
  <p>
    <label for="password" style="color:black">PASSWORD</label>
    <input type="password" name="password" id="password">
  </p>
  </div>
  <input style=" margin-right:85px;margin-bottom:15px" type="submit" name="submit" id="submit" value="Submit" >
</form>

</body>
</html>
