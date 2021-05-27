var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("questionSlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}


/* Ŭ���� ���� ���� */
const btns = document.querySelectorAll('#select');
const changeColor = "#82cfbf";


function clickMenuHandler() {  

  if(this.style.backgroundColor === ""){
    this.style.backgroundColor = changeColor;
    console.log('���� ����');
  }
  else{
    this.style.backgroundColor = "";
    console.log('���� ����ġ');
  }
}


for (var i = 0; i < btns.length; i++){
  btns[i].addEventListener('click', clickMenuHandler);
}


var btn = document.querySelector('input');
var formtxt = document.querySelector('form');

function inputvalue(namevalue,realvalue) {
  var newdiv = document.createElement("input");
  newdiv.type = "hidden"
  newdiv.name=namevalue;
  newdiv.value = realvalue;
  formtxt.append(newdiv);
}
/* ������ �ѱ��(submit�ϰ� ������ � �ȳ� �������� �ѱ��) */

/*const finishAndSubmit = document.getElementById("finishBtn");

function movePage(){
  window.location.href="/todayWorkout";
}

finishAndSubmit.addEventListener('click',movePage);*/