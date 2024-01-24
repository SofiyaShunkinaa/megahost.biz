const screenWidth = window.screen.width;
console.log(screenWidth);
const title = document.querySelector('.title-country');
const tooltip = document.querySelector('.tooltip');
const tooltipImg = document.querySelector('.flag-country');
const countries = document.querySelectorAll('.country');
const bigArea1 = document.querySelector('.big-area-uae');
const smArea1 = document.querySelector('.cntry-uae');
const bigArea2 = document.querySelector('.big-area-singapore');
const smArea2 = document.querySelector('.cntry-singapore');

countries.push(bigArea1);
countries.push(bigArea2);

countries.forEach(country =>{
    country.addEventListener('mousemove', function(e){
      
      title.innerText = this.dataset.title;
      tooltip.style.top = (e.pageY - 3220) + 'px';
      tooltip.style.left = (e.pageX - 40) + 'px';
      tooltipImg.src=this.dataset.flag;

    });

    country.addEventListener('mouseenter', function(){
        tooltip.style.display = "block";
    });

    country.addEventListener('mouseleave', function(){
        tooltip.style.display = "none";
    });
})

bigArea1.addEventListener('mousemove', function(){
  smArea1.addClass('sm-country--hover')
})

bigArea2.addEventListener('mousemove', function(){
  smArea2.addClass('sm-country--hover')
})

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
// const sliderCustom = document.querySelector('.slider-custom');
// const progress = document.querySelector('.slider-progress');

// let isDragging = false;
// let startPosition = 0;
// let currentTranslate = 0;
// let prevTranslate = 0;
// let animationID = 0;

// sliderCustom.addEventListener('mousedown', startDragging);
// sliderCustom.addEventListener('touchstart', startDragging);
// sliderCustom.addEventListener('mouseup', stopDragging);
// sliderCustom.addEventListener('touchend', stopDragging);
// sliderCustom.addEventListener('mouseleave', stopDragging);
// sliderCustom.addEventListener('mousemove', drag);
// sliderCustom.addEventListener('touchmove', drag);

// function startDragging(e) {
//   e.preventDefault();

//   if (e.type === 'touchstart') {
//     startPosition = e.touches[0].clientX;
//   } else {
//     startPosition = e.clientX;
//     sliderCustom.style.cursor = 'grabbing';
//   }

//   isDragging = true;
//   animationID = requestAnimationFrame(animation);
// }

// function drag(e) {
//   if (isDragging) {
//     let currentPosition = 0;

//     if (e.type === 'touchmove') {
//       currentPosition = e.touches[0].clientX;
//     } else {
//       currentPosition = e.clientX;
//     }

//     currentTranslate = prevTranslate + currentPosition - startPosition;

//     const slideWidth = sliderCustom.clientWidth / 5;
//     const maxTranslate = slideWidth * 2;
//     const minTranslate = -slideWidth * 2;

//     if (currentTranslate > maxTranslate) {
//       currentTranslate = maxTranslate;
//     } else if (currentTranslate < minTranslate) {
//       currentTranslate = minTranslate;
//     }
//     if(currentTranslate>0){
//         currentTranslate=0;
//     }
//   }
// }

// function stopDragging() {
//   cancelAnimationFrame(animationID);
//   isDragging = false;
//   const slideWidth = sliderCustom.clientWidth / 5;
//   const slideIndex = Math.round(currentTranslate / slideWidth);

//   currentTranslate = slideIndex * slideWidth;
//   prevTranslate = currentTranslate;

//   sliderCustom.style.transform = `translateX(${currentTranslate}px)`;
//   sliderCustom.style.cursor = 'grab';
// }

// function animation() {
//   sliderCustom.style.transform = `translateX(${currentTranslate}px)`;

//   if (isDragging) {
//     requestAnimationFrame(animation);
//   }
// }

if (screenWidth<1440){
  const sliderCustom = document.querySelector('.slider-custom');
  const progress = document.querySelector('.slider-progress');
  const secondaryFooterLogo = document.querySelector('.footer-nav-h');

  let isDragging = false;
  let startPosition = 0;
  let currentTranslate = 0;
  let prevTranslate = 0;
  let animationID = 0;

  sliderCustom.addEventListener('mousedown', startDragging);
  sliderCustom.addEventListener('touchstart', startDragging, { passive: true });
  sliderCustom.addEventListener('mouseup', stopDragging);
  sliderCustom.addEventListener('touchend', stopDragging);
  sliderCustom.addEventListener('mouseleave', stopDragging);
  sliderCustom.addEventListener('mousemove', drag);
  sliderCustom.addEventListener('touchmove', drag, { passive: true });

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

      const slideWidth = sliderCustom.clientWidth / 5;
      const maxTranslate = slideWidth * 2;
      const minTranslate = -slideWidth * 2;

      if (currentTranslate > maxTranslate) {
        currentTranslate = maxTranslate;
      } else if (currentTranslate < minTranslate) {
        currentTranslate = minTranslate;
      }

      if (currentTranslate > 0) {
        currentTranslate = 0;
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
}


//buttons
if(window.location.pathname === "/index.php"){
  document.addEventListener('DOMContentLoaded', function() {
    const buttons = document.querySelectorAll('.switcher__item');
    const currentPage = '';

    buttons.forEach(button => {
        const key = button.getAttribute('data-key');
        var buttonLink = '';

        switch(key){
          case "usd":
            buttonLink = '/index.php?currency=1';
            break;
          case "rub":
            buttonLink = '/index.php?currency=2';
            break;
          case "eur":
            buttonLink = '/index.php?currency=3';
            break;
          
        }
        
        button.addEventListener('click', function() {
            window.location.href = buttonLink;
        });
        
        if (buttonLink === currentPage) {
            button.classList.add('active-button'); 
        }
    });
  });
}