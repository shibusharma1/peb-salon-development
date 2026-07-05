const sections = document.querySelectorAll("section[id]");
const navLinks = document.querySelectorAll(".terms-nav");

const observer = new IntersectionObserver(
  (entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        navLinks.forEach((link) => {
          link.classList.remove("active-terms-nav");

          if (link.getAttribute("href") === "#" + entry.target.id) {
            link.classList.add("active-terms-nav");
          }
        });
      }
    });
  },
  {
    threshold: 0.3,
  },
);

sections.forEach((section) => observer.observe(section));
