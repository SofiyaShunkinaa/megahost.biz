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

// bigArea1.addEventListener('mouseenter', function(){
//   smArea1.classList.add('sm-country--hover')
// })

// bigArea2.addEventListener('mouseleave', function(){
//   smArea2.classList.add('sm-country--hover')
// })

// bigArea1.addEventListener('mouseenter', function(){
//   smArea1.classList.remove('sm-country--hover')
// })

// bigArea2.addEventListener('mouseleave', function(){
//   smArea2.classList.remove('sm-country--hover')
// })

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
   
var bodyElement = document.body;


  var liElement = document.getElementById('Primary_Navbar-LOGO');

  var buttonElement = document.createElement('button');
  buttonElement.className = 'app-nav-toggle navbar-toggle';
  buttonElement.type = 'button';

  for (var i = 0; i < 4; i++) {
      var spanElement = document.createElement('span');
      spanElement.className = 'icon-bar';
      buttonElement.appendChild(spanElement);
  }

  liElement.appendChild(buttonElement);


//slider

// if (screenWidth<1440){
//   const sliderCustom = document.querySelector('.slider-custom');
//   const progress = document.querySelector('.slider-progress');
//   const secondaryFooterLogo = document.querySelector('.footer-nav-h');

//   let isDragging = false;
//   let startPosition = 0;
//   let currentTranslate = 0;
//   let prevTranslate = 0;
//   let animationID = 0;

//   sliderCustom.addEventListener('mousedown', startDragging);
//   sliderCustom.addEventListener('touchstart', startDragging, { passive: true });
//   sliderCustom.addEventListener('mouseup', stopDragging);
//   sliderCustom.addEventListener('touchend', stopDragging);
//   sliderCustom.addEventListener('mouseleave', stopDragging);
//   sliderCustom.addEventListener('mousemove', drag);
//   sliderCustom.addEventListener('touchmove', drag, { passive: true });

//   function startDragging(e) {
//     if (e.type === 'touchstart') {
//       startPosition = e.touches[0].clientX - currentTranslate;
//     } else {
//       startPosition = e.clientX - currentTranslate;
//       sliderCustom.style.cursor = 'grabbing';
//     }
  
//     isDragging = true;
//     animationID = requestAnimationFrame(animation);
  
//     // Добавляем слушателей для отслеживания движения
//     document.addEventListener('mousemove', drag);
//     document.addEventListener('touchmove', drag, { passive: true });
  
//     // Добавляем слушателей для отслеживания окончания движения
//     document.addEventListener('mouseup', stopDragging);
//     document.addEventListener('touchend', stopDragging);
//     document.addEventListener('mouseleave', stopDragging);
//   }
  
 
  
  
  
//   function drag(e) {
//     if (isDragging) {
//       let currentPosition = 0;
  
//       if (e.type === 'touchmove') {
//         currentPosition = e.touches[0].clientX;
//       } else {
//         currentPosition = e.clientX;
//       }
  
//       // Обновление currentTranslate, учтя изменение startPosition
//       currentTranslate = currentPosition-startPosition;
  
//       const slideWidth = sliderCustom.clientWidth / 5;
//       const containerProducts = document.querySelector('.container-products');
//       const containerProductsPadding = parseInt(getComputedStyle(containerProducts).paddingRight);
//       const maxTranslate = 1315 - window.innerWidth + containerProductsPadding;
//       const minTranslate = -maxTranslate;
  
//       if (currentTranslate < minTranslate) {
//         currentTranslate = minTranslate;
//       }
  
//       if (currentTranslate > 0) {
//         currentTranslate = 0;
//       }
  
//       // Обновление стиля слайдера
//       sliderCustom.style.transform = `translateX(${currentTranslate}px)`;
//     }
//   }

//   function stopDragging() {
//     cancelAnimationFrame(animationID);
//     isDragging = false;
  
//     // Удаляем слушателей, так как перетаскивание завершено
//     document.removeEventListener('mousemove', drag);
//     document.removeEventListener('touchmove', drag);
//     document.removeEventListener('mouseup', stopDragging);
//     document.removeEventListener('touchend', stopDragging);
//     document.removeEventListener('mouseleave', stopDragging);
  
//     const slideWidth = sliderCustom.clientWidth / 5;
//     const slideIndex = Math.round(currentTranslate / slideWidth);
  
//     currentTranslate = slideIndex * slideWidth;
//     prevTranslate = currentTranslate;
  
//     sliderCustom.style.transform = `translateX(${currentTranslate}px)`;
//     sliderCustom.style.cursor = 'grab';
//   }

//   function animation() {
//     sliderCustom.style.transform = `translateX(${currentTranslate}px)`;

//     if (isDragging) {
//       requestAnimationFrame(animation);
//     }
//   }
// }




//buttons
var currency = 'usd';
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
            currency = key;
        }
    });
  });
}

//header-switcher: currency

document.addEventListener('DOMContentLoaded', function() {
  const currencyButtons = document.querySelectorAll('.switcher__item-currency');
  const currentPage = '';

  currencyButtons.forEach(button => {
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
      
      if (key === currency) {
          button.classList.add('active-button'); 
      }
  });
});


// Client area functions
function getRandomInt(min, max) {
    const minCeiled = Math.ceil(min);
    const maxFloored = Math.floor(max);
    return Math.floor(Math.random() * (maxFloored - minCeiled) + minCeiled); 
}
  

    
const profileImageNum = getRandomInt(1, 6)

const profileImagePath = document.querySelector('.client-avatar')
profileImagePath.style.backgroundImage = "url('templates/lagom2/assets/img/profile-images/avatar" + profileImageNum + ".png')";
   
// const clientName = $('input[name="firstname"]').val()
// console.log(clientName)

// let clientNameBlock = $('div.client-name').text(clientName)


var liElement = document.querySelector('li.main-menu-switchers');

    var tplContent = `
    <div class="switcher-wrapper">
      <div class="switcher sw-white switcher-sidebar">
        <button class="switcher__item-currency switcher__item btn btn-switcher" data-key="usd">
            USD
        </button>
        <button class="switcher__item-currency switcher__item btn btn-switcher" data-key="rub">
            RUB
        </button>
        <button class="switcher__item-currency switcher__item btn btn-switcher" data-key="eur">
            EUR
        </button>
        </div>
    </div>
    <div class="switcher-wrapper">
      <div class="switcher sw-white switcher-sidebar">
        <button class="switcher__item-languages switcher__item btn btn-switcher" data-key="ru">
            RU
        </button>
        <button class="switcher__item-languages switcher__item btn btn-switcher" data-key="eng">
            ENG
        </button>
        </div>
    </div>
    `;

    liElement.innerHTML = tplContent;

