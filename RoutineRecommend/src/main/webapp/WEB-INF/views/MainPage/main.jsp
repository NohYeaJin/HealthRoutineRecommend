<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

This is Main Page!
<br>
 <sec:authorize access="isAuthenticated()">
 	<a href="/logout">Logout</a>
 </sec:authorize>
<br> 
<sec:authorize access="hasRole('ROLE_ADMIN')">
	<a href="/admin/member">ȸ������</a>
	<a href="/admin/exercises">��������</a>
</sec:authorize>
<br>
Go to login Page
<a href="/customlogin">loginPage</a>
</body>
</html>