var loginBtn = document.getElementById("submitBtn");
var registerBtn = document.getElementById("registerBtn");

function loginfnc(){
    var id = document.getElementById("userId").value;
    var pw = document.getElementById("userPw").value;
    //추후 db에서 받아온 사용자 정보와 일치하는지 confirmId, confirmPw 선언 후 비교하는 코드로 변경

    if(id === "hufs" && pw === "1234"){
        alert("로그인 성공");
        console.log("로그인 승인");
    }
    else{
        alert("아이디와 비밀번호를 다시 확인해주세요");
        console.log("로그인 실패");
    }
};

loginBtn.addEventListener('click',loginfnc);



