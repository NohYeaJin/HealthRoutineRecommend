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


/* 클릭시 색상 변경 */
const btns = document.querySelectorAll('#select');
const changeColor = "#82cfbf";


function clickMenuHandler() {  

  for (var i = 0; i < btns.length; i++){
    
    if(btns[i].style.backgroundColor === ""){
      this.style.backgroundColor = changeColor;
      console.log('색상 변경');
    }
    
    //선택된거 다시 해제하는 기능?
    else{
      //this.style.backgroundColor= baseColor;
      console.log('색상 다시 원위치');
    }
  }
}


for (var i = 0; i < btns.length; i++){
  btns[i].addEventListener('click', clickMenuHandler);
}


/* 페이지 넘기기(submit하고 오늘의 운동 안내 페이지로 넘기기) */

const finishAndSubmit = document.getElementById("finishBtn");

function movePage(){
  window.location.href="todayWorkout.html";
}

finishAndSubmit.addEventListener('click',movePage);

