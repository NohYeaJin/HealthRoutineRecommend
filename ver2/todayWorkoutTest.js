localStorage.clear()
const btn1 = document.getElementById('btn1');
const btn2 = document.getElementById('btn2');
const btn3 = document.getElementById('btn3');
const btn = document.querySelectorAll('input[type="button"]');
var cnt = 0;
var cnt2 = 0;
var btn1click = 0;
var btn2click = 0;
var btn3click = 0;


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
    btn1click += 1;
    localStorage.setItem('btn1Click',btn1click);
    console.log('valid:'+ btn1click);
}

function btn2CountforFeedback(){
    console.log('btn2클릭');
    btn2click += 1;
    localStorage.setItem('btn2Click',btn2click);
}

function btn3CountforFeedback(){
    console.log('btn3클릭');
    btn3click += 1;
    localStorage.setItem('btn3Click',btn3click);
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


//동작 가이드 모달 부분

//const openButton = document.getElementById("open");
/* 동작 가이드 모달 부분 변수 */
const modal = document.querySelector(".modal");
const overlay = modal.querySelector(".md_overlay");
const closeButton = document.getElementById("closeBtn");

/* 피드백 모달 부분 변수 */
const modalF = document.querySelector(".modalF");
const overlayF = modalF.querySelector(".mdF_overlay");
const closeButtonF = document.getElementById("closeBtnF");

function openModal1(){
    if(btn1click == 1){
        modalF.classList.remove("hidden");
    }
    else{
        localStorage.setItem('btn1Click',btn1click);
        reps(1);
        modal.classList.remove("hidden");
    }
}

function openModal2(){
    if(btn2click == 1){
        modalF.classList.remove("hidden");
    }
    else{
        localStorage.setItem('btn2Click',btn2click);
        reps(2);
        modal.classList.remove("hidden");
    }
}

function openModal3(){
    if(btn3click == 1){
        modalF.classList.remove("hidden");
    }
    else{
        localStorage.setItem('btn3Click',btn3click);
        reps(3);
        modal.classList.remove("hidden");
    }
}

function closeModal(){
    modal.classList.add("hidden");
    if(parseInt(localStorage.getItem('btn1Click')) > 1){
        achieve(1);
        localStorage.setItem('btn1Click', 1);
    }
    else if(parseInt(localStorage.getItem('btn2Click')) > 1){
        achieve(2);
        localStorage.setItem('btn2Click', 1);
    }
    else if(parseInt(localStorage.getItem('btn3Click')) > 1){
        achieve(3);
        localStorage.setItem('btn3Click', 1);
    }
        
}

function closeModalF(){
    modalF.classList.add("hidden");
}

btn1.addEventListener("click",openModal1);
btn2.addEventListener("click",openModal2);
btn3.addEventListener("click",openModal3);


closeButton.addEventListener("click",closeModal);
closeButtonF.addEventListener("click",closeModalF);

overlay.addEventListener("click",closeModal);
overlayF.addEventListener("click",closeModal);


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

//세트 추가하기

function myFunction(btnNumber) {
    var h = document.getElementById("lalala");
    cnt += 1;
    h.insertAdjacentHTML("beforeend", `<div>${cnt}세트 <input id="set_add_inputbox" class="${cnt}" type="text" value=""> / 10회</div>`);
}

// 운동 목록에 표시된 횟수만큼 기록 영역 출력
function reps(btnNumber) {
    var h = document.getElementById("lalala");
    while(h.firstChild)
        h.removeChild(h.lastChild);
    var str = "";
    if(btnNumber == 1){
        str = document.getElementById("btn1").value;
    }
    else if(btnNumber == 2){
        str = document.getElementById("btn2").value;
    }
    else if(btnNumber == 3){
        str = document.getElementById("btn3").value;
    }
    var list = str.split(' ');
    console.log(list[1])
    var reps = parseInt(list[1]);
    for(cnt = 0; cnt < reps; cnt++){
        h.insertAdjacentHTML("beforeend", `<div>${cnt+1}세트 <input id="set_add_inputbox" class="${cnt+1}" type="text" value=""> / 10회</div>`);
    }
}

//입력값에 따라 달성도 표시한거 localstorage에 저장.
function achieve(exercise){
    var sum = 0
    var result = 0
    if(exercise == 1){
        for(i=1; i<=cnt; ++i){
            temp = document.getElementsByClassName(""+i)[0].value;
            if(temp){
                sum += parseInt(temp)
            }
        }
        result = sum/(10*cnt) * 100;
        localStorage.setItem('sum1', result);
    }
    else if(exercise == 2){
        for(i=1; i<=cnt; ++i){
            temp = document.getElementsByClassName(""+i)[0].value;
            if(temp){
                sum += parseInt(temp)
            }
        }
        result = sum/(10*cnt) * 100;
        localStorage.setItem('sum2', result);
    }
    else if(exercise == 3){
        for(i=1; i<=cnt; ++i){
            temp = document.getElementsByClassName(""+i)[0].value;
            if(temp){
                sum += parseInt(temp)
            }
        }
        result = sum/(10*cnt) * 100;
        localStorage.setItem('sum3', result);
    }
    console.log("sum=" + result)
    
}