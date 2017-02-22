/// <reference path="../scripts/Utilities.js" />

var lang = 1;

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
    $(".img-fit").attr("height", $(window).height());

    //$(".single-screen").css("min-height", $(window).height());
    $(".full-height").css("min-height", $(window).height());

    var menuLoc = ($("#ulMenu").parent().width() - $("#ulMenu").width() - 180) / 2;
    if (menuLoc < 0)
        menuLoc = 0;
    $("#ulMenu").css("left", menuLoc);


    lang = GetQueryStringParameterByName("lang");
    if (lang != undefined && lang != null)
        SetLang(parseInt(lang));

    $(".menu-item").removeClass("current_menu");
    $(".aPocetna").addClass("current_menu").focus();
});

var scrollingToDiv = false;
function ScrollToDiv(divId) {
    scrollingToDiv = true;

    var aLink = divId.replace("div", "a");
    $(".menu-item").removeClass("current_menu");
    if (aLink == "divMensud" || aLink == "divMersad" || aLink == "divJasmina")
        aLink = "aClanovi";
    $("." + aLink).addClass("current_menu").focus();


    $("#bs-sidebar-navbar-collapse-1").removeClass("in");

    $('html,body').animate({
        scrollTop: $("#" + divId).offset().top
    }, 'slow');

    if (Math.abs($(document).scrollTop() - $("#" + divId).offset().top) > $(window).height()) {
        $("#" + divId).find("div.img-fit").hide();

        var _direction = "right";
        if (divId == "divMensud" || divId == "divJasmina" || divId == "divSrebrenica")
            _direction = "left"

        $("#" + divId).find("div.img-fit:visible").show("slide", { direction: _direction }, 700);
    }
    setTimeout(function () {
        scrollingToDiv = false;
    }, 500);
}

function ScrollToTop() {
    scrollingToDiv = true;

    $("#bs-sidebar-navbar-collapse-1").removeClass("in");

    $(".menu-item").removeClass("current_menu");
    $(".aPocetna").addClass("current_menu").focus();


    $('html,body').animate({
        scrollTop: 0
    }, 'slow');

    setTimeout(function () {
        scrollingToDiv = false;
    }, 500);
}

var divODrustvuSlided = false;
var divMensudSlided = false;
var divMersadSlided = false;
var divJasminaSlided = false;
var divDjelatnostiSlided = false;
var divSrebrenicaSlided = false;
var divKontaktSlided = false;

$(document).scroll(function () {
    var tempMarginTopLogo = -50 - $(document).scrollTop();
    if (tempMarginTopLogo < -154)
        tempMarginTopLogo = -154;

    $(".imgLogoDesktop").css("margin-top", tempMarginTopLogo.toString() + "px");

    var tempMarginTopNavBar = -$(document).scrollTop();
    if (tempMarginTopNavBar < -50)
        tempMarginTopNavBar = -50;
    $("#navBar").css("margin-top", tempMarginTopNavBar.toString() + "px");

    var tempMarginTopLogoMob = -$(document).scrollTop();

    if ($("#bs-sidebar-navbar-collapse-1").hasClass("in"))
        tempMarginTopLogoMob -= 104;

    if (tempMarginTopLogoMob < -154)
        tempMarginTopLogoMob = -154;

    $(".imgLogoXS").css("margin-top", tempMarginTopLogoMob.toString() + "px");

    Scroll();
});

function Scroll() {
    var screenTop = $(document).scrollTop();
    var screenBottom = $(document).scrollTop() + $(window).height();

    if (screenTop == 0 && !scrollingToDiv) {
        $(".menu-item").removeClass("current_menu");
        $(".aPocetna").addClass("current_menu").focus();
    }

    if (!divODrustvuSlided && !scrollingToDiv && screenBottom >= $("#divODrustvu").offset().top && screenTop <= ($("#divODrustvu").offset().top + $("#divODrustvu").height())) {
        divODrustvuSlided = true;
        $("#divODrustvu").find("div.img-fit").hide();
        $("#divODrustvu").find("div.img-fit").show("slide", { direction: "right" }, 700);

        $(".menu-item").removeClass("current_menu");
        $(".aODrustvu").addClass("current_menu").focus();
    }
    else if (divODrustvuSlided && (screenBottom < $("#divODrustvu").offset().top || screenTop > ($("#divODrustvu").offset().top + $("#divODrustvu").height())))
        divODrustvuSlided = false;

    if (!divMensudSlided && !scrollingToDiv && screenBottom >= $("#divMensud").offset().top && screenTop <= ($("#divMensud").offset().top + $("#divMensud").height())) {
        divMensudSlided = true;
        $("#divMensud").find("div.img-fit").hide();
        $("#divMensud").find("div.img-fit").show("slide", { direction: "left" }, 700);

        $(".menu-item").removeClass("current_menu");
        $(".aClanovi").addClass("current_menu").focus();
    }
    else if (divMensudSlided && (screenBottom < $("#divMensud").offset().top || screenTop > ($("#divMensud").offset().top + $("#divODrustvu").height())))
        divMensudSlided = false;

    if (!divMersadSlided && !scrollingToDiv && screenBottom >= $("#divMersad").offset().top && screenTop <= ($("#divMersad").offset().top + $("#divMersad").height())) {
        divMersadSlided = true;
        $("#divMersad").find("div.img-fit").hide();
        $("#divMersad").find("div.img-fit").show("slide", { direction: "right" }, 700);

        $(".menu-item").removeClass("current_menu");
        $(".aClanovi").addClass("current_menu").focus();
    }
    else if (divMersadSlided && (screenBottom < $("#divMersad").offset().top || screenTop > ($("#divMersad").offset().top + $("#divODrustvu").height())))
        divMersadSlided = false;

    if (!divJasminaSlided && !scrollingToDiv && screenBottom >= $("#divJasmina").offset().top && screenTop <= ($("#divJasmina").offset().top + $("#divJasmina").height())) {
        divJasminaSlided = true;
        $("#divJasmina").find("div.img-fit").hide();
        $("#divJasmina").find("div.img-fit").show("slide", { direction: "left" }, 700);

        $(".menu-item").removeClass("current_menu");
        $(".aClanovi").addClass("current_menu").focus();
    }
    else if (divJasminaSlided && (screenBottom < $("#divJasmina").offset().top || screenTop > ($("#divJasmina").offset().top + $("#divJasmina").height())))
        divJasminaSlided = false;

    if (!divDjelatnostiSlided && !scrollingToDiv && screenBottom >= $("#divDjelatnosti").offset().top && screenTop <= ($("#divDjelatnosti").offset().top + $("#divDjelatnosti").height())) {
        divDjelatnostiSlided = true;
        $("#divDjelatnosti").find("div.img-fit").hide();
        $("#divDjelatnosti").find("div.img-fit").show("slide", { direction: "right" }, 700);

        $(".menu-item").removeClass("current_menu");
        $(".aDjelatnosti").addClass("current_menu").focus();
    }
    else if (divDjelatnostiSlided && (screenBottom < $("#divDjelatnosti").offset().top || screenTop > ($("#divDjelatnosti").offset().top + $("#divODrustvu").height())))
        divDjelatnostiSlided = false;

    if (!divSrebrenicaSlided && !scrollingToDiv && screenBottom >= $("#divSrebrenica").offset().top && screenTop <= ($("#divSrebrenica").offset().top + $("#divSrebrenica").height())) {
        divSrebrenicaSlided = true;
        $("#divSrebrenica").find("div.img-fit").hide();
        $("#divSrebrenica").find("div.img-fit").show("slide", { direction: "left" }, 700);

        $(".menu-item").removeClass("current_menu");
        $(".aSrebrenica").addClass("current_menu").focus();
    }
    else if (divSrebrenicaSlided && (screenBottom < $("#divSrebrenica").offset().top || screenTop > ($("#divSrebrenica").offset().top + $("#divSrebrenica").height())))
        divSrebrenicaSlided = false;

    if (!divKontaktSlided && !scrollingToDiv && screenBottom >= $("#divKontakt").offset().top && screenTop <= ($("#divKontakt").offset().top + $("#divKontakt").height())) {
        divKontaktSlided = true;
        $("#divKontakt").find("div.img-fit").hide();
        $("#divKontakt").find("div.img-fit").show("slide", { direction: "right" }, 700);

        $(".menu-item").removeClass("current_menu");
        $(".aKontakt").addClass("current_menu").focus();
    }
    else if (divKontaktSlided && (screenBottom < $("#divKontakt").offset().top || screenTop > ($("#divKontakt").offset().top + $("#divKontakt").height())))
        divKontaktSlided = false;
}

function ToggleMobLogo() {
    var tempMarginTopLogoMob = -$(document).scrollTop();
    if (tempMarginTopLogoMob < -154)
        tempMarginTopLogoMob = -154;

    if ($("#bs-sidebar-navbar-collapse-1").hasClass("in"))
        $(".imgLogoXS").css("margin-top", tempMarginTopLogoMob.toString() + "px");
    else
        $(".imgLogoXS").css("margin-top", "-" + $("#navBar").height().toString() + "px");

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

function SetLang(langNo) {
    $("#frmContact").attr("action", "Home.php?lang=" + langNo.toString() + "#divKontakt");

    switch (langNo) {
        case 1:
            // bih
            $(".lang-eng").hide();
            $(".lang-deu").hide();
            $(".lang-bih").show();

            $("#txtName").attr("placeholder", "Ime i prezime");
            $("#txtEmail").attr("placeholder", "Email adresa");
            $("#txtPhone").attr("placeholder", "Broj telefona");
            $("#txtMessage").attr("placeholder", "Tekst poruke");
            $("#btnSend").attr("value", "Pošalji");
            break;
        case 2:
            // eng
            $(".lang-deu").hide();
            $(".lang-bih").hide();
            $(".lang-eng").show();

            $("#txtName").attr("placeholder", "Full name");
            $("#txtEmail").attr("placeholder", "Email address");
            $("#txtPhone").attr("placeholder", "Phone number");
            $("#txtMessage").attr("placeholder", "Message text");
            $("#btnSend").attr("value", "Send");
            break;
        case 3:
            // deu
            $(".lang-eng").hide();
            $(".lang-bih").hide();
            $(".lang-deu").show();

            $("#txtName").attr("placeholder", "Vollständiger Name");
            $("#txtEmail").attr("placeholder", "E-Mail-Addresse");
            $("#txtPhone").attr("placeholder", "Telefonnummer");
            $("#txtMessage").attr("placeholder", "Nachrichtentext");
            $("#btnSend").attr("value", "Senden");
            break;
    }

    // other setup
    $("#divDjelatnostiDetails").html("");
    $("#bs-sidebar-navbar-collapse-1").removeClass("in");
}

