<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인페이지</title>
    <link rel="stylesheet" href="/resources/css/App.css">
</head>
<body>
    <div class="title">
        <span id="title">Beginner Gain</span>
        <span id = "start">오늘의 운동 시작하기</span>
        <span id="recordCheck">운동 기록 확인하기</span>
        <span id="userInfo">사용자 정보 변경하기</span>
      </div>
    
    <div>
    <h1 class="intro">운동 습관을 길러주는</h1>
    <h1 id="hilight">Beginner Gain</h1>

        <p class="sub">운동을 처음 시작하시는 입문자이신가요?
        <br>AI에 기반한 맞춤형 루틴 제공으로 운동 고민을 해결해 드립니다.</br>
        </p>

    <form name="profile" action="" method="get" autocompile="on" id="loginForm">
        <input type="text" name="id" placeholder="아이디" id="userId"></input>
        <p><input type="text" name="pw" placeholder="비밀번호" id="userPw"></input></p>
        <p><input type="button" value="로그인" id="submitBtn"></input></p>
        <input type="button" value="회원가입" onClick="window.location.href='register.html'" id="registerBtn"></input>
    </form>      
    </div>
</body>

<script src="Login.js"></script>
<script src="Navbar.js"></script>
</html>