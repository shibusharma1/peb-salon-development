document.addEventListener('DOMContentLoaded', () => {

    const menuBtn = document.getElementById('mobileMenuBtn');
    const mobileMenu = document.getElementById('mobileMenu');
    const mobileDrawer = document.getElementById('mobileDrawer');
    const closeMenu = document.getElementById('closeMenu');

    if (!menuBtn || !mobileMenu || !mobileDrawer || !closeMenu) {
        console.error('Mobile menu elements not found');
        return;
    }

    menuBtn.addEventListener('click', () => {
        mobileMenu.classList.remove('hidden');
        setTimeout(() => {
            mobileDrawer.classList.remove('translate-x-full');
        }, 10);
    });

    closeMenu.addEventListener('click', closeDrawer);

    mobileMenu.addEventListener('click', (e) => {
        if (e.target === mobileMenu) {
            closeDrawer();
        }
    });

    function closeDrawer() {
        mobileDrawer.classList.add('translate-x-full');
        setTimeout(() => {
            mobileMenu.classList.add('hidden');
        }, 300);
    }

});