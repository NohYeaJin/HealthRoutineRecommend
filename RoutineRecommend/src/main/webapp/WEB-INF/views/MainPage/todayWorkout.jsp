<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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
        <h1 id="introTitle">안녕하세요 ${username}님 <br>오늘의 운동 루틴입니다</h1>
        <p id="msg1">${keyword}에 효과적인 운동 루틴을 추천해드렸습니다</p>
        <p id="motivator">동기부여 메시지 출력 공간</p>
    </div>

    <div class="routineArea">
        <div id="bgRect">
        </div>
        <div id="btnArea">
            <p><input type="button" value="${first} ${firstdata}" id="btn1"></input></p>
            <p><input type="button" value="${second} ${seconddata}" id="btn2"></input></p>
            <p><input type="button" value="${third} ${thirddata}" id="btn3"></input></p>
        	<input type="hidden" value="${numberDes1}">
        	<input type="hidden" value="${numberDes2}">
        	<input type="hidden" value="${numberDes3}">
        </div>
    </div>

	<div class="modal hidden">
		<div class="md_overlay"></div>
		<div class="md_content">
            <div id="md_titleArea">
                <h2 id="modal_title">동작 가이드</h2>
            </div>
            <div id="md_videoArea">
                <p>동영상 위치</p>
            </div>
            <div id="md_btnArea">
                <button id="closeBtn">다른 운동 하러가기</button>
            </div>
		</div>  
	</div>
</body>

<script>
var test1 = "${first}";
var test2 = "${firstdata}";
var test3 = "${second}";
var test4 = "${seconddata}";
var test5 = "${third}";
var test6 = "${thirddata}";
var test7 = "${numberDes1}";
var test8 = "${numberDes2}";
var test9= "${numberDes3}";

if(test7=="시간"){
	//do something(css)
	console.log("time data success!");
}

if(test8=="횟수"){
	//do something(css)
	console.log("count data success!");
}

if(test9=="세트"){
	//do something(css)
	console.log("set data success!");
}

console.log(test1,test2,test3,test4,test5,test6)
</script>

<script src="/resources/js/Navbar.js"></script>
<script src="/resources/js/todayWorkout.js"></script>

</html>