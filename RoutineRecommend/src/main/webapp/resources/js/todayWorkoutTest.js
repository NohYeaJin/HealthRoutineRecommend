const btn1 = document.getElementById('btn1');
const btn2 = document.getElementById('btn2');
const btn3 = document.getElementById('btn3');
const btn = document.querySelectorAll('input[type="button"]');
var cnt = 0;
var cnt2 = 0;
var btn1click = 0;
var btn2click = 0;
var btn3click = 0;


/*Ķ���� ǥ�ÿ� Ŭ��Ƚ�� ī��Ʈ*/
//�ٷ� �Ʒ��κ� ��ü ���� �����ϱ�
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
//�� �� ���ϱ�...
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



/*�ǵ�� ��� ǥ�ÿ��� Ŭ��Ƚ�� ī��Ʈ */

function btn1CountforFeedback(){
    console.log('btn1Ŭ��');
    localStorage.setItem('btn1Click',btn1click);
    btn1click += 1;
    console.log('valid:'+ btn1click);
}

function btn2CountforFeedback(){
    console.log('btn2Ŭ��');
    localStorage.setItem('btn2Click',btn2click);
    btn2click += 1;
}

function btn3CountforFeedback(){
    console.log('btn3Ŭ��');
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

//���� ���̵� ��� �κ�

//const openButton = document.getElementById("open");
/* ���� ���̵� ��� �κ� ���� */
const modal = document.querySelector(".modal");
const overlay = modal.querySelector(".md_overlay");
const closeButton = document.getElementById("closeBtn");

/* �ǵ�� ��� �κ� ���� */
const modalF = document.querySelector(".modalF");
//const overlayF = modalF.querySelector(".mdF_overlay");
const closeButtonF = document.getElementById("closeBtnF");



//���� ���̵� ��� �κ� �Լ�
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

closeButton.addEventListener('click',openfeedback); //�̺κ� ���� ����
closeButtonF.addEventListener('click',closefeedback);
//closeButton.addEventListener('click',openfeedback);
overlay.addEventListener("click",closeModal);


//���� ���̵� ��� - Ƚ�� ī��Ʈ �κ�
var countBtn = document.getElementById('countBtn');
countBtn.addEventListener('click',cntCheck);

function cntCheck(){
    cnt2 += 1;
    localStorage.setItem('colorIdx_%',cnt2);
    
}



//�ǵ�� ��� �κ�
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
    console.log('���� ����');
  }
  else{
    this.style.backgroundColor = "";
    console.log('���� ����ġ');
  }
}

for(let i=0; feedbackBtns.length; i++){
    feedbackBtns[i].addEventListener('click', clickHandler);
}