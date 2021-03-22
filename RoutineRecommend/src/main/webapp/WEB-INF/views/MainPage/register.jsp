<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
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
        <span>오늘의 운동 시작하기</span>
        <span>운동 기록 확인하기</span>
        <span>사용자 정보 변경하기</span>
    </div>

    <div class="createAccount">

        <h1 class="intro">운동 습관을 길러주는</h1>
        <h1 id="hilight">Beginner Gain</h1>
		<!-- 회원 가입 form에서 들어가는 변수는 userName, id, password입니다 -->
		<!-- submit버튼으로 form이 전송됩니다 -->
        <div class="newUserInfo">
            <form id="my-form" action="/newUser" method="post">
                <input type="text" name="userName" placeholder="이름"></input>
                <p></p>
                <input type="text" name="id" placeholder="아이디"></input>
                <p></p>
                <input type="password" name="password" placeholder="비밀번호"></input>
                <p><input type="submit" value="가입 후 기본정보 입력하기" id="newUserRegister"></input>
                </p>
            </form>
        </div>
    </div>
</body>

</html>