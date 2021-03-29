const start = document.getElementById('start');
const recordCheck = document.getElementById('recordCheck');
const userInfo = document.getElementById('userInfo');
const title = document.getElementById('title');



const baseColor = "black";
const newColor = "#16a085";

function handleClick(){
    const currnetColor = start.style.color;
    if(currnetColor === baseColor){
        start.style.color = newColor;
    }else{
        start.style.color = baseColor;
    }
}

function movePage1(){
    window.location.href = "todayWorkout.html";
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

function init(){
    start.style.color = baseColor;
    start.addEventListener('click',movePage1);
    start.addEventListener('click',handleClick);

    userInfo.style.color = baseColor;
    userInfo.addEventListener('click',handleClick);
    userInfo.addEventListener('click',movePage3);

    recordCheck.style.color = baseColor;
    recordCheck.addEventListener('click',handleClick);
    recordCheck.addEventListener('click',movePage2);

    title.addEventListener('click', movetoMain);
}

init();
