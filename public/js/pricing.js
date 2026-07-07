const pricingsections = document.querySelectorAll("section[id]");
const pricingnavLinks = document.querySelectorAll(".price-nav");

window.addEventListener("scroll", () => {
  let current = "";

  pricingsections.forEach((section) => {
    const sectionTop = section.offsetTop - 250;
    const sectionHeight = section.offsetHeight;

    if (
      window.scrollY >= sectionTop &&
      window.scrollY < sectionTop + sectionHeight
    ) {
      current = section.getAttribute("id");
    }
  });

  pricingnavLinks.forEach((link) => {
    link.classList.remove("active-price-nav");

    if (link.getAttribute("href") === "#" + current) {
      link.classList.add("active-price-nav");
    }
  });
});
