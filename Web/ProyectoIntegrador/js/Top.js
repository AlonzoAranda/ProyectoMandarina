// ===== Scroll to Top ==== 
$(window).scroll(function () {
    if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
        $('#back-to-top').fadeIn(200);    // Fade in the arrow
    } else {
        $('#back-to-top').fadeOut(200);   // Else fade out the arrow
    }
});
$('#back-to-top').click(function () {      // When arrow is clicked
    $('body,html').animate({
        scrollTop: 0                       // Scroll to top of body
    }, 500);
});