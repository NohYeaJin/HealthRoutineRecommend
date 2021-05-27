<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/resources/css/App.css">
</head>

<body>
    <div class="title">
        <span id="title">Beginner Gain</span>
        <span id = "start">오늘의 운동 시작하기</span>
        <span id="recordCheck">운동 기록 확인하기</span>
        <span id="userInfo">사용자 정보 변경하기</span>

        <span class="language">
            <span>Language</span>
            <span id="KOR">KOR</span>
            <span id="구분선"> | </span>
            <span id="FRN">French</span>
            <span id="구분선"> | </span>
            <span id="IND">Indian</span>
        </span>

      </div>

    <div class="createAccount">

        <h1 class="intro">운동 습관을 길러주는</h1>
        <h1 id="hilight">Beginner Gain</h1>

        <div class="newUserInfo">
            <form name="user" action="/newUser" method="post" autocompile="on" id="loginForm">
                <input type="text" name="userName" placeholder="이름"></input>
                <p></p>
                <input type="text" name="id" placeholder="아이디"></input>
                <p></p>
                <input type="password" name="password" placeholder="비밀번호"></input>
                <p><input type="button" value="로그인 창으로 이동하기" id="newUserRegister" onclick="movePage()"></input>
                </p>
            </form>
        </div>
    </div>
</body>

<script src = "/resources/js/Register.js"></script>
<script src="/resources/js/Navbar.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	var msg = "${msg}";
	if(msg=="Already"){
		alert("이미 존재하는 아이디입니다. 다른 아이디를 입력해주세요");
	}
</script>
</html>