const title = document.querySelector('.title-country');
const tooltip = document.querySelector('.tooltip');
const tooltipImg = document.querySelector('.flag-country');
const countries = document.querySelectorAll('.country');

countries.forEach(country =>{
    country.addEventListener('mousemove', function(e){
        title.innerText = this.dataset.title;
        tooltip.style.top = (e.clientY - 180) + 'px';
        tooltip.style.left = (e.clientX - 100) + 'px';
        tooltipImg.src=this.dataset.flag;
    });

    country.addEventListener('mouseenter', function(){
        tooltip.style.display = "block";
    });

    country.addEventListener('mouseleave', function(){
        tooltip.style.display = "none";
    });
})//clienX clientY? learn js - drag and drop