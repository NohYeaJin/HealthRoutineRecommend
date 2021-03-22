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
<!-- 로그인 페이지가 메인페이지가 되면 안되서 -->
<!-- 임의로 만든 메인페이지 입니다 -->
This is Main Page!
<!-- sec태그의 isAuthenticated()는 로그인한 회원에게만 보입니다 -->
<!-- sec태그의 hasrole(admin)은 관리자로 로그인한 회원에게만 보입니다 -->
<!-- 로그인한 회원이라면 logout이 보이고, 그 중 관리자라면 회원관리, 운동종목 관리가 보입니다 -->
<br>
 <sec:authorize access="isAuthenticated()">
 	<a href="/logout">Logout</a>
 </sec:authorize>
<br> 
<sec:authorize access="hasRole('ROLE_ADMIN')">
	<a href="/admin/member">회원관리</a>
	<a href="/admin/exercises">운동종목관리</a>
</sec:authorize>
<br>
Go to login Page
<a href="/customlogin">loginPage</a>
</body>
</html>