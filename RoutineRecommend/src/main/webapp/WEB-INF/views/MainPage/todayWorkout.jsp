<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오늘의 운동 시작하기</title>
    <link rel="stylesheet" href="/resources/css/App.css">
    <link rel="stylesheet" href="/resources/css/todayWorkout.css">
</head>
<body>
    <div class="title">
        <span id="title">Beginner Gain</span>
        <span id = "start">오늘의 운동 시작하기</span>
        <span id="recordCheck">운동 기록 확인하기</span>
        <span id="userInfo">사용자 정보 변경하기</span>
      </div>

    <div class="introArea">
        <h1 id="introTitle">안녕하세요{username}님 <br>오늘의 운동 루틴입니다</h1>
        <p id="msg1">{운동 고민}에 효과적인 운동 루틴을 추천해드렸습니다</p>
        <p id="motivator">동기부여 메시지 출력 공간</p>
    </div>

    <div class="routineArea">
        <div id="bgRect">
        </div>
        <div id="btnArea">
            <p><input type="button" value="운동종목 1" id="btn1"></input></p>
            <p><input type="button" value="운동종목 2" id="btn2"></input></p>
            <p><input type="button" value="운동종목 3" id="btn3"></input></p>
        </div>
    </div>
</body>

<script src="/resources/js/Navbar.js"></script>
<script src="/resources/js/todayWorkout.js"></script>
</html>