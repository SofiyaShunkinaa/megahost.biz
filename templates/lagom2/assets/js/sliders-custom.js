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