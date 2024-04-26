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



  