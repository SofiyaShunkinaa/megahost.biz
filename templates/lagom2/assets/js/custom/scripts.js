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

function getRandomInt(min, max) {
  const minCeiled = Math.ceil(min);
  const maxFloored = Math.floor(max);
  return Math.floor(Math.random() * (maxFloored - minCeiled) + minCeiled); 
}   
const profileImageNum = getRandomInt(1, 6)
const profileImagePath = document.querySelector('.client-avatar')
profileImagePath.style.backgroundImage = "url('templates/lagom2/assets/img/profile-images/avatar" + profileImageNum + ".png')";


// whitching themes
if (window.innerWidth < 1200) {
  document.body.classList.remove('dark-theme');
}

document.addEventListener("DOMContentLoaded", function() {
  const currentTheme = localStorage.getItem("theme");
  console.log(currentTheme)
  if (currentTheme) {
      document.body.classList.add(currentTheme+'-theme');
  }
});

function switchTheme(theme) {
  document.body.classList.toggle("dark-theme", theme === "dark");

  localStorage.setItem("theme", theme);
}