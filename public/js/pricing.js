const sections = document.querySelectorAll("section[id]");
const navLinks = document.querySelectorAll(".price-nav");

window.addEventListener("scroll", () => {
  let current = "";

  sections.forEach((section) => {
    const sectionTop = section.offsetTop - 250;
    const sectionHeight = section.offsetHeight;

    if (
      window.scrollY >= sectionTop &&
      window.scrollY < sectionTop + sectionHeight
    ) {
      current = section.getAttribute("id");
    }
  });

  navLinks.forEach((link) => {
    link.classList.remove("active-price-nav");

    if (link.getAttribute("href") === "#" + current) {
      link.classList.add("active-price-nav");
    }
  });
});
