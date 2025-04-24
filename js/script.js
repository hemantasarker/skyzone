
// Blinking effect for notices
function blinkEffect() {
    const notices = document.querySelectorAll('.blink');
    notices.forEach(notice => {
        notice.style.visibility = (notice.style.visibility === 'hidden') ? 'visible' : 'hidden';
    });
}
setInterval(blinkEffect, 1000);
        