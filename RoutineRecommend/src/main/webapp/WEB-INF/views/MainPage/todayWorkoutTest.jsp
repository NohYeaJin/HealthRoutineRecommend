<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오늘의 운동 시작하기</title>
    <link rel="stylesheet" href="/resources/css/App.css">
    <link rel="stylesheet" href="/resources/css/todayWorkoutTest.css">
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
            <p><input type="button" value="운동종목1 10 세트", id="btn1"></input></p>
            <p><input type="button" value="운동종목2 5 세트" id="btn2"></input></p>
            <p><input type="button" value="운동종목3 00 세트" id="btn3"></input></p>
        </div>
    </div>
    <!--동작 가이드 모달창-->
	<div class="modal hidden">
		<div class="md_overlay"></div>
		<div class="md_content">
            <div id="md_titleArea">
                <h2 id="modal_title">동작 가이드<h2>
            </div>
            <div id="md_videoArea">
                <div id="player"></div>
                <span><button id="countBtn">count</button></span>
            </div>
            <div id="md_btnArea">
                <button id="closeBtn">다른 운동 하러가기</button>
            </div>
		</div>  
	</div>

    <!-- 피드백 모달창 -->
    <div class="modalF hidden">
		<div class="mdF_overlay"></div>
		<div class="mdF_content">
            <div id="mdF_titleArea">
                <h2 id="modalFeedback_title">추천된 운동은 어떠셨나요?</h2>
                <p id="modalFeedback_subtitle">체크해주신 내용을 바탕으로 더욱 정확한 운동 루틴 추천을 해드립니다</p>
            </div>
            <div id="mdF_selectionArea">
                <button id="feedbackBtn" value=-2>매우 쉬움</button>
                <button id="feedbackBtn" value=-1>쉬움</button>
                <button id="feedbackBtn" value=0>적당함</button>
                <button id="feedbackBtn" value=-1>어려움</button>
                <button id="feedbackBtn" value=-2>매우 어려움</button>
            </div>
            <div id="mdF_btnArea">
                <button id="closeBtnF">확인</button>
            </div>
		</div>  
	</div>
</body>

<script src="/resources/js/Navbar.js"></script>
<script src="/resources/js/todayWorkoutTest.js"></script>
<script src="/resources/js/md_video.js"></script>

</html>