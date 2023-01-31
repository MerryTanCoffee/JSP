<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<%
	String color = "";
	for(int i = 1; i<10; i++) {
		for(int j=1; j < 10; j++) {
			if(i%2==0) {
				color = "red";
			} else {
				color = "black";
			}
			out.println("<tr>");
			out.println(" <td><font color'"+color+"'>" + (i) +
					" X " + (j) + " = " + (i) * (j) + "</font></td>");
			out.println("</tr>");
		}	
	}	
%>
</table>


</body>
</html>