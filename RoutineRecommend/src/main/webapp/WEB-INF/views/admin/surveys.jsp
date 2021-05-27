<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<c:forEach var="row" items="${list}"  varStatus="varstatus">
	<tr>
		<td>${row.user_id}</td>
		<td>${row.gender}</td>
		<td>${row.age}</td>
		<td>${row.keyword}</td>
		<td>${row.tool}</td>
		<td>${row.frequency}</td>
		<td>${row.time}</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>