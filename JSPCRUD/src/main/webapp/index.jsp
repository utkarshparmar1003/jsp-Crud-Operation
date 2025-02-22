<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
</head>
<body>
<form action="save.jsp">
<table>
<tr>
<td>Name : </td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>Password : </td>
<td><input type="password" name="pwd"></td>

</tr>
<tr><td>Email : </td>
<td><input type="email" name="email"></td></tr>
<tr><td>Country</td><td><input type="text" name="country"></td></tr>
<tr><td colspan="2"><input type="submit" value="Submit"></td></tr>
</table>
</form>
<br><br>
<a href="view.jsp">View Employees</a>
</body>
</html>