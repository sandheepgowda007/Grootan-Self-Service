<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="service.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<form action="MyFirst.jsp" name = "Login" method="post">
		<table>
			<tr>
				<td>User Name : </td>
				<td> <input type="text" name="uname" id = "uid" value="Enter User Name">  </td>
			</tr>
			<tr>
				<td> <input type="submit" name="submit" value="Ok"> </td>
				<td> <input type="submit" name="submit" value="Cancel"> </td>
			</tr>
		</table>
	</form>
	<%
	if(request.getParameter("submit")!=null)
	{
	String str = request.getParameter("uname");
	
	Connection c = DBConnection.getDbConnection();
	PreparedStatement p = c.prepareStatement("select username,pwd from luser where username = ?");
	p.setString(1, str);
	ResultSet rs = p.executeQuery();
	if(rs.next())
	{
		response.sendRedirect("Success.html");
	}
	else
	{
		response.sendRedirect("MyFirst.jsp");
	}
		
	
	
	
	}
	%>
</body>
</html>