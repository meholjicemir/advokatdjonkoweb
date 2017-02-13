$(document).ready(function () {
    $("#lightSlider").lightSlider({
        item: 1,
        autoWidth: false,
        slideMove: 1, // slidemove will be 1 if loop is true
        slideMargin: 10,

        addClass: '',
        mode: "slide",
        useCSS: true,
        cssEasing: 'ease', //'cubic-bezier(0.25, 0, 0.25, 1)',//
        easing: 'linear', //'for jquery animation',////

        speed: 2000, //ms'
        auto: true,
        loop: true,
        slideEndAnimation: true,
        pause: 5000,

        keyPress: false,
        controls: false,
        prevHtml: '',
        nextHtml: '',

        rtl: false,
        adaptiveHeight: true,

        vertical: false,
        vThumbWidth: 100,

        thumbItem: 10,
        pager: true,
        gallery: false,
        galleryMargin: 5,
        thumbMargin: ($(window).width() - 1000) / 2,
        currentPagerPosition: 'middle',

        enableTouch: true,
        enableDrag: true,
        freeMove: false,
        swipeThreshold: 40,

        responsive: []
    });

    $(".img-fit").attr("width", $(window).width());
    $(".img-fit").attr("height", $(window).height() - 100);

    $(".single-screen").css("min-height", $(window).height());
});

function ScrollToDiv(divId) {
    $('html,body').animate({
        scrollTop: $("#" + divId).offset().top
    }, 'slow');
}