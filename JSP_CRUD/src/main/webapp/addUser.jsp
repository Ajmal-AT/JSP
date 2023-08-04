<%@page import="com.crud.jsp.DAO.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD USER</title>
</head>
<body>
<jsp:useBean id="us" class="com.crud.jsp.Bean.User" scope="application"></jsp:useBean>
<jsp:setProperty property="*" name="us"/>
<% 
	int i=EmpDAO.AddEmployees(us);
	if(i>0)	{
		response.sendRedirect("success.jsp");
	}
	else	{
		response.sendRedirect("failure.jsp");
	}
%>
</body>
</html>