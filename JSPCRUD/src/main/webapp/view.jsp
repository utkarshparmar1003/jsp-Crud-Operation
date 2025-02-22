<%@page import="com.jsp.crud.EmpDao"%>
<%@page import="com.jsp.crud.Emp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>
</head>
<body>
<%
List<Emp> list=EmpDao.view();

%>
<table style="width:100% ">
<tr>
<th>Id</th>
<th>Name</th>
<th>Password</th>
<th>Email</th>
<th>Country</th>
</tr>
<%
for(Emp e:list){
	out.print("<tr><td>"+e.getId()+"</td><td>"+e.getName()+"</td><td>"+e.getPassword()+"</td><td>"+e.getEmail()+"</td><td>"+e.getCountry()+"</td></tr>");
}
%>
</table>
<a href="index.jsp">Add Employee</a>
</body>
</html>