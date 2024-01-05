const title = document.querySelector('.title-country');
const tooltip = document.querySelector('.tooltip');
const tooltipImg = document.querySelector('.flag-country');
const countries = document.querySelectorAll('.country');
let currentDroppable = null;

countries.forEach(country =>{
    country.addEventListener('mousemove', function(e){
      let shiftX = e.clientX - tooltip.getBoundingClientRect().left;
      let shiftY = e.clientY - tooltip.getBoundingClientRect().top;
        
      tooltip.hidden = true;
      let elemBelow = document.elementFromPoint(e.clientX, event.clientY);
      tooltip.hidden = false;

      if (!elemBelow) return;

      title.innerText = this.dataset.title;
      tooltip.style.top = e.pageY - shiftY + 'px';
      tooltip.style.left = e.pageX - shiftX + 'px';
      tooltipImg.src=this.dataset.flag;


    });

    country.addEventListener('mouseenter', function(){
        tooltip.style.display = "block";
    });

    country.addEventListener('mouseleave', function(){
        tooltip.style.display = "none";
    });
})
//clienX clientY? learn js - drag and drop


// tooltip.mousemove = function(event) { 
//     // переместим в body, чтобы мяч был точно не внутри position:relative
//     document.body.append(tooltip);
//     // и установим абсолютно спозиционированный мяч под курсор
  
//     moveAt(event.pageX, event.pageY);

//     function moveAt(pageX, pageY) {
//       tooltip.style.left = pageX - tooltip.offsetWidth / 2 + 'px';
//       tooltip.style.top = pageY - tooltip.offsetHeight  + 'px';
//     }
  
//     function onMouseMove(event) {
//       moveAt(event.pageX, event.pageY);
//     }
  
//     // (3) перемещать по экрану
//     document.addEventListener('mousemove', onMouseMove);
  
//     // (4) положить мяч, удалить более ненужные обработчики событий
//     tooltip.onmouseup = function() {
//       document.removeEventListener('mousemove', onMouseMove);
//       tooltip.onmouseup = null;
//     };
  
//   };


//   const title = document.querySelector('.title-country');
//   const tooltip = document.querySelector('.tooltip');
//  const tooltipImg = document.querySelector('.flag-country');
//  const countries = document.querySelectorAll('.country');
 
//  countries.forEach(country =>{
//      country.addEventListener('mousemove', function(e){
//          title.innerText = this.dataset.title;
//          tooltip.style.left = e.pageX  + 'px';
//          tooltip.style.top = e.pageY  + 'px';
//          tooltipImg.src=this.dataset.flag;
//      });
 
//      country.addEventListener('mouseenter', function(){
//          tooltip.style.display = "block";
//      });
 
//      country.addEventListener('mouseleave', function(){
//          tooltip.style.display = "none";
//      });
//  })
 //clienX clientY? learn js - drag and drop
 
 
 // countries.mousemove = function(event) { 
 //     // переместим в body, чтобы мяч был точно не внутри position:relative
 //     document.body.append(tooltip);
 //     // и установим абсолютно спозиционированный мяч под курсор
 //     tooltip.style.display = "block";
 //     moveAt(event.pageX, event.pageY);
 
 //     function moveAt(pageX, pageY) {
 //       tooltip.style.left = pageX - tooltip.offsetWidth / 2 + 'px';
 //       tooltip.style.top = pageY - tooltip.offsetHeight  + 'px';
 //     }
   
 //     function onMouseMove(event) {
 //       moveAt(event.pageX, event.pageY);
 //     }
   
 //     // (3) перемещать по экрану
 //     document.addEventListener('mousemove', onMouseMove);
   
 //     // (4) положить мяч, удалить более ненужные обработчики событий
 //     tooltip.onmouseup = function() {
 //       document.removeEventListener('mousemove', onMouseMove);
 //       tooltip.onmouseup = null;
 //     };
   
 //   };

 // header
 $(function() {
    let header = $('.app-nav-menu');
     
    $(window).scroll(function() {
      if($(this).scrollTop() > 1) {
       header.addClass('header_fixed');
      } else {
       header.removeClass('header_fixed');
      }
    });
   });

//slider
const sliderCustom = document.querySelector('.slider-custom');
const progress = document.querySelector('.slider-progress');

let isDragging = false;
let startPosition = 0;
let currentTranslate = 0;
let prevTranslate = 0;
let animationID = 0;

sliderCustom.addEventListener('mousedown', startDragging);
sliderCustom.addEventListener('touchstart', startDragging);
sliderCustom.addEventListener('mouseup', stopDragging);
sliderCustom.addEventListener('touchend', stopDragging);
sliderCustom.addEventListener('mouseleave', stopDragging);
sliderCustom.addEventListener('mousemove', drag);
sliderCustom.addEventListener('touchmove', drag);

function startDragging(e) {
  e.preventDefault();

  if (e.type === 'touchstart') {
    startPosition = e.touches[0].clientX;
  } else {
    startPosition = e.clientX;
    sliderCustom.style.cursor = 'grabbing';
  }

  isDragging = true;
  animationID = requestAnimationFrame(animation);
}

function drag(e) {
  if (isDragging) {
    let currentPosition = 0;

    if (e.type === 'touchmove') {
      currentPosition = e.touches[0].clientX;
    } else {
      currentPosition = e.clientX;
    }

    currentTranslate = prevTranslate + currentPosition - startPosition;

    // Ограничиваем перемещение слайдов в пределах первого и последнего слайда
    const slideWidth = sliderCustom.clientWidth / 5;
    const maxTranslate = slideWidth * 2;
    const minTranslate = -slideWidth * 2;

    if (currentTranslate > maxTranslate) {
      currentTranslate = maxTranslate;
    } else if (currentTranslate < minTranslate) {
      currentTranslate = minTranslate;
    }
    if(currentTranslate>0){
        currentTranslate=0;
    }
  }
}

function stopDragging() {
  cancelAnimationFrame(animationID);
  isDragging = false;
  const slideWidth = sliderCustom.clientWidth / 5;
  const slideIndex = Math.round(currentTranslate / slideWidth);

  currentTranslate = slideIndex * slideWidth;
  prevTranslate = currentTranslate;

  sliderCustom.style.transform = `translateX(${currentTranslate}px)`;
  sliderCustom.style.cursor = 'grab';
}

function animation() {
  sliderCustom.style.transform = `translateX(${currentTranslate}px)`;

  if (isDragging) {
    requestAnimationFrame(animation);
  }
}

//buttons
