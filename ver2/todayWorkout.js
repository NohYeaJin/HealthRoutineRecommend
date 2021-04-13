//const btn1 = document.getElementById('btn1');
//const btn2 = document.getElementById('btn2');
//const btn3 = document.getElementById('btn3');
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