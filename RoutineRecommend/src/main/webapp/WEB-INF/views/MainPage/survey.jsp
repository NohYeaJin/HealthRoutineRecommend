<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>설문조사</title>
    <link rel="stylesheet" href="/resources/css/App.css">
    <link rel="stylesheet" href="/resources/css/Survey.css">
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
   <form name="form2" method="get" action="/insertSurvey">
    <div class="slideContainer">
        <div class="questionSlides">
            <div class="text" id="question1">
                <h1 id="questionTitle">성별과 나이를 체크해주세요</h1>
                <p id="questionSub">체크해주신 내용을 바탕으로 AI가 필요한 운동을 추천해드립니다</p>
                <div class="selectionPart">
                    <p id="subTitle">성별</p>
                    <div class="gender">
                        <input type="button" name="gender" value="남성" id="select" onclick='inputvalue("gender","남성")'>
                        <input type="button" name="gender" value="여성" id="select" onclick='inputvalue("gender","여성")'>
                    </div>
                    <p id="subTitle">연령대</p>
                    <div class="ageRange">
                        <input type="button" name="age" value="10대" id="select" onclick='inputvalue("age","10대")'>
                        <input type="button" name="age" value="20대" id="select" onclick='inputvalue("age","20대")'>
                        <input type="button" name="age" value="30대" id="select" onclick='inputvalue("age","30대")'>
                        <br>
                        <input type="button" name="age" value="40대" id="select" onclick='inputvalue("age","40대")'>
                        <input type="button" name="age" value="50대 이상" id="select" onclick='inputvalue("age","50대 이상")'>
                    </div>
                </div>
            </div>
        </div>
        

        <div class="questionSlides">
            <div class="text" id="question2">
                <h2 id="questionTitle">운동 장비가 있으신가요?</h2>
                <p id="questionSub">(중복 선택 가능)<br>체크해주신 내용을 바탕으로 AI가 필요한 운동을 추천해드립니다</p>
                <div>
                    <div class="tools">
                        <input type="button" name="tool" value="도구 없음" id="select" onclick='inputvalue("tool","도구 없음")'>
                        <input type="button" name="tool" value="스트래칭 밴드" id="select" onclick='inputvalue("tool","스트레칭 밴드")'>
                        <input type="button" name="tool" value="치닝디핑" id="select" onclick='inputvalue("tool","치닝디핑")'>
                        <br>
                        <input type="button" name="tool" value="짐볼" id="select" onclick='inputvalue("tool","짐볼")'>
                        <input type="button" name="tool" value="덤벨" id="select" onclick='inputvalue("tool","덤벨")'>
                        <input type="button" name="tool" value="바벨" id="select" onclick='inputvalue("tool","바벨")'>
                    </div>
                </div>
            </div>
        </div>

		<div class="questionSlides">
            <div class="text" id="question3">
                <h2 id="questionTitle">운동 경험이 있으신가요?</h2>
                <p id="questionSub">체크해주신 내용을 바탕으로 AI가 필요한 운동을 추천해드립니다</p>
                <div>
                    <div class="keyword">
                        <input type="button" value="초급자" id="select">
                        <input type="button" value="중급자" id="select">
                        <input type="button" value="숙련자" id="select">
                    </div>
                </div>
            </div>
        </div>

        <div class="questionSlides">
            <div class="text" id="question3">
                <h2 id="questionTitle">어떤 운동이 필요하신가요?</h2>
                <p id="questionSub">체크해주신 내용을 바탕으로 AI가 필요한 운동을 추천해드립니다</p>
                <div>
                    <div class="keyword">
                        <input type="button" name="keyword" value="다이어트" id="select" onclick='inputvalue("keyword","다이어트")'>
                        <input type="button" name="keyword" value="근력운동" id="select" onclick='inputvalue("keyword","근력운동")'>
                    </div>
                </div>
            </div>
        </div>
		
		

        <div class="questionSlides">
            <div class="text" id="question4">
                <h2 id="questionTitle">운동 시간과 빈도를 체크해주세요</h2>
                <p id="questionSub">체크해주신 내용을 바탕으로 AI가 필요한 운동을 추천해드립니다</p>
                <div class="selectionPart">
                    <p id="subTitle">운동 시간(1회 기준)</p>
                    <div class="time">
                        <input type="button" name="time" value="30분 이내" id="select" onclick='inputvalue("time","15분 이내")'>
                        <input type="button" name="time" value="30분~1시간 이내" id="select" onclick='inputvalue("time","30분~1시간 이내")'>
                        <input type="button" name="time" value="1시간 이상" id="select" onclick='inputvalue("time","1시간 이상")'>
                    </div>

                    <p id="subTitle">운동 빈도</p>
                    <div class="frequency">
                        <input type="button" name="frequency" value="주  3회 " id="select" onclick='inputvalue("frequency","주 1회 이하")'>
                        <input type="button" name="frequency" value="주 4회" id="select" onclick='inputvalue("frequency","주 2~3회")'>
                        <input type="button" name="frequency" value="주 5회" id="select" onclick='inputvalue("frequency","매일")'>
                    </div>

                    <div class="submit">
                        <input type="submit" value="운동 바로 시작하기" id="finishBtn">
                    </div>
                </div>
            </div>
        </div>

        <div class="pageArrows">
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <span class="underDots">
                <span class="dot" onclick="currerntSlide(1)"></span>
                <span class="dot" onclick="currerntSlide(2)"></span>
                <span class="dot" onclick="currerntSlide(3)"></span>
                <span class="dot" onclick="currerntSlide(4)"></span>
                <span class="dot" onclick="currerntSlide(5)"></span>
            </span>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
    </div>
 </form>

   
   
   
</body>
<script src="//code.jquery.com/jquery-1.11.0.min.js">
	
	$(".keyword input['type=button']").click(function(){

  	var keyword = $(this).val();
  	var name = $(this).name();
	var parent = $(".keyword");
	alert(keyword,name);
	keyword.appendChild();
  	

	})

</script>
<script src="/resources/js/Survey.js"></script>
<script src="/resources/js/Navbar.js"></script>
</html>