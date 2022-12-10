<%@page import="java.sql.PreparedStatement"%>
<%@page import="service.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%
	if(request.getParameter("submit")!=null)
	{
		Connection c = DBConnection.getDbConnection();
		PreparedStatement p = c.prepareStatement("select pno,mailid,dob,firstname,lastname,pschoolname,petname,fcolor,fteacher,fplace from hint");
		
	}
%>
</head>
<body>
	<form action="ForgotUserName.jsp" method="post" name="ForgotUserName">
	<table>
		<tr>
			<td>Question</td>
			<td> </td>
		</tr>
	</table>
	</form>
</body>
</html>