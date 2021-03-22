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
		<td>${row.userName}</td>
		<td>${row.id}</td>
		<td>${row.password}</td>
		<td>${row.joinDateTime}</td>
	</tr>
	</c:forEach>
</table>
<!-- 관리자를 위한 회원관리 페이지 -->
<!-- 행은 가입한 user수 -->
<!-- 열은 왼쪽부터 이름, 아이디, 비밀번호(암호화된 버젼), 가입날짜 기록되어 있음 -->
</body>
</html>