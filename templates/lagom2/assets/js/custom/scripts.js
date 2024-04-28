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
  

// header scrolling
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
   
const bodyElement = document.body;
const liElement = document.getElementById('Primary_Navbar-LOGO-sm');
const buttonElement = document.createElement('button');
buttonElement.className = 'app-nav-toggle navbar-toggle';
buttonElement.type = 'button';

for (var i = 0; i < 4; i++) {
    var spanElement = document.createElement('span');
    spanElement.className = 'icon-bar';
    buttonElement.appendChild(spanElement);
}

liElement.appendChild(buttonElement);


// header adding switchers
var liElementMenu = document.querySelector('li.sidebar-menu-switchers');
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

liElementMenu.innerHTML = tplContent;
