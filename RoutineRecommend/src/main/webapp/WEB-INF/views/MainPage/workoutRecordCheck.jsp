<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>운동 기록 확인하기</title>
    <link rel="stylesheet" href="/resources/css/App.css">
    <link rel="stylesheet" href="/resources/CalendarPickerJS-master/CalendarPicker.style.css"/>
</head>
<body>
    <div class="title">
        <span id="title">Beginner Gain</span>
        <span id="start">오늘의 운동 시작하기</span>
        <span id ="recordCheck">운동 기록 확인하기</span>
        <span id="userInfo">사용자 정보 변경하기</span>
    </div>

    
    <h1 id="pageSubTitle">월 별 운동 기록 확인하기</h1>


    <div id="showcase-wrapper">
        <div id="myCalendarWrapper"></div>
    </div>
</body>

<script src="/resources/js/Navbar.js"></script>
<script src="/resources/CalendarPickerJS-master/CalendarPicker.js"></script>
<script>
    const nextYear = new Date().getFullYear() + 1;
    const myCalender = new CalendarPicker('#myCalendarWrapper', {
        
    });

    myCalender.onValueChange((currentValue) => {
        currentDateElement.textContent = currentValue;
        currentDayElement.textContent = currentValue.getDay();
        currentToDateString.textContent = currentValue.toDateString();

        console.log(`The current value of the calendar is: ${currentValue}`);
    });
</script>
</html>