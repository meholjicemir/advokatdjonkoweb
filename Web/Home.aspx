<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Advokat Đonko</title>
    <link rel="stylesheet" href="Libraries/Bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Libraries/jQuery/jquery-ui.min.css" />
    <link rel="stylesheet" href="Styles/NewStyle.css" />
    <script type="text/javascript" src="Libraries/jQuery/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="Libraries/jQuery/jquery-ui.min.js"></script>
    <script type="text/javascript" src="Libraries/Bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="Scripts/Utilities.js?v=2"></script>
    <script type="text/javascript" src="Home.aspx.js?v=1" defer="defer"></script>
</head>
<body>

    <nav class="navbar navbar-default sidebar" role="navigation" style="position: fixed;">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#" style="height: 140px; padding: 1px; margin-top: 10px;">
                    <center><img class="img-responsive" src="Images/logo200.png" alt="Logo" style="max-width: 180px;" /></center>
                </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="#" onclick="ScrollToDiv('divPocetna'); return false;">Početna<span style="font-size: 16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Članovi društva<span class="caret"></span><span style="font-size: 16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a>
                        <ul class="dropdown-menu forAnimate" role="menu">
                            <li><a href="#" onclick="ScrollToDiv('divODrustvu'); return false;">O društvu</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divAdvokati'); return false;">Advokat Mensud Đonko</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divAdvokati'); return false;">Advokat Mersad Đonko</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divAdvokati'); return false;">Advokat Jasmina Đonko</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Djelatnosti<span class="caret"></span><span style="font-size: 16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-book"></span></a>
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
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Publikacije<span class="caret"></span><span style="font-size: 16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-file"></span></a>
                        <ul class="dropdown-menu forAnimate" role="menu">
                            <li><a href="#" onclick="ScrollToDiv('divPublikacije'); return false;">Zakoni i drugi propisi</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divPublikacije'); return false;">Sudska praksa</a></li>
                            <li><a href="#" onclick="ScrollToDiv('divPublikacije'); return false;">Slučaj Srebrenica</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" onclick="ScrollToDiv('divKontakt'); return false;">Kontakt<span style="font-size: 16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-question-sign"></span></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <%--<div id="divPageHeader" class="page-header hidden-xs hidden-sm" style="background-color: #f7c44f; margin: 0px; height: 152px; border: 1px solid #5c3800;">
        <h3 class="text-info current-title" style="margin-top: 30px;">&nbsp;&nbsp;&nbsp;<span id="spanCurrentTitle"></span></h3>
    </div>--%>

    <div class="container">
        <div id="divPocetna" class="single-screen row">
            <img src="Images/IMG_9832_1000.jpg" class="img-fit-div" />
            <div class="single-screen-dimmed">
                <span class="big-yellow-text">Advokatsko društvo ĐONKO</span>
                
                <h2 class="font-streched">Advokati:</h2>
                <br />
                <center>
                    <div class="row" style="max-width: 700px;">
                        <div class="col-sm-4">
                            <center><h3>Mensud Đonko</h3></center>
                            <div class="circle-div" style="background-image: url(Images/Mensud_g.jpg);">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <center><h3>Mersad Đonko</h3></center>
                            <div class="circle-div" style="background-image: url(Images/Mersad_g.jpg);">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <center><h3>Jasmina Đonko</h3></center>
                            <div class="circle-div" style="background-image: url(Images/Jasmina_g.jpg);">
                            </div>
                        </div>
                    </div>
                </center>
            </div>
        </div>
        <div id="divODrustvu" class="single-screen row">
            <img src="Images/IMG_9826_1000.jpg" class="img-fit-div" />
            <div class="single-screen-dimmed">
                O društvu
            </div>
        </div>
        <div id="divAdvokati" class="single-screen row">
            <img src="Images/IMG_9831_1000.jpg" class="img-fit-div" />
            <div class="single-screen-dimmed">
                <div class="col-lg-4">
                    Mensud
                </div>
                <div class="col-lg-4">
                    Mersad
                </div>
                <div class="col-lg-4">
                    Jasmina
                </div>
            </div>
        </div>
        <div id="divDjelatnosti" class="single-screen row">
            Djelatnosti
        </div>
        <div id="divPublikacije" class="single-screen row">
            Publikacije
        </div>
        <div id="divKontakt" class="single-screen row">
            <div class="col-sm-6">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2901.763287736037!2d17.813294315555087!3d43.34014217913331!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x134b4306220c4fe5%3A0x48596236fb4d3829!2sBrki%C4%87a+4%2C+Mostar+88000!5e0!3m2!1sen!2sba!4v1486250900066" width="600" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
            </div>
            <div class="col-sm-6">
                <label>Adresa: </label>
                <label>Telefon: </label>
                <label>Fax: </label>
                <label>Email: </label>
            </div>
        </div>
    </div>
</body>
</html>
