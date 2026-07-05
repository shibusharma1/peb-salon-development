// =====================================
// DOM ELEMENT REFERENCES
// =====================================
const galleryButtons = document.querySelectorAll(".gallery-open");
const galleryItems = document.querySelectorAll(".gallery-item");
const filterButtons = document.querySelectorAll(".gallery-filter");

const lightbox = document.getElementById("lightbox");
const lightboxImage = document.getElementById("lightboxImage");
const backdrop = document.getElementById("lightboxBackdrop");
const counter = document.getElementById("imageCounter");
const closeBtn = document.getElementById("closeLightbox");
const nextBtn = document.getElementById("nextImage");
const prevBtn = document.getElementById("prevImage");
const thumbnailContainer = document.getElementById("thumbnailContainer");

// =====================================
// STATE VARIABLES
// =====================================
let galleryImages = [];
let currentIndex = 0;
let startX = 0;
let endX = 0;

// =====================================
// INTERSECTION OBSERVER (ANIMATION)
// =====================================
const observer = new IntersectionObserver(
  (entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add("show");
      }
    });
  },
  {
    threshold: 0.15,
  },
);

document.querySelectorAll(".gallery-item").forEach((item) => {
  observer.observe(item);
});

// =====================================
// GALLERY HELPERS
// =====================================
function updateGalleryImages() {
  galleryImages = [
    ...document.querySelectorAll(
      '.gallery-item:not([style*="display: none"]) .gallery-image',
    ),
  ];
}

function renderThumbnails() {
  thumbnailContainer.innerHTML = "";

  galleryImages.forEach((image, index) => {
    const thumb = document.createElement("div");
    thumb.className = "gallery-thumb";

    thumb.innerHTML = `<img src="${image.src}" alt="">`;

    thumb.onclick = () => {
      currentIndex = index;
      showImage();
    };

    thumbnailContainer.appendChild(thumb);
  });
}

function preload(index) {
  const img = new Image();
  img.src = galleryImages[index].src;
}

// =====================================
// LIGHTBOX FUNCTIONS
// =====================================
function showImage() {
  lightbox.classList.add("show");
  document.body.classList.add("lightbox-open");

  setTimeout(() => {
    backdrop.classList.add("show");
    lightboxImage.classList.add("show");
  }, 20);

  counter.innerHTML = parseInt(currentIndex) + 1 + " / " + galleryImages.length;

  document.querySelectorAll(".gallery-thumb").forEach((thumb, index) => {
    thumb.classList.remove("active");

    if (index == currentIndex) {
      thumb.classList.add("active");
      thumb.scrollIntoView({
        inline: "center",
        behavior: "smooth",
      });
    }
  });

  lightboxImage.classList.remove("show");

  setTimeout(() => {
    lightboxImage.src = galleryImages[currentIndex].src;
    lightboxImage.classList.add("show");
  }, 80);

  let next = currentIndex + 1;
  let prev = currentIndex - 1;

  if (next >= galleryImages.length) next = 0;
  if (prev < 0) prev = galleryImages.length - 1;

  preload(next);
  preload(prev);
}

function closeGallery() {
  backdrop.classList.remove("show");
  lightboxImage.classList.remove("show");

  setTimeout(() => {
    lightbox.classList.remove("show");
    document.body.classList.remove("lightbox-open");
  }, 300);
}

// =====================================
// INITIALIZATION
// =====================================
updateGalleryImages();
renderThumbnails();

document.querySelectorAll(".gallery-card").forEach((card, index) => {
  card.addEventListener("click", () => {
    currentIndex = index;
    showImage();
  });
});

galleryButtons.forEach((button, index) => {
  button.addEventListener("click", () => {
    currentIndex = index;
    showImage();
  });

  counter.classList.add("counter-animation");

  setTimeout(() => {
    counter.classList.remove("counter-animation");
  }, 250);
});

// =====================================
// BUTTON EVENTS
// =====================================
closeBtn.onclick = closeGallery;
backdrop.onclick = closeGallery;

nextBtn.onclick = () => {
  currentIndex++;
  if (currentIndex >= galleryImages.length) currentIndex = 0;
  showImage();
};

prevBtn.onclick = () => {
  currentIndex--;
  if (currentIndex < 0) currentIndex = galleryImages.length - 1;
  showImage();
};

// =====================================
// KEYBOARD EVENTS
// =====================================
document.addEventListener("keydown", (e) => {
  if (!lightbox.classList.contains("show")) return;

  if (e.key === "ArrowRight") nextBtn.click();
  if (e.key === "ArrowLeft") prevBtn.click();
});

document.addEventListener("keydown", (e) => {
  if (e.key === "Escape") {
    if (lightboxImage.classList.contains("zoomed")) {
      lightboxImage.classList.remove("zoomed");
    } else {
      closeGallery();
    }
  }
});

// =====================================
// TOUCH SWIPE SUPPORT
// =====================================
lightbox.addEventListener("touchstart", (e) => {
  startX = e.touches[0].clientX;
});

lightbox.addEventListener("touchmove", (e) => {
  endX = e.touches[0].clientX;
});

lightbox.addEventListener("touchend", () => {
  if (startX - endX > 70) nextBtn.click();
  if (endX - startX > 70) prevBtn.click();
});

// =====================================
// FILTERING
// =====================================
filterButtons.forEach((button) => {
  button.onclick = () => {
    filterButtons.forEach((btn) => btn.classList.remove("active-filter"));
    button.classList.add("active-filter");

    const category = button.dataset.filter;

    galleryItems.forEach((item) => {
      item.style.opacity = 0;
      item.style.transform = "scale(.9)";

      setTimeout(() => {
        if (category === "all") {
          item.style.display = "block";
        } else {
          item.style.display =
            item.dataset.category === category ? "block" : "none";
        }

        requestAnimationFrame(() => {
          item.style.opacity = 1;
          item.style.transform = "scale(1)";

          updateGalleryImages();
          renderThumbnails();
        });
      }, 200);
    });
  };
});

// =====================================
// IMAGE LOADING
// =====================================
document.querySelectorAll(".gallery-image").forEach((img) => {
  img.closest(".gallery-card").classList.add("loading");

  img.onload = () => {
    img.closest(".gallery-card").classList.remove("loading");
  };
});

// =====================================
// ZOOM FEATURES
// =====================================
lightboxImage.addEventListener("dblclick", () => {
  lightboxImage.classList.toggle("zoomed");
});

lightboxImage.addEventListener("wheel", (e) => {
  e.preventDefault();

  if (e.deltaY < 0) {
    lightboxImage.classList.add("zoomed");
  } else {
    lightboxImage.classList.remove("zoomed");
  }
});

// =====================================
// STAGGER ANIMATION
// =====================================
document.querySelectorAll(".gallery-item").forEach((item, index) => {
  item.style.transitionDelay = index * 70 + "ms";
});
