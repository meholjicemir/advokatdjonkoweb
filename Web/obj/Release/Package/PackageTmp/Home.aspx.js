﻿$(document).ready(function () {
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
    $(".img-fit").attr("height", $(window).height());

    //$(".single-screen").css("min-height", $(window).height());
    $(".full-height").css("min-height", $(window).height());
});

function ScrollToDiv(divId) {
    $("#bs-sidebar-navbar-collapse-1").removeClass("in");

    $('html,body').animate({
        scrollTop: $("#" + divId).offset().top
    }, 'slow');
}

function ScrollToTop() {
    $('html,body').animate({
        scrollTop: 0
    }, 'slow');
}

$(document).scroll(function () {
    //if ($(document).scrollTop() > 50) {
    //    $("#imgLogoXS").hide();
    //}
    //else {
    //    $("#imgLogoXS").slideDown();
    //}

    var tempMarginTopLogo = -50 - $(document).scrollTop();
    if (tempMarginTopLogo < -154)
        tempMarginTopLogo = -154;

    $("#imgLogoDesktop").css("margin-top", tempMarginTopLogo.toString() + "px");


    var tempMarginTopNavBar = -$(document).scrollTop();
    if (tempMarginTopNavBar < -50)
        tempMarginTopNavBar = -50;
    $("#navBar").css("margin-top", tempMarginTopNavBar.toString() + "px");

    var tempMarginTopLogoMob = -$(document).scrollTop();
    if (tempMarginTopLogoMob < -154)
        tempMarginTopLogoMob = -154;

    $("#imgLogoXS").css("margin-top", tempMarginTopLogoMob.toString() + "px");
});

function ToggleMobLogo() {
    var tempMarginTopLogoMob = -$(document).scrollTop();
    if (tempMarginTopLogoMob < -154)
        tempMarginTopLogoMob = -154;

    if ($("#bs-sidebar-navbar-collapse-1").hasClass("in"))
        $("#imgLogoXS").css("margin-top", tempMarginTopLogoMob.toString() + "px");
    else
        $("#imgLogoXS").css("margin-top", "-" + $("#navBar").height().toString() + "px");

}

$(divScrollToTop).on("mouseenter", function () {
    $('#spanScrollToTop').animate({ width: 'show' });
});

$(divScrollToTop).on("mouseleave", function () {
    $('#spanScrollToTop').animate({ width: 'hide' });
});

$(".djelatnost").on("mouseenter", function () {
    $("#divDjelatnostiDetails").html('<strong>' + $(this).html() + ':</strong> <br>' + $(this).attr("details")).slideDown();
});

$(".djelatnost").on("click", function () {
    $("#divDjelatnostiDetails").html('<strong>' + $(this).html() + ':</strong> <br>' + $(this).attr("details")).slideDown();
});