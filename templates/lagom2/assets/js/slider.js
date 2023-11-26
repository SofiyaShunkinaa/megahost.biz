const slider = document.querySelector('.slider');
const prevSlide = document.querySelector('.prev-slide');
const nextSlide = document.querySelector('.next-slide');
const pagination = document.querySelector('.pagination');

let slideIndex = 0;

function showSlides() {
    let count = -(slideIndex * 33.33)+"%";
    console.log(count);
    slider.style.transform.translateX =count;
  }

function updatePagination() {
  const buttons = pagination.querySelectorAll('button');
  buttons.forEach((button, index) => {
    if (index === slideIndex) {
      button.classList.add('active');
    } else {
      button.classList.remove('active');
    }
  });
}

prevSlide.addEventListener('click', () => {
  if (slideIndex > 0) {
    slideIndex--;
    showSlides();
    updatePagination();
  }
});

nextSlide.addEventListener('click', () => {
  if (slideIndex < 5) {
    slideIndex++;
    showSlides();
    updatePagination();
  }
});

for (let i = 0; i < 6; i++) {
  const button = document.createElement('button');
  button.addEventListener('click', () => {
    slideIndex = i;
    showSlides();
    updatePagination();
  });
  pagination.appendChild(button);
}

showSlides();
updatePagination();
