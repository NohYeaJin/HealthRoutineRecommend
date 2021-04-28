<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>����������</title>
    <link rel="stylesheet" href="/resources/css/App.css">
</head>
<body>
    <div class="title">
        <span id="title">Beginner Gain</span>
        <span id = "start">������ � �����ϱ�</span>
        <span id="recordCheck">� ��� Ȯ���ϱ�</span>
        <span id="userInfo">����� ���� �����ϱ�</span>
      </div>
    
    <div>
    <h1 class="intro">� ������ �淯�ִ�</h1>
    <h1 id="hilight">Beginner Gain</h1>

        <p class="sub">��� ó�� �����Ͻô� �Թ����̽Ű���?
        <br>AI�� ����� ������ ��ƾ �������� � ����� �ذ��� �帳�ϴ�.</br>
        </p>
	<form action='<c:url value="/MainPage/login"/>' method="post" autocompile="on" id="loginForm">
        <input type="text" name="id" placeholder="���̵�" id="userId"></input>
        <p><input type="password" name="password" placeholder="��й�ȣ" id="userPw"></input></p>
        <p><input type="submit" value="�α���" id="submitBtn"></input></p>
        <input type="button" value="ȸ������" onClick="window.location.href='/register'" id="registerBtn"></input>
    	<input type="hidden" name="${_csrf.parameterName}" value="${_crsf.token}"  />
    </form>      
    </div>
</body>

<!--  <script src="Login.js"></script>-->
<script src="/resources/js/Navbar.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	var msg = "${msg}";
	if(msg=="REGISTERED"){
		alert("ȸ�� ������ �Ϸ�Ǿ����ϴ�! ���� �α��� ���ּ���");
	}else if(msg=="INVALID"){
		alert("���̵� ��й�ȣ�� ���� �ʽ��ϴ� �ٽ� Ȯ�����ּ���");
	}
</script>
</html>