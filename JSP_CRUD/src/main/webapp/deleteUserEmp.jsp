<%@page import="com.crud.jsp.DAO.EmpDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		String n =  request.getParameter("id"); 
		int i = EmpDAO.DeleteEmployee(n);
		if(i>0) {
			response.sendRedirect("deletesuccess.jsp");
		}
		else {
			response.sendRedirect("deletefailure.jsp");
		}
	%>
</body>
</html>