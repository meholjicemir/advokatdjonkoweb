$(document).ready(function () {


    $(".single-screen").css("height", $(window).height());
});

function ScrollToDiv(divId) {
    $('html,body').animate({
        scrollTop: $("#" + divId).offset().top
    }, 'slow');
}