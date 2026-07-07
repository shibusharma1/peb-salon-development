const element = document.getElementById("heroText");

const text = element.dataset.text; // get text from span
let index = 0;

function typeText() {
    if (index < text.length) {
        element.textContent += text.charAt(index);
        index++;
        setTimeout(typeText, 100);
    } else {
        setTimeout(() => {
            element.textContent = "";
            index = 0;
            typeText();
        }, 2000);
    }
}

typeText();
