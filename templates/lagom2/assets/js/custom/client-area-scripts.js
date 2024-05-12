
// function getRandomInt(min, max) {
//     const minCeiled = Math.ceil(min);
//     const maxFloored = Math.floor(max);
//     return Math.floor(Math.random() * (maxFloored - minCeiled) + minCeiled); 
// }   

// const profileImageNum = getRandomInt(1, 6)
// const profileImagePath = document.querySelector('.panel-image')
// if (profileImagePath){
//     profileImagePath.style.background = "url('templates/lagom2/assets/img/profile-images/avatar" + profileImageNum + ".png')";
// }
// else{
//     console.log("none")
// }

var avatarImg = document.querySelector('img[alt="Avatar"]');
var panelImg = document.querySelector('img[alt="Avatar-panel"]');

if (avatarImg && panelImg) {
    var src = avatarImg.getAttribute('src');
    panelImg.setAttribute('src', src);
}
  
  // switching themes
if (window.innerWidth < 1200) {
    document.body.classList.remove('dark-theme');
}

document.addEventListener("DOMContentLoaded", function() {
    const currentTheme = localStorage.getItem("theme");
    if (currentTheme) {
        document.body.classList.add(currentTheme+'-theme');
    }
});

function switchTheme(theme) {
    document.body.classList.toggle("dark-theme", theme === "dark");

    localStorage.setItem("theme", theme);
}
  