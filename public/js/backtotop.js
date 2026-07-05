const backToTop = document.getElementById("backToTop");

window.addEventListener("scroll", () => {
  if (window.scrollY > 500) {
    backToTop.classList.add("show");
  } else {
    backToTop.classList.remove("show");
  }
});

backToTop.addEventListener("click", () => {
  const start = window.pageYOffset;

  const slowTarget = start * 0.75;

  /* Phase 1 - Slow Luxury Motion */
  window.scrollTo({
    top: slowTarget,
    behavior: "smooth",
  });

  /* Phase 2 - Fast Return */
  setTimeout(() => {
    window.scrollTo({
      top: 0,
      behavior: "smooth",
    });
  }, 500);
});
