const featuredSwiper = new Swiper(".featuredSwiper", {
  loop: true,

  speed: 1200,

  effect: "fade",
  fadeEffect: {
    crossFade: true,
  },

  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },

  grabCursor: true,

  autoplay: {
    delay: 5000,
    disableOnInteraction: false,
    pauseOnMouseEnter: true,
  },

  navigation: {
    nextEl: ".featured-next",
    prevEl: ".featured-prev",
  },
});
