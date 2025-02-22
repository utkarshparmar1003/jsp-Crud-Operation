<%@page import="com.jsp.crud.EmpDao"%>
<%@page import="com.jsp.crud.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save</title>
</head>
<body>
<%String name=request.getParameter("name");
String password =request.getParameter("pwd");
String email=request.getParameter("email");
String country=request.getParameter("country");

Emp e=new Emp();
e.setName(name);
e.setPassword(password);
e.setEmail(email);
e.setCountry(country);
%>
<%
int status=EmpDao.save(e);
System.out.println(status);
if(status>0){
	out.print("Employee Saved Successfully..!!!");
	
	request.getRequestDispatcher("index.jsp").include(request,response);
}else{
	out.print("Sorry..!! Unable to Save Employee..");
	out.print("<a href='index.jsp'>Back</a>");
}
%>
</body>
</html>