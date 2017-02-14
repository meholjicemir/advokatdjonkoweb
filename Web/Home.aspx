<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Advokatsko društvo Đonko</title>
    <link rel="stylesheet" href="Libraries/Bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Libraries/jQuery/jquery-ui.min.css" />
    <link rel="stylesheet" href="Styles/NewStyle.css" />
    <script type="text/javascript" src="Libraries/jQuery/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="Libraries/jQuery/jquery-ui.min.js"></script>
    <script type="text/javascript" src="Libraries/Bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="Scripts/Utilities.js?v=2"></script>
    <script type="text/javascript" src="Home.aspx.js?v=1" defer="defer"></script>

    <link type="text/css" rel="stylesheet" href="Libraries/lightSlider/lightslider.css" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="Libraries/lightSlider/lightslider.js"></script>
</head>
<body>
    <div class="visible-xs" >
        <img id="imgLogoXS" class="img-responsive" src="Images/logo2.jpg" alt="Logo" style="max-width: 180px; position: absolute; margin-left: 10px; margin-top: 10px; z-index: 1000;" />
    </div>
    <div style="position: absolute; right: 5%; z-index: 1000; margin-top: 10px;" class="row hidden-xs">
        <div class="circle-div-small col-sm-4" style="background-image: url(Images/bosnian.png);"></div>
        <div class="circle-div-small col-sm-4" style="background-image: url(Images/english.png);"></div>
        <div class="circle-div-small col-sm-4" style="background-image: url(Images/german.png);"></div>
    </div>
    <nav class="navbar navbar-default sidebar" role="navigation" style="padding: 0px; width: 100%; height: 100px; z-index: 500;">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1" onclick="$('#imgLogoXS').slideToggle(); return false;">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1" style="z-index: 1000;">
                <ul class="nav navbar-nav" style="padding-top: 50px; background-color: #eadcb5; border: 0px;">
                    <li class="hidden-xs">
                        <div>
                            <img class="img-responsive" src="Images/logo2.jpg" alt="Logo" style="max-width: 180px; position: absolute; margin-top: -50px; z-index: 1000;" />
                        </div>
                    </li>
                    <li style="margin-left: 200px;" class="hidden-xs"><a href="#" onclick="ScrollToDiv('divPocetna'); return false;"><strong>POČETNA</strong></a></li>
                    <li class="visible-xs"><a href="#"><strong>POČETNA</strong></a></li>
                    <li><a href="#" onclick="ScrollToDiv('divODrustvu'); return false;"><strong>O DRUŠTVU</strong></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong>ČLANOVI KANCELARIJE</strong><span class="caret"></span></a>
                        <ul class="dropdown-menu forAnimate" role="menu">
                            <li><a href="#" onclick="ScrollToDiv('divAdvokati'); return false;">Advokat Mensud Đonko</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divAdvokati'); return false;">Advokat Mersad Đonko</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divAdvokati'); return false;">Advokat Jasmina Đonko</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong>DJELATNOSTI</strong><span class="caret"></span></a>
                        <ul class="dropdown-menu forAnimate" role="menu">
                            <li><a href="#" onclick="ScrollToDiv('divDjelatnosti'); return false;">Naknada štete</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divDjelatnosti'); return false;">Obligaciono pravo</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divDjelatnosti'); return false;">Radno pravo</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divDjelatnosti'); return false;">Porodično i bračno pravo</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divDjelatnosti'); return false;">Privredno pravo</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divDjelatnosti'); return false;">Nasljedno pravo</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divDjelatnosti'); return false;">Stvarno pravo</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divDjelatnosti'); return false;">Krivično pravo</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divDjelatnosti'); return false;">Upravno pravo</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divDjelatnosti'); return false;">Sastavljanje isprava</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divDjelatnosti'); return false;">Izvršni postupak</a></li>
                        </ul>
                    </li>
                    <li><a href="#" onclick="ScrollToDiv('divSrebrenica'); return false;"><strong>SLUČAJ SREBRENICA</strong></a></li>
                    <li><a href="#" onclick="ScrollToDiv('divKontakt'); return false;"><strong>KONTAKT</strong></a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div style="margin-top: -19px;">
        <ul id="lightSlider">
            <li>
                <img src="Images/IMG_9832_1000.jpg" class="img-fit" />
            </li>
            <li>
                <img src="Images/IMG_9826_1000.jpg" class="img-fit" />
            </li>
            <%--<li>
                <img src="Images/IMG_9829_1000.jpg" class="img-fit" />
            </li>--%>
            <%--<li>
                <img src="Images/IMG_9831_1000.jpg" class="img-fit" />
            </li>--%>
        </ul>
    </div>
    <div id="divODrustvu" class="single-screen">
        <h1>O DRUŠTVU</h1>
        <br />
        <span>Advokatska kancelarija Đonko ima dugogodišnju pravnu tradiciju. Osnovana je 1987. godine u Čapljini gdje je mnogo godina uspješno radila na polju naknade štete i sličnih obligacionopravnih instituta. Po okončanju rata Advokatska kancelarija Đonko premješta sjedište iz Čapljine u Mostar, te je 2016. godine izvršena registracija u Advokatsko društvo Đonko d.o.o. Mostar. 
Od svog osnivanja do danas usmjereni smo da našim klijentima pružimo maksimalnu pravnu zaštitu kao i da stojimo na raspolaganju za sve vrste pravnih upita. 	 
Bavimo se raznim poljima prava, iako je naš uži specijalitet naknada štete. Međutim, bavimo se i radnim pravom, privrednim pravom, nasljednim pravom, porodičnim pravom, i dr.
        </span>

        <div class="arrow-previous-module">
            <span class="glyphicon glyphicon-chevron-up" onclick="window.scrollTo(0,0); return false;"></span>
        </div>
        <div class="arrow-next-module">
            <span class="glyphicon glyphicon-chevron-down" onclick="ScrollToDiv('divAdvokati'); return false;"></span>
        </div>
    </div>
    <div id="divAdvokati" class="single-screen">
        <div class="row">
            <div class="col-lg-4">
                <center><div class="circle-div" style="background-image: url(Images/Mensud_g.jpg);"></div></center>
                <h2>Mensud Đonko</h2>
                <span>Mensud Đonko je rođen 1952. godine u Čapljini. Pravni studij je završio na Pravnom fakultetu u Sarajevu, gdje je diplomirao 1975. godine. Pravosudni ispit završava u Sarajevu 1984. godine, gdje jenakon toga položio i advokatski ispit. Radio je kao direktor općeg i pravnog sektora preduzeća "Lasta-Zvečevo d.d." u Čapljini sve do 1987. godine, nakon čega otvara svoju advokatsku kancelariju. 1998. godine advokatsku kancelariju premješta iz Čapljine u Mostar, gdje sve do danas radi. 2016. godine osniva Advokatsko društvo Đonko d.o.o. Mostar.
                    <br />
                    <br />
                    Advokat je kroz te godine bio uključen u razne dodatne projekte, od priređivanja multimedijalnog izdanja "Sudska praksa u BiH", do pokretanja jednog od najznačajnijih građanskih postupaka naknade štete u međunarodnom pravu za BiH: Slučaj Srebrenica. Obnašao je i funkciju predsjednika upravnog odbora Regionalne advokatske komore Hercegovačko-Neretvanskog Kantona.
                </span>
            </div>
            <div class="col-lg-4">
                <center><div class="circle-div" style="background-image: url(Images/Mersad_g.jpg);"></div></center>
                <h2>Mersad Đonko</h2>
                <span>Mersad Đonko rođen je 1987. godine u Čapljini. Pravni studij je završio na Pravnom fakultetu u Sarajevu, gdje je diplomirao 2010. godine. Master studij iz oblasti „Građansko pravo u Evropskoj uniji“ završava 2013. godine. Pravosudni ispit završava u Sarajevu 2014. godine, te je nakon toga položio advokatski ispit u 2015. godini. Govori tečno engleski i njemački jezik.</span>
            </div>
            <div class="col-lg-4">
                <center><div class="circle-div" style="background-image: url(Images/Jasmina_g.jpg);"></div></center>
                <h2>Jasmina Đonko</h2>
                <span>Jasmina Đonko rođena je 1989. godine u Čapljini. Pravni studij je završila na Pravnom fakultetu u Sarajevu, gdje je diplomirala 2011. godine. Master studij iz oblasti „Građansko pravo u Evropskoj uniji“ završava 2013. godine. Pravosudni ispit završava u Sarajevu 2014. godine, te je nakon toga položila advokatski ispit u 2016. godini. Govori tečno engleski i njemački jezik.</span>
            </div>
        </div>

        <div class="arrow-previous-module">
            <span class="glyphicon glyphicon-chevron-up" onclick="ScrollToDiv('divODrustvu'); return false;"></span>
        </div>
        <div class="arrow-next-module">
            <span class="glyphicon glyphicon-chevron-down" onclick="ScrollToDiv('divDjelatnosti'); return false;"></span>
        </div>
    </div>
    <div id="divDjelatnosti" class="single-screen screen-with-background-img">
        <img src="Images/IMG_9829_1000.jpg" class="img-fit" />
        <h1>DJELATNOSTI</h1>
        <br />
        <div style="text-align: left;">
            <span><strong>Naknada štete</strong> (Iako dio obligacionog prava, naknadu štete izdvajamo kao našu specijalnost. Radimo sve predmete naknade materijalne i nematerijalne iz svih vrsta štetnih događaja.)</span>
            <br />
            <br />
            <span><strong>Obligaciono pravo</strong> (Obrađujemo sve predmete instituta obligacionog prava, ugovorne i vanugovorne odnose, ispunjenje obaveza, isplata duga, i dr.)</span>
            <br />
            <br />
            <span><strong>Radno pravo</strong> (U okviru radnog prava vršimo zastupanje poslodavaca kao i zaposlenika u ostvarivanju prava iz radnog odnosa: nezakoniti otkazi ugovora o radu, isplate i naknade plaća, doprinosa, utvrđivanje radnog statusa, i svih drugih instituta predviđenih Zakonom o radu i drugim propisima)</span>
            <br />
            <br />
            <span><strong>Porodično i bračno pravo</strong> (Zastupamo klijente u ostvarivanju pravne zaštite iz porodičnog i bračnog prava: razvod braka, utvrđenje bračne stečevine, starateljstvo, izdržavanje i dr.)</span>
            <br />
            <br />
            <span><strong>Privredno pravo</strong> (Vršimo osnivanje privrednih društava i pružamo pravnu pomoć u svim oblastima njihovog poslovanja. Zastupamo privredna društva u privrednim sporovima te smo usmjereni da im pružimo pravnu sigurnost u ostvarivanju njihovih interesa.)</span>
            <br />
            <br />
            <span><strong>Nasljedno pravo</strong> (Naše klijente zastupamo u vanparničnim i parničnim postupcima u vezi sa nasljeđivanjem, te također vršimo uslugu sastavljanja testamenta.)</span>
            <br />
            <br />
            <span><strong>Stvarno pravo</strong> (Obrađujemo predmete iz oblasti stvarnog prava: utvrđenje i uknjižba, smetanje posjeda, vlasničke tužbe, zakup i dr.)</span>
            <br />
            <br />
            <span><strong>Upravno pravo</strong> (Zastupano klijente u upravnim postupcima pred svim nadležnim institucijama kao i u upravnim sporovima pred sudom pokrenutih osnovom takvih upravnih postupaka.) </span>
            <br />
            <br />
            <span><strong>Sastavljanje isprava</strong> (Nudimo sastavljanje isprava: svih vrsta ugovora, pravilnika, testamenata, izjava i dr.)</span>
            <br />
            <br />
            <span><strong>Izvršni postupak</strong> (Pokrećeno izvršne postupke radi prinudnog izvršenja pravosnažnih i izvršnih sudskih odluka i vjerodostojnih isprava.)</span>
        </div>

        <div class="arrow-previous-module">
            <span class="glyphicon glyphicon-chevron-up" onclick="ScrollToDiv('divAdvokati'); return false;"></span>
        </div>
        <div class="arrow-next-module">
            <span class="glyphicon glyphicon-chevron-down" onclick="ScrollToDiv('divSrebrenica'); return false;"></span>
        </div>
    </div>
    <div id="divSrebrenica" class="single-screen screen-with-background-img">
        <img src="Images/srebrenica.jpg" class="img-fit" />
        <h1>SLUČAJ SREBRENICA</h1>
        <br />
        <span>1995. godine u mjestu Srebrenica u državi Bosni i Hercegovini, počinjen je genocid nad bošnjačkim stanovništvom od strane pripadnika srpske vojske, u kojem je stradalo preko 8000 civila, uprkos činjenici da je enklava Srebrenice proglašena zaštićenom zonom od strane Vijeća sigurnosti UN-a.</span>
        <br />
        <br />
        <span>Advokat Mensud Đonko je imao ideju, te je pokrenuo i inicijativu za vođenje postupka naknade štete za porodice ubijenih žrtava u Srebrenici. Isti je sastavio tim advokata iz Mostara, koji su se potom udružili i sa advokatskim društvom Van Diepen Van der Kroef iz Holandije, te zajedno zastupaju udruženje Majki Srebrenice u civilnom postupku naknade štete protiv države Holandije, zbog odgovornosti iste za ubistva članova njihovih porodice 1995. godine u Srebrenici. Preko 20 godina porodice žrtava su tražile priznanje i pravdu pred međunarodnim sudovima. 2007. godine pokrenuta je civilna tužba za naknadu štete u kojoj se država Holandija kao i Vijeće sigurnosti UN-a pozivaju na odgovornost jer Dutchbat (holandski bataljon u sastavu UN-ovih snaga), koji je bio stacioniran u bazi u Potočarima nije pružio adekvatnu zaštitu stanovništvu Srebrenice, iako mu je bilo poznato da istima prijeti genocid, koji se zatim i dogodio.</span>
        <br />
        <br />
        <span>Prvostepenom presudom iz 2014. godine holandski sud presudio je u korist tužitelja utvrdivši da je postojala odgovornost države Holandije za smrt jednog dijela civila koji su se nalazili u zaštićenoj zoni, jer su pripadnici Dutchbat-a iz zaštićene zone UN-a izbacili civile i predali ih srpskoj vojsci, koji su ih zatim ubili. Ovo je bila historijska presuda  jer je prvi put jedna država koja je bila u misiji pod okriljem UN-a proglašena odgovornom za stradanje civila u zaštićenoj zoni. Na prvostepenu presudu obe strane su izjavile žalbu, te se ishod po žalbi trenutno očekuje.</span>
        <br />
        <div class="arrow-previous-module">
            <span class="glyphicon glyphicon-chevron-up" onclick="ScrollToDiv('divDjelatnosti'); return false;"></span>
        </div>
        <div class="arrow-next-module">
            <span class="glyphicon glyphicon-chevron-down" onclick="ScrollToDiv('divKontakt'); return false;"></span>
        </div>
    </div>
    <div id="divKontakt" class="single-screen">
        <div class="row">
            <div class="col-lg-5">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1233.6439760441872!2d17.808150773168872!3d43.340915705867474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNDPCsDIwJzI3LjMiTiAxN8KwNDgnMzIuOCJF!5e1!3m2!1sen!2sba!4v1487113122921" width="600" height="400" frameborder="2" style="border: 2px solid #40003f;" allowfullscreen></iframe>
            </div>
            <div class="col-lg-7" style="text-align: left; font-size: 1.5em; padding-left: 50px;">
                <span><strong>Advokatsko društvo Đonko d.o.o. Mostar</strong></span><br />
                <br />
                <span class="glyphicon glyphicon-map-marker"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span>Bulevar Narodne Revolucije br. 35</span><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>88000 Mostar</span><br />
                <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span>Tel.: +387 (0)36 580 992</span><br />
                <span class="glyphicon glyphicon-print"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span>Fax.: +387 (0)36 580 992</span><br />
                <span class="glyphicon glyphicon-phone"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span>Mob.: +387 (0)61 203 069</span>
            </div>
        </div>

        <div class="arrow-previous-module">
            <span class="glyphicon glyphicon-chevron-up" onclick="ScrollToDiv('divSrebrenica'); return false;"></span>
        </div>
    </div>
</body>
</html>
