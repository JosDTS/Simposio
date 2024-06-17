/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
const carouselContainer = document.querySelector('.carousel-container');
const carousel = document.querySelector('.carousel');
const cards = document.querySelectorAll('.activity-card');
const prevButton = document.querySelector('.carousel-button.prev');
const nextButton = document.querySelector('.carousel-button.next');

let currentIndex = 0;
const cardWidth = 300;
const cardMargin = 10;
const numCards = cards.length;

function updateCarousel() {
  carousel.style.transform = `translateX(-${currentIndex * (cardWidth + cardMargin)}px)`;
}

prevButton.addEventListener('click', () => {
  currentIndex = (currentIndex - 1 + numCards) % numCards;
  updateCarousel();
});

nextButton.addEventListener('click', () => {
  currentIndex = (currentIndex + 1) % numCards;
  updateCarousel();
});

// Autoplay
let autoplayInterval;
function startAutoplay() {
  autoplayInterval = setInterval(() => {
    currentIndex = (currentIndex + 1) % numCards;
    updateCarousel();
  }, 10000);
}

carouselContainer.addEventListener('mouseenter', () => {
  clearInterval(autoplayInterval);
});

carouselContainer.addEventListener('mouseleave', () => {
  startAutoplay();
});

startAutoplay();

