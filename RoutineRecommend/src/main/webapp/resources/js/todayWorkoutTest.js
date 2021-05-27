const btn1 = document.getElementById('btn1');
const btn2 = document.getElementById('btn2');
const btn3 = document.getElementById('btn3');
const btn = document.querySelectorAll('input[type="button"]');
var cnt = 0;
var cnt2 = 0;
var btn1click = 0;
var btn2click = 0;
var btn3click = 0;


/*캘린더 표시용 클릭횟수 카운트*/
//바로 아랫부분 대체 여부 검토하기
/*
function countForColor(){
    console.log(cnt);
    localStorage.setItem('colorIdx',cnt);
    cnt += 1;
};
for(let i=0; i<btn.length; i++){
    btn[i].addEventListener('click',countForColor);
}
*/
//총 합 구하기...
const str1 = parseInt(btn1.value.split(" ")[1]);
const str2 = parseInt(btn2.value.split(" ")[1]);
const str3 = parseInt(btn3.value.split(" ")[1]);

var total = str1+str2+str3;
if(parseInt(localStorage.getItem('colorIdx_%'))/total <= 0.3){
    localStorage.setItem('setColor',1);
}
else if(parseInt(localStorage.getItem('colorIdx_%'))/total > 0.3 && parseInt(localStorage.getItem('colorIdx_%'))/total <= 0.6){
    localStorage.setItem('setColor', 2);
}
else if(parseInt(localStorage.getItem('colorIdx_%'))/total > 0.6){
    localStorage.setItem('setColor', 3);
}



/*피드백 모달 표시여부 클릭횟수 카운트 */

function btn1CountforFeedback(){
    console.log('btn1클릭');
    localStorage.setItem('btn1Click',btn1click);
    btn1click += 1;
    console.log('valid:'+ btn1click);
}

function btn2CountforFeedback(){
    console.log('btn2클릭');
    localStorage.setItem('btn2Click',btn2click);
    btn2click += 1;
}

function btn3CountforFeedback(){
    console.log('btn3클릭');
    localStorage.setItem('btn3Click',btn3click);
    btn3click += 1;
}
var valid = parseInt(localStorage.getItem('btn1Click'));
btn1.addEventListener('click',btn1CountforFeedback);
btn2.addEventListener('click',btn2CountforFeedback);
btn3.addEventListener('click',btn3CountforFeedback);

function init(){
    //countForColor();
    btn1CountforFeedback();
    btn2CountforFeedback();
    btn3CountforFeedback();
};

init();

//동작 가이드 모달 부분

//const openButton = document.getElementById("open");
/* 동작 가이드 모달 부분 변수 */
const modal = document.querySelector(".modal");
const overlay = modal.querySelector(".md_overlay");
const closeButton = document.getElementById("closeBtn");

/* 피드백 모달 부분 변수 */
const modalF = document.querySelector(".modalF");
//const overlayF = modalF.querySelector(".mdF_overlay");
const closeButtonF = document.getElementById("closeBtnF");



//동작 가이드 모달 부분 함수
function openModal(){
    modal.classList.remove("hidden");
}
function closeModal(){
    modal.classList.add("hidden");
}

btn1.addEventListener("click",openModal);
//btn1.addEventListener('click',validUpdate);

btn2.addEventListener("click",openModal);
btn3.addEventListener("click",openModal);
closeButton.addEventListener("click",closeModal);

closeButton.addEventListener('click',openfeedback); //이부분 추후 수정
closeButtonF.addEventListener('click',closefeedback);
//closeButton.addEventListener('click',openfeedback);
overlay.addEventListener("click",closeModal);


//동작 가이드 모달 - 횟수 카운트 부분
var countBtn = document.getElementById('countBtn');
countBtn.addEventListener('click',cntCheck);

function cntCheck(){
    cnt2 += 1;
    localStorage.setItem('colorIdx_%',cnt2);
    
}



//피드백 모달 부분
function openfeedback(){
    modalF.classList.remove("hidden");
}

function closefeedback(){
    modalF.classList.add("hidden");
}

function validUpdate(){
    valid = localStorage.getItem('btn1Click');
}

var feedbackBtns = document.querySelectorAll('#feedbackBtn');
const changeColor = "#84d5c5";

function clickHandler() {  
  if(this.style.backgroundColor === ""){
    this.style.backgroundColor = changeColor;
    console.log('색상 변경');
  }
  else{
    this.style.backgroundColor = "";
    console.log('색상 원위치');
  }
}

for(let i=0; feedbackBtns.length; i++){
    feedbackBtns[i].addEventListener('click', clickHandler);
}