// Client area functions
function getRandomInt(min, max) {
    const minCeiled = Math.ceil(min);
    const maxFloored = Math.floor(max);
    return Math.floor(Math.random() * (maxFloored - minCeiled) + minCeiled); 
}   
const profileImageNum = getRandomInt(1, 6)
const profileImagePath = document.querySelector('.client-avatar')
profileImagePath.style.backgroundImage = "url('templates/lagom2/assets/img/profile-images/avatar" + profileImageNum + ".png')";
