// tooltip 
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
      
        let Y = (e.pageY - 3220)
        let X = (e.pageX - 40)


        
      title.classList.add(this.dataset.title);
      tooltip.style.top = Y + 'px';
      tooltip.style.left = X + 'px';
      tooltipImg.src=this.dataset.flag;

    });

    country.addEventListener('mouseenter', function(){
        tooltip.style.opacity = 1;
    });

    country.addEventListener('mouseleave', function(){
        tooltip.style.opacity = 0;
        title.classList.remove(this.dataset.title)
    });
})


// slider
let swiper;

function initializeSwiper() {
    const screenWidth = window.innerWidth;

    if (screenWidth >= 1440) {
        swiper = new Swiper('.swiper', {
            direction: 'horizontal',
            loop: false,
            slidesPerView: 4,
            scrollbar: {
                hide: true
            }
        });
    } else if (screenWidth >= 1024) {
        swiper = new Swiper('.swiper', {
            direction: 'horizontal', 
            loop: false,
            slidesPerView: 3,
            navigation: {
                nextEl: '.swiper-button-next', 
                prevEl: '.swiper-button-prev', 
            },
            scrollbar: {
                el: '.swiper-scrollbar', 
                draggable: true, 
            },
        });
    } else if (screenWidth >= 768) {
        swiper = new Swiper('.swiper', {
            direction: 'horizontal', 
            loop: false,
            slidesPerView: 2,
            navigation: {
                nextEl: '.swiper-button-next', 
                prevEl: '.swiper-button-prev', 
            },
            scrollbar: {
                el: '.swiper-scrollbar', 
                draggable: true, 
            },
        }); 
    } else {
        swiper = new Swiper('.swiper', {
            direction: 'horizontal', 
            loop: false,
            slidesPerView: 1,
            navigation: {
                nextEl: '.swiper-button-next', 
                prevEl: '.swiper-button-prev', 
            },
            scrollbar: {
                el: '.swiper-scrollbar', 
                draggable: true, 
            },
        });
    }
}

initializeSwiper();

function handleScreenSize(event) {
    if (swiper) {
        const screenWidth = window.innerWidth;
        if (screenWidth >= 1440) {
            swiper.params.slidesPerView = 4;
        } else if (screenWidth >= 1024) {
            swiper.params.slidesPerView = 3;
        } else if (screenWidth >= 768) {
            swiper.params.slidesPerView = 2;
        } else {
            swiper.params.slidesPerView = 1;
        }
        swiper.update();
    }
}

window.addEventListener('resize', handleScreenSize);
  