 const title = document.querySelector('.title-country');
 const tooltip = document.querySelector('.tooltip');
const tooltipImg = document.querySelector('.flag-country');
const countries = document.querySelectorAll('.country');

countries.forEach(country =>{
    country.addEventListener('mousemove', function(e){
        title.innerText = this.dataset.title;
        tooltip.style.top = e.pageX + 'px';
        tooltip.style.left = e.pageY + 'px';
        tooltipImg.src=this.dataset.flag;
    });

    country.addEventListener('mouseenter', function(){
        tooltip.style.display = "block";
    });

    country.addEventListener('mouseleave', function(){
        tooltip.style.display = "none";
    });
})
//clienX clientY? learn js - drag and drop


// tooltip.mousemove = function(event) { 
//     // переместим в body, чтобы мяч был точно не внутри position:relative
//     document.body.append(tooltip);
//     // и установим абсолютно спозиционированный мяч под курсор
  
//     moveAt(event.pageX, event.pageY);

//     function moveAt(pageX, pageY) {
//       tooltip.style.left = pageX - tooltip.offsetWidth / 2 + 'px';
//       tooltip.style.top = pageY - tooltip.offsetHeight  + 'px';
//     }
  
//     function onMouseMove(event) {
//       moveAt(event.pageX, event.pageY);
//     }
  
//     // (3) перемещать по экрану
//     document.addEventListener('mousemove', onMouseMove);
  
//     // (4) положить мяч, удалить более ненужные обработчики событий
//     tooltip.onmouseup = function() {
//       document.removeEventListener('mousemove', onMouseMove);
//       tooltip.onmouseup = null;
//     };
  
//   };


//   const title = document.querySelector('.title-country');
//   const tooltip = document.querySelector('.tooltip');
//  const tooltipImg = document.querySelector('.flag-country');
//  const countries = document.querySelectorAll('.country');
 
//  countries.forEach(country =>{
//      country.addEventListener('mousemove', function(e){
//          title.innerText = this.dataset.title;
//          tooltip.style.left = e.pageX  + 'px';
//          tooltip.style.top = e.pageY  + 'px';
//          tooltipImg.src=this.dataset.flag;
//      });
 
//      country.addEventListener('mouseenter', function(){
//          tooltip.style.display = "block";
//      });
 
//      country.addEventListener('mouseleave', function(){
//          tooltip.style.display = "none";
//      });
//  })
 //clienX clientY? learn js - drag and drop
 
 
 // countries.mousemove = function(event) { 
 //     // переместим в body, чтобы мяч был точно не внутри position:relative
 //     document.body.append(tooltip);
 //     // и установим абсолютно спозиционированный мяч под курсор
 //     tooltip.style.display = "block";
 //     moveAt(event.pageX, event.pageY);
 
 //     function moveAt(pageX, pageY) {
 //       tooltip.style.left = pageX - tooltip.offsetWidth / 2 + 'px';
 //       tooltip.style.top = pageY - tooltip.offsetHeight  + 'px';
 //     }
   
 //     function onMouseMove(event) {
 //       moveAt(event.pageX, event.pageY);
 //     }
   
 //     // (3) перемещать по экрану
 //     document.addEventListener('mousemove', onMouseMove);
   
 //     // (4) положить мяч, удалить более ненужные обработчики событий
 //     tooltip.onmouseup = function() {
 //       document.removeEventListener('mousemove', onMouseMove);
 //       tooltip.onmouseup = null;
 //     };
   
 //   };

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