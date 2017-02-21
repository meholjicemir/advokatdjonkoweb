<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Advokatsko društvo Đonko</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="Libraries/Bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Libraries/jQuery/jquery-ui.min.css" />
    <link rel="stylesheet" href="Styles/NewStyle.css?v=5" />
    <script type="text/javascript" src="Libraries/jQuery/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="Libraries/jQuery/jquery-ui.min.js"></script>
    <script type="text/javascript" src="Libraries/Bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="Scripts/Utilities.js"></script>
    <script type="text/javascript" src="Home.aspx.js?v=5" defer="defer"></script>

    <link type="text/css" rel="stylesheet" href="Libraries/lightSlider/lightslider.css" />
    <script src="Libraries/lightSlider/lightslider.js"></script>
</head>
<body>
    <div class="visible-xs">
        <img id="imgLogoXS" class="img-responsive" src="Images/logo2.jpg" onclick="ScrollToTop(); return false;" alt="Logo" style="cursor: pointer; max-width: 180px; position: absolute; margin-left: 10px; margin-top: 0px; z-index: 1000; position: fixed;" />
    </div>
    <div class="arrow-scroll-top" id="divScrollToTop" onclick="ScrollToTop(); return false;">
        <span class="glyphicon glyphicon-chevron-up"></span>
        <span id="spanScrollToTop" style="display: none; font-size: 1em;">
            <span class="lang-bih">Povratak na početak</span>
            <span class="lang-eng">Back to top</span>
            <span class="lang-deu">Zurück nach oben</span>
        </span>
    </div>
    <div style="right: 1.5%; font-size: 0.9em; color: #40003f; position: fixed; z-index: 600; cursor: pointer;" class="hidden-xs">
        <img src="Images/bosnian.png" height="17" width="22" alt="BiH" onclick="SetLang(1); return false;" />
        <img src="Images/english.png" height="17" width="22" alt="ENG" onclick="SetLang(2); return false;" />
        <img src="Images/german.png" height="17" width="22" alt="DEU" onclick="SetLang(3); return false;" />
    </div>
    <nav id="navBar" class="navbar navbar-default sidebar" role="navigation" style="padding: 0px; width: 100%; height: 103px; z-index: 500; position: fixed;">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" style="margin-top: 55px;" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1" onclick="ToggleMobLogo(); return false;">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1" style="background-color: #fff8e8; z-index: 500;">
                <ul id="ulMenu" class="nav navbar-nav" style="padding-top: 50px; border: 0px; position: relative;">
                    <li class="hidden-xs">
                        <div>
                            <img id="imgLogoDesktop" class="img-responsive" src="Images/logo2.jpg" onclick="ScrollToTop(); return false;" alt="Logo" style="cursor: pointer; max-width: 180px; position: absolute; margin-top: -50px; z-index: 1000;" />
                        </div>
                    </li>
                    <li style="margin-left: 200px;" class="hidden-xs"><a href="#" onclick="ScrollToTop(); return false;">
                        <strong class="lang-bih">POČETNA</strong>
                        <strong class="lang-eng">HOME</strong>
                        <strong class="lang-deu">START</strong>
                    </a></li>
                    <li class="visible-xs"><a href="#">
                        <strong class="lang-bih">POČETNA</strong>
                        <strong class="lang-eng">HOME</strong>
                        <strong class="lang-deu">START</strong>
                                           </a></li>
                    <li><a href="#" onclick="ScrollToDiv('divODrustvu'); return false;">
                        <strong class="lang-bih">O DRUŠTVU</strong>
                        <strong class="lang-eng">ABOUT THE LAW FIRM</strong>
                        <strong class="lang-deu">ÜBER UNS</strong>
                        </a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <strong class="lang-bih">ČLANOVI KANCELARIJE</strong>
                            <strong class="lang-eng">ATTORNEYS</strong>
                            <strong class="lang-deu">MITGLIEDER DER KANZELEI</strong>
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu forAnimate" role="menu">
                            <li><a href="#" onclick="ScrollToDiv('divMensud'); return false;">
                                <span class="lang-bih">Advokat Mensud Đonko</span>
                                <span class="lang-eng">Attorney at Law Mensud Đonko</span>
                                <span class="lang-deu">Rechtsanwalt Mensud Đonko</span>
                                </a></li>
                            <li><a href="#" onclick="ScrollToDiv('divMersad'); return false;">
                                <span class="lang-bih">Advokat Mersad Đonko</span>
                                <span class="lang-eng">Attorney at Law Mersad Đonko</span>
                                <span class="lang-deu">Rechtsanwalt Mersad Đonko</span>
                                </a></li>
                            <li><a href="#" onclick="ScrollToDiv('divJasmina'); return false;">
                                <span class="lang-bih">Advokat Jasmina Đonko</span>
                                <span class="lang-eng">Attorney at Law Jasmina Đonko</span>
                                <span class="lang-deu">Rechtsanwalt Jasmina Đonko</span>
                                </a></li>
                        </ul>
                    </li>
                    <li><a href="#" onclick="ScrollToDiv('divDjelatnosti'); return false;">
                        <strong class="lang-bih">DJELATNOSTI</strong>
                        <strong class="lang-eng">FIELDS OF EXPERTISE</strong>
                        <strong class="lang-deu">FACHGEBIETE</strong>
                        </a></li>
                    <li><a href="#" onclick="ScrollToDiv('divSrebrenica'); return false;">
                        <strong class="lang-bih">SLUČAJ SREBRENICA</strong>
                        <strong class="lang-eng">CASE SREBRENICA</strong>
                        <strong class="lang-deu">DER FALL SREBRENICA</strong>
                        </a></li>
                    <li><a href="#" onclick="ScrollToDiv('divKontakt'); return false;">
                        <strong class="lang-bih">KONTAKT</strong>
                        <strong class="lang-eng">CONTACT</strong>
                        <strong class="lang-deu">KONTAKT</strong>
                        </a></li>
                    <li class="visible-xs nav-divider"></li>
                    <li class="visible-xs"><a href="#" onclick="SetLang(1); return false;"><strong>BOSANSKI</strong></a></li>
                    <li class="visible-xs"><a href="#" onclick="SetLang(2); return false;"><strong>ENGLISH</strong></a></li>
                    <li class="visible-xs"><a href="#" onclick="SetLang(3); return false;"><strong>DEUTSCH</strong></a></li>
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
            <li>
                <img src="Images/IMG_9831_1000.jpg" class="img-fit" />
            </li>
        </ul>
    </div>
    <div id="divODrustvu" class="single-screen row">
        <div class="col-md-6 visible-xs">
            <div class="img-fit-div img-fit" style="background-image: url(Images/IMG_9831_1000_mob.jpg); background-size: cover;">
                <img src="Images/IMG_9831_1000_mob.jpg" style="visibility: hidden;" />
            </div>
        </div>
        <div class="col-md-6 text-with-padding">
            <h1 class="lang-bih">O DRUŠTVU</h1>
            <h1 class="lang-eng">ABOUT THE LAW FIRM</h1>
            <h1 class="lang-deu">ÜBER UNS</h1>
            <br />
            <span class="lang-bih">Advokatska kancelarija Đonko ima dugogodišnju pravnu tradiciju. Osnovana je 1987. godine u Čapljini gdje je mnogo godina uspješno radila na polju naknade štete i sličnih obligacionopravnih instituta. Po okončanju rata Advokatska kancelarija Đonko premješta sjedište iz Čapljine u Mostar, te je 2016. godine izvršena registracija u Advokatsko društvo Đonko d.o.o. Mostar. 
<br /><br />Od svog osnivanja do danas usmjereni smo da našim klijentima pružimo maksimalnu pravnu zaštitu kao i da stojimo na raspolaganju za sve vrste pravnih upita. 	 
<br /><br />Bavimo se raznim poljima prava, iako je naš uži specijalitet naknada štete. Međutim, bavimo se i radnim pravom, privrednim pravom, nasljednim pravom, porodičnim pravom, i dr.
            </span>
            <span class="lang-eng">
                The attorney office Đonko has a long standing legal tradition. It has been founded in the year 1987 in Čapljina, where it has operated for many years in the field of damages and similar institutes of obligation law. After the Bosnian war the attorney office moves its seat from Čapljina to Mostar, and in the year 2016 it has been registered as „Law firm Đonko LLC Mostar“.
<br /><br />From its founding until today we have been determined to give our clients the highest legal protection, and offer consulting for any kind of legal inquiry.
<br /><br />We work in many legal fields, though damage law is our specialty. We do work largely in Labour Law, Commercial law (Insurance law, Contract law), Family law, Succession law and others (see fields of expertise for more).
            </span>
            <span class="lang-deu">
                Die Rechtsanwaltskanzelei Đonko hat eine lange Rechtstradition. Gegründet wurde sie im Jahr 1987. in Čapljina wo sie viele Jahre auf dem Gebiet des Schadenersatzes und anderen Instituten des Vertragsrechts gearbeitet hat. Nach dem Krieg in Bosnien und Herzegovina wurde der Sitz der Kanzlei aus Čapljina nach Mostar umgezogen. Im Jahr 2016. wurde die Rechtsanwaltskanzelei neu registriert als Gesellschaft und arbeitet jetzt unter dem Nahmem Rechtsanwaltzkanzelei Đonko Gmbh Mostar.
<br /><br />Seit der Gründung der Anwaltskanzelei konzentrieren wir uns darauf unseren Kunden ein Höchstmass an Rechtsschuz zu bieten, und für alle Rechtsfragen zur verfügung zu stehen.
<br /><br />Wir sind in verschiedenen Rechtsgebieten tätig, auch wenn unsere Spezialität der Scahdenersatz ist. Allerdings sind wir auch in den Bereichen Arbeitsrecht, Vertragsrecht, Handelsrecht und Gesselschaftrecht, Familienrecht, Erbrecht und andere beteiligt.
            </span>
        </div>
        <div class="col-md-6 full-height hidden-xs">
            <div class="img-fit-div img-fit full-height" style="background-image: url(Images/IMG_9831_1000.jpg); background-size: cover;">
                <img src="Images/IMG_9831_1000.jpg" style="visibility: hidden;" />
            </div>
        </div>
    </div>
    <div id="divMensud" class="single-screen row">
        <div class="col-md-6 full-height hidden-xs">
            <div class="img-fit-div img-fit full-height" style="background-image: url(Images/mensud.jpg); background-size: cover;">
                <img src="Images/mensud.jpg" style="visibility: hidden;" />
            </div>
        </div>
        <div class="col-md-6 visible-xs">
            <div class="img-fit-div img-fit" style="background-image: url(Images/mensud_mob.jpg); background-size: cover;">
                <img src="Images/mensud_mob.jpg" style="visibility: hidden;" />
            </div>
        </div>
        <div class="col-md-6 text-with-padding">
            <h1 class="lang-bih">Advokat Mensud Đonko</h1>
            <h1 class="lang-eng">Attorney at Law Mensud Đonko</h1>
            <h1 class="lang-deu">Rechtsanwalt Mensud Đonko</h1>
            <br />
            <span class="lang-bih">Mensud Đonko je rođen 1952. godine u Čapljini. Pravni studij je završio na Pravnom fakultetu u Sarajevu, gdje je diplomirao 1975. godine. Pravosudni ispit završava u Sarajevu 1984. godine, gdje jenakon toga položio i advokatski ispit. Radio je kao direktor općeg i pravnog sektora preduzeća "Lasta-Zvečevo d.d." u Čapljini sve do 1987. godine, nakon čega otvara svoju advokatsku kancelariju. 1998. godine advokatsku kancelariju premješta iz Čapljine u Mostar, gdje sve do danas radi. 2016. godine osniva Advokatsko društvo Đonko d.o.o. Mostar.
                    <br /><br />
                Advokat je kroz te godine bio uključen u razne dodatne projekte, od priređivanja multimedijalnog izdanja "Sudska praksa u BiH", do pokretanja jednog od najznačajnijih građanskih postupaka naknade štete u međunarodnom pravu za BiH: Slučaj Srebrenica. Obnašao je i funkciju predsjednika upravnog odbora Regionalne advokatske komore Hercegovačko-Neretvanskog Kantona.
            </span>
            <span class="lang-eng">Mensud Đonko was born in 1952. in Čapljina. He finished Law school in Sarajevo in 1975. He passed his bar exam in Sarajevo in 1984, where he also finished the attorney at law exam afterwards. He worked as a manager in the law sector of the company "Lasta-Zvečevo d.d." up until 1987, after which he is opening his own law practice in Čapljina. In 1998. he moves the seat of the law practice to Mostar, where he works today. In 2016 he founded the „Law firm Đonko LLC Mostar“.
                    <br /><br />
                During his many years of work he was included in various additional projects, from participating in the creation of the multi medial edition of „Court rulings in BiH“, to staring up one of the most important civil cases for damages in the international law for Bosnia and Herzegovina: Case Srebrenica. He was also the president of the steering committee in the Regional Bar Association for Hercegovačko-Neretvanski Canton.
            </span>
            <span class="lang-deu">Mensud Đonko ist im Jahr 1952. in Čapljina geboren. Das Juristische Studium hat an der Univerzität in Sarajevo im Jahre 1975. abgeschlossen. Die Bar Prüfung hat er in Sarajevo im Jahr 1984. bestanden. Er arbeitete zuerst als Direktor der Rechtsabteilung in Zvecevo-Lasta AG in Čapljina bis zum Jahr 1987., wonach er seine eigene Rechtsanwaltskanzelei erföffnet hat. In 1998. hat er seine Kanzelei von Čapljina nach Mostar umgezogen, wo er heute noch arbeitet. Da in der Rechtsanwaltskanzelei jetzt mehrere Anwälte tätig sind, gründete er im Jahr 2016. die Rechtsanwaltskanzelei Đonko Gmbh Mostar.
                    <br /><br />
                Rechtsanwalt Mensud Đonko ist durch die Jahre seiner Arbeit auch in verschiedenen Projekten beteiligt, von einer Multimedia Ausgabe von “Die Rechtsprechung in Bosnien und der Herzegowina”, bis zur der Vorbereitung und Beteiligung in einem der wichtigsten Fälle für Bosnia und der Herzegowina: Der Srebrenica Fall. Er war auch als Präsident des Vorstands im dem Regionalen Anwaltverein tätig.
            </span>
        </div>
    </div>
    <div id="divMersad" class="single-screen row">
        <div class="col-md-6 visible-xs">
            <div class="img-fit-div img-fit" style="background-image: url(Images/mersad_mob.jpg); background-size: cover;">
                <img src="Images/mersad_mob.jpg" style="visibility: hidden;" />
            </div>
        </div>
        <div class="col-md-6 text-with-padding">
            <h1 class="lang-bih">Advokat Mersad Đonko</h1>
            <h1 class="lang-eng">Attorney at Law Mersad Đonko</h1>
            <h1 class="lang-deu">Rechtsanwalt Mersad Đonko</h1>
            <br />
            <span class="lang-bih">Mersad Đonko rođen je 1987. godine u Čapljini. Pravni studij je završio na Pravnom fakultetu u Sarajevu, gdje je diplomirao 2010. godine. Master studij iz oblasti „Građansko pravo u Evropskoj uniji“ završava 2013. godine. Pravosudni ispit završava u Sarajevu 2014. godine, te je nakon toga položio advokatski ispit u 2015. godini. Govori tečno engleski i njemački jezik.</span>
            <span class="lang-eng">Mersad Đonko was born in 1987. in Čapljina. He finished Law school in Sarajevo where he got his bachelors degree in 2010.  He got his masters degree in the field of „Civil Law in the European Union“ in 2013. He passed his bar exam in Sarajevo in 2014. and the attorney at law exam in 2015. He speaks English and German fluently.</span>
            <span class="lang-deu">Mersad Đonko ist im Jahr 1987. in Čapljina geboren. Das Juristische Studium hat er im Jahr 2010. an der Univerität in Sarajevo abgeschlossen. Den Master-Abschluss in “Zivilrecht in der Europäischen Union” beendete er in Sarajevo im Jahr 2013. Die Juristische Prüfung bestand er in Sarajevo im Jahr 2014. Die Prüfung für die Rechtsanwalts Ausbildung bestand er auch in Sarajevo im Jahr 2015. Er spricht fliessend Englisch und Deutsch.</span>
        </div>
        <div class="col-md-6 full-height hidden-xs">
            <div class="img-fit-div img-fit full-height" style="background-image: url(Images/mersad.jpg); background-size: cover;">
                <img src="Images/mersad.jpg" style="visibility: hidden;" />
            </div>
        </div>
    </div>
    <div id="divJasmina" class="single-screen row">
        <div class="col-md-6 full-height hidden-xs">
            <div class="img-fit-div img-fit full-height" style="background-image: url(Images/jasmina.jpg); background-size: cover;">
                <img src="Images/jasmina.jpg" style="visibility: hidden;" />
            </div>
        </div>
        <div class="col-md-6 visible-xs">
            <div class="img-fit-div img-fit" style="background-image: url(Images/jasmina_mob.jpg); background-size: cover;">
                <img src="Images/jasmina_mob.jpg" style="visibility: hidden;" />
            </div>
        </div>
        <div class="col-md-6 text-with-padding">
            <h1 class="lang-bih">Advokat Jasmina Đonko</h1>
            <h1 class="lang-eng">Attorney at Law Jasmina Đonko</h1>
            <h1 class="lang-deu">Rechtsanwalt Jasmina Đonko</h1>
            <br />
            <span class="lang-bih">Jasmina Đonko rođena je 1989. godine u Čapljini. Pravni studij je završila na Pravnom fakultetu u Sarajevu, gdje je diplomirala 2011. godine. Master studij iz oblasti „Građansko pravo u Evropskoj uniji“ završava 2013. godine. Pravosudni ispit završava u Sarajevu 2014. godine, te je nakon toga položila advokatski ispit u 2016. godini. Govori tečno engleski i njemački jezik.</span>
            <span class="lang-eng">Jasmina Đonko was born in 1989. in Čapljina. She finished Law school in Sarajevo where she got her bachelors degree in 2011.  She got her masters degree in the field of „Civil Law in the European Union“ in 2013. She passed her bar exam in Sarajevo in 2014. and the attorney at law exam in 2016. She speaks English and German fluently.</span>
            <span class="lang-deu">Jasmina Đonko wurde im Jahr 1989. in Čapljina geboren. Das Juristische Studium hat sie im Jahr 2011. in Sarajevo abgeschlossen. Den Master-Abschluss in „Zivilrecht in der Europäischen Union“ beendete sie in Sarajevo im Jahr 2013. Die Juristische Prüfung bestand sie in Sarajevo im Jahr 2014. Die Prüfung für die Rechtsanwalt Ausbildung bestand sie auch in Sarajevo im Jahr 2016. Sie spricht fliessend English und Deutsch.</span>
        </div>
    </div>
    <div id="divDjelatnosti" class="single-screen row">
        <div class="col-md-6 visible-xs">
            <div class="img-fit-div img-fit" style="background-image: url(Images/IMG_9829_1000_mob.jpg); background-size: cover;">
                <img src="Images/IMG_9829_1000_mob.jpg" style="visibility: hidden;" />
            </div>
        </div>
        <div class="col-md-6 text-with-padding">
            <h1 class="lang-bih">DJELATNOSTI</h1>
            <h1 class="lang-eng">FIELDS OF EXPERTISE</h1>
            <br />
            <div style="text-align: left; margin-left: 10%;">
                <ul class="lang-bih">
                    <li class="djelatnost black-text" details="Iako dio obligacionog prava, naknadu štete izdvajamo kao našu specijalnost. Radimo sve predmete naknade materijalne i nematerijalne iz svih vrsta štetnih događaja.">Naknada štete</li>
                    <li class="djelatnost black-text" details="Obrađujemo sve predmete instituta obligacionog prava, ugovorne i vanugovorne odnose, ispunjenje obaveza, isplata duga, i dr.">Obligaciono pravo</li>
                    <li class="djelatnost black-text" details="U okviru radnog prava vršimo zastupanje poslodavaca kao i zaposlenika u ostvarivanju prava iz radnog odnosa: nezakoniti otkazi ugovora o radu, isplate i naknade plaća, doprinosa, utvrđivanje radnog statusa, i svih drugih instituta predviđenih Zakonom o radu i drugim propisima.">Radno pravo</li>
                    <li class="djelatnost black-text" details="Zastupamo klijente u ostvarivanju pravne zaštite iz porodičnog i bračnog prava: razvod braka, utvrđenje bračne stečevine, starateljstvo, izdržavanje i dr.">Porodično i bračno pravo</li>
                    <li class="djelatnost black-text" details="Vršimo osnivanje privrednih društava i pružamo pravnu pomoć u svim oblastima njihovog poslovanja. Zastupamo privredna društva u privrednim sporovima te smo usmjereni da im pružimo pravnu sigurnost u ostvarivanju njihovih interesa.">Privredno pravo</li>
                    <li class="djelatnost black-text" details="Naše klijente zastupamo u vanparničnim i parničnim postupcima u vezi sa nasljeđivanjem, te također vršimo uslugu sastavljanja testamenta.">Nasljedno pravo</li>
                    <li class="djelatnost black-text" details="Obrađujemo predmete iz oblasti stvarnog prava: utvrđenje i uknjižba, smetanje posjeda, vlasničke tužbe, zakup i dr.">Stvarno pravo</li>
                    <li class="djelatnost black-text" details="Zastupano klijente u upravnim postupcima pred svim nadležnim institucijama kao i u upravnim sporovima pred sudom pokrenutih osnovom takvih upravnih postupaka.">Upravno pravo</li>
                    <li class="djelatnost black-text" details="Nudimo sastavljanje isprava: svih vrsta ugovora, pravilnika, testamenata, izjava i dr.">Sastavljanje isprava</li>
                    <li class="djelatnost black-text" details="Pokrećeno izvršne postupke radi prinudnog izvršenja pravosnažnih i izvršnih sudskih odluka i vjerodostojnih isprava.">Izvršni postupak</li>
                </ul>
                <ul class="lang-eng">
                    <li class="djelatnost black-text" details="Although part of the Obligation Law, we mark out this field of law since it's our closer speciality. We work on all kinds of cases for material and non-material damages from all kinds of harmful events.">Damage Law</li>
                    <li class="djelatnost black-text" details="We work on all cases in regards to obligation law, from contractual and non-contractual relationships, fulfillment of obligations, debt payments, etc.">Obligation Law</li>
                    <li class="djelatnost black-text" details="In the field of labor law, we represent employers and employees in the exercise of labor rights, from the illegal termination of employment contract, owed payments, determining employment status, and all other institutes provided for in the Labour Act and other regulations.">Labour Law</li>
                    <li class="djelatnost black-text" details="We represent clients in obtaining legal protection in family and marital law: divorce, marital property, custody, child support, etc.">Family and Marital Law</li>
                    <li class="djelatnost black-text" details="We assist in the creation of companies and provide legal assistance in all areas of their business. We represent companies in commercial disputes and are focused to provide them with legal certainty in pursuing their interests.">Commercial Law</li>
                    <li class="djelatnost black-text" details="We represent our clients in non-litigation and litigation cases, related to inheritance, and we also provide assistence in drawing up wills, inheritance contracts.">Inheritance Law</li>
                    <li class="djelatnost black-text" details="We handle all matters in the field of property law: finding and registration, trespassing, ownership claims, leases, etc.">Property Law</li>
                    <li class="djelatnost black-text" details="We represent our clients in administrative proceedings before all relevant institutions as well as in administrative proceedings before the court initiated on the base of such administrative procedures.">Administrative Law</li>
                    <li class="djelatnost black-text" details="We offer preparation of documents: all types of contracts, regulations, wills, statements, etc.">Drawing up documents</li>
                    <li class="djelatnost black-text" details="We start enforcement proceedings in court to enforce the final and enforceable court decisions and authentic documents.">Enforcement procedures</li>
                </ul>
                <ul class="lang-deu">
                    <li class="djelatnost black-text" details="Obwohl ein Teil des Vertragsrechts, ist Schadenersatz unsere enge Spezialität. Wir arbeiten alle Fälle von materiellen und immateriellen Schaden aus unerwünschten Ereignissen.">Schadenersatz</li>
                    <li class="djelatnost black-text" details="Wir verarbeiten alle Fälle aus dem Vertragsrecht - vertragliche und außervertragliche Beziehungen, die Erfüllung der Verpflichtungen, Schuldentilgung und andere.">Vertragsrecht</li>
                    <li class="djelatnost black-text" details="Im Rahmen des Arbeitsrechts vertreten wir Arbeitgeber und Arbeitnehmer bei der Ausübung der Arbeitsrechte.">Arbeitsrecht</li>
                    <li class="djelatnost black-text" details="Wir vertreten Mandanten wegen rechtlichen Schutzes inerhalb des Familien und Eherechtes: Scheidungen, Zugewinngemeinschaft, Vormundschaft, Alimentenauszahlung und andere.">Familienrecht und Eherecht</li>
                    <li class="djelatnost black-text" details="Wir helfen bei der gründung von Unternehmen und geben Rechtshilfe in allen Bereichen ihrer Geschäftstätigkeit. Wir vertreten Unternehmen in Handelsstreitigkeiten und sind darauf fokussiert eine Rechtssicherheit für sie zu schaffen, und ihre Interessen zu verfolgen und vertreten.">Handelsrecht</li>
                    <li class="djelatnost black-text" details="Wir vertreten unsere Klienten in allen Angelegenheiten welche mit Erbrecht zu tuhn haben, von Erbstreitigkeiten bis zur erstellung von Testamenten.">Erbrecht</li>
                    <li class="djelatnost black-text" details="Wir vertreten Klienten auf dem Gebiet des Immobilienrechts: Feststellung und Registrierung, Eigentumsansprüche, Besitzansprüche, Leasing, usw.">Immobilienrecht</li>
                    <li class="djelatnost black-text" details="Wir vertreten Klienten in Verwaltungsverfahren vor allen relevanten Institutionen sowie in Verwaltungsverfahren welche vor dem Gericht eingeleitet werden, die als Grundlage vorherige Verwaltungsverfahren haben.">Verwaltungsrecht</li>
                    <li class="djelatnost black-text" details="Wir bieten Vorbereitung von Dokumenten: alle Arten von Verträgen, Verordnungen, Testamente, Aussagen und anderes.">Erstellung von Dokumenten</li>
                    <li class="djelatnost black-text" details="Wir leiten Vollstreckungsverfahren ein, aufgrund endgültiger und vollstreckbarer Gerichtsentscheidungen.">Vollstreckungsverfahren</li>
                </ul>
            </div>
            <br />
            <div id="divDjelatnostiDetails">
            </div>
        </div>
        <div class="col-md-6 full-height hidden-xs">
            <div class="img-fit-div img-fit full-height" style="background-image: url(Images/IMG_9829_1000.jpg); background-size: cover;">
                <img src="Images/IMG_9829_1000.jpg" style="visibility: hidden;" />
            </div>
        </div>
    </div>
    <div id="divSrebrenica" class="single-screen row">
        <div class="col-md-6 full-height hidden-xs">
            <div class="img-fit-div img-fit full-height" style="background-image: url(Images/srebrenica.jpg); background-size: cover;">
                <img src="Images/srebrenica.jpg" style="visibility: hidden;" />
            </div>
        </div>
        <div class="col-md-6 visible-xs">
            <div class="img-fit-div img-fit" style="background-image: url(Images/srebrenica_mob.jpg); background-size: cover;">
                <img src="Images/srebrenica_mob.jpg" style="visibility: hidden;" />
            </div>
        </div>
        <div class="col-md-6 smallest-text text-with-padding">
            <h1 class="lang-bih">SLUČAJ SREBRENICA</h1>
            <h1 class="lang-eng">CASE SREBRENICA</h1>
            <h1 class="lang-deu">DER FALL SREBRENICA</h1>
            <br />
            <span class="lang-bih">1995. godine u mjestu Srebrenica u državi Bosni i Hercegovini, počinjen je genocid nad bošnjačkim stanovništvom od strane pripadnika srpske vojske, u kojem je stradalo preko 8000 civila, uprkos činjenici da je enklava Srebrenice proglašena zaštićenom zonom od strane Vijeća sigurnosti UN-a.</span>
            <span class="lang-eng">In 1995 in the town Srebrenica in Bosnia and Herzegovina, genocide was committed against the Bosniak population by members of the Serbian army, which killed over 8,000 civilians, despite the fact that the enclave of Srebrenica was declared a safe area by the Security Council of the UN.</span>
            <span class="lang-deu">In 1995 hat in der Stadt Srebrenica in Bosnien und Herzegowina, ein Völkermord stadtgefunden gegen die Bevölkerung der Bosnier von Mitgliedern der serbischen Armee, die mehr als 8000 Zivilisten getötet hat, trotz der Tatsache, dass die Enklave Srebrenica ein sicher Bereich war, welcher vom Sicherheitsrat der Vereinten Nationen erklärt wurde.</span>
            <br />
            <br />
            <span class="lang-bih">Advokat Mensud Đonko je imao ideju, te je pokrenuo i inicijativu za vođenje postupka naknade štete za porodice ubijenih žrtava u Srebrenici. Isti je sastavio tim advokata iz Mostara, koji su se potom udružili i sa advokatskim društvom Van Diepen Van der Kroef iz Holandije, te zajedno zastupaju udruženje Majki Srebrenice u civilnom postupku naknade štete protiv države Holandije, zbog odgovornosti iste za ubistva članova njihovih porodice 1995. godine u Srebrenici. Preko 20 godina porodice žrtava su tražile priznanje i pravdu pred međunarodnim sudovima. 2007. godine pokrenuta je civilna tužba za naknadu štete u kojoj se država Holandija kao i Vijeće sigurnosti UN-a pozivaju na odgovornost jer Dutchbat (holandski bataljon u sastavu UN-ovih snaga), koji je bio stacioniran u bazi u Potočarima nije pružio adekvatnu zaštitu stanovništvu Srebrenice, iako mu je bilo poznato da istima prijeti genocid, koji se zatim i dogodio.</span>
            <span class="lang-eng">Attorney at Law Mensud Đonko had the idea and started the initiative to conduct the procedure of damages to the families of victims killed in Srebrenica. He assembled a team of lawyers from Mostar, who were then joined with the law firm Van Diepen Van der Kroef from the Netherlands, and together they represent the Association of Mothers of Srebrenica in civil proceedings for damages against the State of the Netherlands, for to responsibilitis in the killings of members of their families in 1995. in Srebrenica. Over 20 years the families of victims have been seeking recognition and justice in international courts. In 2007 a civil action for damages was launched in which the Association of Mothers of Srebrenica is suing the Netherlands as well as the UN Security Council on accountability because Dutchbat (Dutch battalion within the UN forces), who was stationed at the base in Potocari did not provide adequate protection for the population of Srebrenica, although they knew about the threat of genocide, which then took place.</span>
            <span class="lang-deu">Der Rechtsanwalt Mensud Đonko hatte die Idee und Initiative ein Zivilverfahren einzuleiten welches die Schäden der Familien der Opfer in Srebrenica behandeln würde. Er hat ein Team von Anwälten aus Mostar zusammengeführt,  welche  dann mit der Anwaltskanzlei Van Diepen Van der Kroef aus den Niederlanden verbunden kam, und die zusammen die Vereinigung der Mütter von Srebrenica im Zivilverfahren des Schadenersatzes gegen den Staat der Niederlande vertretet, aufgrund der Verantwortung der Niederlande für die Tötung von Mitgliedern ihrer Familien im Jahr 1995. in Srebrenica. Seit über 20 Jahren suchen die Familien der Opfer Anerkennung und Gerechtigkeit in den internationalen Gerichten. Im Jahr 2007 startete eine Zivilklage für Schadenersatz in dem das Land Niederlande sowie der UN-Sicherheitsrat zur Verantwortlichkeit aufgerufen wurde, weil Dutchbat (niederländische Bataillon innerhalb der UN-Kräfte), die an der Basis in Potocari (bei Srebrenica) stationiert war nicht ausreichenden Schutz gebieten hat, und die Bevölkerung von Srebrenica, obwohl Dutchbat wusste, dass Völkermord droht, der dann auch stattfand, in die Hände der serbischen Armee ausgeliefert hat.</span>
            <br />
            <br />
            <span class="lang-bih">Prvostepenom presudom iz 2014. godine holandski sud presudio je u korist tužitelja utvrdivši da je postojala odgovornost države Holandije za smrt jednog dijela civila koji su se nalazili u zaštićenoj zoni, jer su pripadnici Dutchbat-a iz zaštićene zone UN-a izbacili civile i predali ih srpskoj vojsci, koji su ih zatim ubili. Ovo je bila historijska presuda  jer je prvi put jedna država koja je bila u misiji pod okriljem UN-a proglašena odgovornom za stradanje civila u zaštićenoj zoni. Na prvostepenu presudu obe strane su izjavile žalbu, te se ishod po žalbi trenutno očekuje.</span>
            <span class="lang-eng">In the first instance verdict from 2014, a Dutch court ruled in favor of the plaintiff, finding that there was a responsibility of the State of the Netherlands for the death of one part of the civilians who were in the safe area, because members of Dutchbat from the UN safe area expelled civilians and surrendered them to the Serbian army, who then killed those civilians. This was a historic verdict because it is the first time a country which has been on a mission under the auspices of the UN found responsible for the killing of civilians in the safe area. The first instance verdict was appealed by both sides, and the outcome of the appeal is currently expected.</span>
            <span class="lang-deu">Die erste Instanz kam im Urteil von 2014 und ein niederländisches Gericht hat zugunsten der Kläger gerichtet und gefunden, dass es eine Verantwortung des Staates der Niederlande für den Tod eines Teils der Zivilisten gab, die im sicheren Bereich waren, und zwar weil die Mitglieder von Dutchbat  diese aus der UN-Sicherheitszone rausgebracht hat und in die Hände der serbischen Armee ausgeliefert hat welche sie dann getötet haben. Dies war ein historisches Urteil, weil es das erste Mal war, das ein Land, welches auf einer Mission, die unter der Schirmherrschaft der Vereinten Nationen war, für die Tötung von Zivilisten in den sicheren Bereich verantwortlich gefunden wurde. Das Urteil der ersten Instanz wurde von beiden Seiten angefächtigt, und das Ergebnis des Berufungsverfahrens wird derzeit erwartet.</span>
            <br />
        </div>
    </div>
    <div id="divKontakt" class=" single-screen row" style="padding-top: 1%;">
        <div class="col-md-6" style="padding: 3%;">
            <center>
                <iframe class="hidden-xs" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1233.6439760441872!2d17.808150773168872!3d43.340915705867474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNDPCsDIwJzI3LjMiTiAxN8KwNDgnMzIuOCJF!5e1!3m2!1sen!2sba!4v1487113122921" width="550" height="400" frameborder="2" style="border: 2px solid #40003f;" allowfullscreen></iframe>
                <iframe class="visible-xs" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1233.6439760441872!2d17.808150773168872!3d43.340915705867474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNDPCsDIwJzI3LjMiTiAxN8KwNDgnMzIuOCJF!5e1!3m2!1sen!2sba!4v1487113122921" width="300" height="300" frameborder="2" style="border: 2px solid #40003f;" allowfullscreen></iframe>
            </center>
        </div>
        <div class="col-md-6 smallest-text text-with-padding" style="text-align: left;">
            <h1 class="lang-bih">KONTAKT</h1>
            <h1 class="lang-eng">CONTACT</h1>
            <h1 class="lang-deu">KONTAKT</h1>
            <br />
            <span>
                <strong class="lang-bih">Advokatsko društvo Đonko d.o.o. Mostar</strong>
                <strong class="lang-eng">Law Firm Đonko d.o.o. Mostar</strong>
                <strong class="lang-deu">Anwaltskanzlei Đonko d.o.o. Mostar</strong>
            </span><br />
            <br />
            <span class="glyphicon glyphicon-map-marker"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span>Bulevar Narodne Revolucije br. 35</span><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>88000 Mostar</span><br />
            <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span>Tel.: +387 (0)36 580 992</span><br />
            <span class="glyphicon glyphicon-print"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span>Fax.: +387 (0)36 580 992</span><br />
            <span class="glyphicon glyphicon-phone"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span>Mob.: +387 (0)61 203 069</span><br />
            <span class="glyphicon glyphicon-envelope"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span>Email: <a href="mailto:advokatdonko@gmail.com">advokatdonko@gmail.com</a></span><br />
            <br />
            <span>
                <strong class="lang-bih">Radno vrijeme:</strong>
                <strong class="lang-eng">Working hours:</strong>
                <strong class="lang-deu">Arbeitszeit:</strong>
            </span><br />
            <span class="lang-bih">Ponedjeljak - Petak, 8:00 - 16:00 </span>
            <span class="lang-eng">Monday - Friday, 8:00 - 16:00 </span>
            <span class="lang-deu">Montag - Freitag, 8:00 - 16:00 </span>
            <br />
            <br />
            <span>
                <strong class="lang-bih">Kontaktirajte nas:</strong>
                <strong class="lang-eng">Contact us:</strong>
                <strong class="lang-deu">Kontaktiere uns:</strong>
            </span>
            <br />
            <?php
				if ((isset($_POST['txtEmail']) ? $_POST['txtEmail'] : '') <> '') {
					$ToEmail = 'web@advokatdonko.ba';
					$EmailSubject = 'Poruka sa web stranice';
					$mailheader = "From: web@advokatdonko.ba\r\n";
					$mailheader .= "Reply-To: web@advokatdonko.ba\r\n";
					$mailheader .= "Content-type: text/html; charset=iso-8859-1\r\n";
					$MESSAGE_BODY = "Ime i prezime: ".$_POST["txtName"]."".nl2br("\r\n");
					$MESSAGE_BODY .= "Email: ".$_POST["txtEmail"]."".nl2br("\r\n");
					$MESSAGE_BODY .= "Telefon: ".$_POST["txtPhone"]."".nl2br("\r\n");
					$MESSAGE_BODY .= "Poruka: ".nl2br($_POST["txtMessage"])."";
					mail($ToEmail, $EmailSubject, $MESSAGE_BODY, $mailheader) or die ("Failure");
			?>
			<span class="lang-bih">Poruka poslana.</span>
            <span class="lang-eng">Message sent.</span>
            <span class="lang-deu">Nachricht gesendet.</span>
			<?php
				} else {
			?>
            <form action="Home.php#divKontakt" method="post">
                <input id="txtName" name="txtName" type="text" class="form-control" placeholder="Ime i prezime" />
                <input id="txtEmail" name="txtEmail" type="email" class="form-control" placeholder="Email adresa" />
                <input id="txtPhone" name="txtPhone" type="text" class="form-control" placeholder="Broj telefona" />
                <br />
                <textarea id="txtMessage" name="txtMessage" rows="6" class="form-control" placeholder="Tekst poruke"></textarea>
                <br />
                <input type="submit" id="btnSend" class="form-control btn btn-success" style="max-width: 200px;" value="Pošalji" />
            </form>
			<?php 
				}; 
			?>
        </div>
    </div>
    <div class="pull-right" style="margin-right: 30px; font-size: 0.8em; color: #40003f;"><a style="color: #40003f !important;" href="mailto:meholjic.emir@gmail.com"><strong>2017 © EM</strong></a></div>
</body>
</html>
