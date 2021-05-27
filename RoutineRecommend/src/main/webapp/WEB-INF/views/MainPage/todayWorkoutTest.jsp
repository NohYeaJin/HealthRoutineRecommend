<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>������ � �����ϱ�</title>
    <link rel="stylesheet" href="/resources/css/App.css">
    <link rel="stylesheet" href="/resources/css/todayWorkoutTest.css">
</head>
<body>
    <div class="title">
        <span id="title">Beginner Gain</span>
        <span id = "start">������ � �����ϱ�</span>
        <span id="recordCheck">� ��� Ȯ���ϱ�</span>
        <span id="userInfo">����� ���� �����ϱ�</span>
      </div>

    <div class="introArea">
        <h1 id="introTitle">�ȳ��ϼ���{username}�� <br>������ � ��ƾ�Դϴ�</h1>
        <p id="msg1">{� ���}�� ȿ������ � ��ƾ�� ��õ�ص�Ƚ��ϴ�</p>
        <p id="motivator">����ο� �޽��� ��� ����</p>
    </div>

    <div class="routineArea">
        <div id="bgRect">
        </div>
        <div id="btnArea">
            <p><input type="button" value="�����1 10 ��Ʈ", id="btn1"></input></p>
            <p><input type="button" value="�����2 5 ��Ʈ" id="btn2"></input></p>
            <p><input type="button" value="�����3 00 ��Ʈ" id="btn3"></input></p>
        </div>
    </div>
    <!--���� ���̵� ���â-->
	<div class="modal hidden">
		<div class="md_overlay"></div>
		<div class="md_content">
            <div id="md_titleArea">
                <h2 id="modal_title">���� ���̵�<h2>
            </div>
            <div id="md_videoArea">
                <div id="player"></div>
                <span><button id="countBtn">count</button></span>
            </div>
            <div id="md_btnArea">
                <button id="closeBtn">�ٸ� � �Ϸ�����</button>
            </div>
		</div>  
	</div>

    <!-- �ǵ�� ���â -->
    <div class="modalF hidden">
		<div class="mdF_overlay"></div>
		<div class="mdF_content">
            <div id="mdF_titleArea">
                <h2 id="modalFeedback_title">��õ�� ��� ��̳���?</h2>
                <p id="modalFeedback_subtitle">üũ���ֽ� ������ �������� ���� ��Ȯ�� � ��ƾ ��õ�� �ص帳�ϴ�</p>
            </div>
            <div id="mdF_selectionArea">
                <button id="feedbackBtn" value=-2>�ſ� ����</button>
                <button id="feedbackBtn" value=-1>����</button>
                <button id="feedbackBtn" value=0>������</button>
                <button id="feedbackBtn" value=-1>�����</button>
                <button id="feedbackBtn" value=-2>�ſ� �����</button>
            </div>
            <div id="mdF_btnArea">
                <button id="closeBtnF">Ȯ��</button>
            </div>
		</div>  
	</div>
</body>

<script src="/resources/js/Navbar.js"></script>
<script src="/resources/js/todayWorkoutTest.js"></script>
<script src="/resources/js/md_video.js"></script>

</html>