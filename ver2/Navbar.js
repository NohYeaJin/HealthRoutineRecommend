const start = document.getElementById('start');
const recordCheck = document.getElementById('recordCheck');
const userInfo = document.getElementById('userInfo');
const title = document.getElementById('title');

//Language Part
const KOR = document.getElementById('KOR');
const FRN = document.getElementById('FRN');
const IND = document.getElementById('IND');



const baseColor = "black";
const newColor = "#16a085";

function handleClick(){
    const currnetColor = start.style.color;
    if(currnetColor === baseColor){
        this.style.color = newColor;
    }else{
        this.style.color = baseColor;
    }
}

function movePage1(){
    window.location.href = "todayWorkoutTest.html";
}

function movePage2(){
    window.location.href = "workoutRecordCheck.html";
}

function movePage3(){
    window.location.href = "userInfoEdit.html";
}
function movetoMain(){
    window.location.href="main.html";
}

//language select
function movePage_KOR(){
    window.location.href = "todayWorkoutTest.html";
}

function movePage_FRN(){
    window.location.href = "todayWorkoutTest_French.html";
}

function movePage_IND(){
    window.location.href = "todayWorkoutTest_Hindi.html";
}

function init(){
    start.style.color = baseColor;
    start.addEventListener('click',movePage1);
    start.addEventListener('click',handleClick);

    userInfo.style.color = baseColor;
    userInfo.addEventListener('click',movePage3);
    userInfo.addEventListener('click',handleClick);

    recordCheck.style.color = baseColor;
    recordCheck.addEventListener('click',movePage2);
    recordCheck.addEventListener('click',handleClick);

    title.addEventListener('click', movetoMain);

    //language
    KOR.addEventListener('click',movePage_KOR);
    FRN.addEventListener('click',movePage_FRN);
    IND.addEventListener('click',movePage_IND);
}

init();

