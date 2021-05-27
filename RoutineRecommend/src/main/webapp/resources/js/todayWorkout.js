const btn1 = document.getElementById('btn1');
const btn2 = document.getElementById('btn2');
const btn3 = document.getElementById('btn3');
const btn = document.querySelectorAll('input[type="button"]');
var cnt = 0;

function countForColor(){
    console.log(cnt);
    localStorage.setItem('colorIdx',cnt);
    cnt += 1;
};
for(let i=0; i<btn.length; i++){
    btn[i].addEventListener('click',countForColor);
}

function init(){
    countForColor();
};

init();

//모달 부분

//const openButton = document.getElementById("open");
const modal = document.querySelector(".modal");
const overlay = modal.querySelector(".md_overlay");
const closeButton = modal.querySelector("button");

function openModal(){
    modal.classList.remove("hidden");
}
function closeModal(){
    modal.classList.add("hidden");
}
btn1.addEventListener("click",openModal);
btn2.addEventListener("click",openModal);
btn3.addEventListener("click",openModal);
closeButton.addEventListener("click",closeModal);
overlay.addEventListener("click",closeModal);



