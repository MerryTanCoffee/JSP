<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<form action = "delete_process.jsp" method = "post">
	<input type="hidden" value=<%=request.getParameter("bo_no")%> name="no"/>
	title : <input type = "text" name = "title"/><br/>
	writer : <input type = "text" name = "writer"/><br/>
	<input type = "submit" value = "submit"/><br/>
</form>
</body>
</html>