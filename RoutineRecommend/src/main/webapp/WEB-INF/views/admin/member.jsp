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
<!-- �����ڸ� ���� ȸ������ ������ -->
<!-- ���� ������ user�� -->
<!-- ���� ���ʺ��� �̸�, ���̵�, ��й�ȣ(��ȣȭ�� ����), ���Գ�¥ ��ϵǾ� ���� -->
</body>
</html>