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

