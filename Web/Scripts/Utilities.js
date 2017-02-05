﻿var noOfLoadersRunning = 0;

var alertNo = 0;
function ShowAlert(type, message, noAutoClose, timeout) {
    alertNo++;
    var id = "divAlert_" + alertNo.toString();
    var cssClass = "";

    switch (type) {
        case "info":
            cssClass = "alert-info";
            break;
        case "success":
            cssClass = "alert-success";
            break;
        case "warning":
            cssClass = "alert-warning";
            break;
        case "danger":
            cssClass = "alert-danger";
            break;
        default:
            cssClass = "alert-info";
            break;
    }

    var markUp = '<div id="' + id + '" class="alert ' + cssClass + ' fade in" style="display: none;> \
            <a href="#" class="close" aria-label="close" onclick="$(\'#'+ id + '\').hide();">&times;</a> \
            <strong><span>' + message + '</span></strong> \
        </div';

    $("#divAlertGeneral").append(markUp);

    if (timeout == undefined || timeout == null)
        timeout = 3000;

    if (noAutoClose == true)
        $("#" + id).fadeTo(timeout, 500);
    else
        $("#" + id).fadeTo(timeout, 500).slideUp(500);

    window.scrollTo(0, 0);
}

function ShowLoader(immediate, div) {
    if (div == undefined || div == null)
        div = $("#divLoading");

    noOfLoadersRunning++;
    if (noOfLoadersRunning == 1) {
        if (immediate)
            div.show();
        else
            div.slideDown(200);
    }
}

function HideLoader(immediate, div) {
    if (div == undefined || div == null)
        div = $("#divLoading");

    noOfLoadersRunning--;
    if (noOfLoadersRunning < 0)
        noOfLoadersRunning = 0;

    if (noOfLoadersRunning == 0) {
        if (immediate)
            div.hide();
        else
            div.slideUp(200);
    }
}

$(window).scroll(function (e) {
    var $el = $('.loading-bar');
    var isPositionFixed = ($el.css('position') == 'fixed');
    if ($(this).scrollTop() > 77 && !isPositionFixed) {
        var loadingBarWidth = $(document).width() * 0.96; // assume 2% padding on each side
        $('.loading-bar').css({ 'position': 'fixed', 'top': '0px' });
        if (loadingBarWidth > 0)
            $('.loading-bar').css('width', loadingBarWidth.toString() + 'px');
    }
    if ($(this).scrollTop() < 77 && isPositionFixed) {
        var loadingBarWidth = $(document).width() * 0.96; // assume 2% padding on each side
        $('.loading-bar').css({ 'position': 'static', 'top': '0px' });
        if (loadingBarWidth > 0)
            $('.loading-bar').css('width', loadingBarWidth.toString() + 'px');
    }
});

function GetQueryStringParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

function pad(num, size) {
    var s = num + "";
    while (s.length < size) s = "0" + s;
    return s;
}

// Converts Date format to string in format "MM/DD/YYYY HH:mm:ss"
function ConvertDateToUSFormatString(input, dateOnly) {
    var output = "";
    if (dateOnly === true)
        output = pad(input.getMonth() + 1, 2) + "/" + pad(input.getDate(), 2) + "/" + pad(input.getFullYear(), 4);
    else
        output = pad(input.getMonth() + 1, 2) + "/" + pad(input.getDate(), 2) + "/" + pad(input.getFullYear(), 4) + " " + pad(input.getHours(), 2) + ":" + pad(input.getMinutes(), 2) + ":" + pad(input.getSeconds(), 2);
    return output;
}

function ShowPrompt(title, message, yesFunction, noFunction) {
    $("#btnPromptYes").unbind("click");
    $("#btnPromptNo").unbind("click");

    $("#promptTitle").html(title);
    $("#promptMessage").html(message);
    $("#btnPromptYes").click(yesFunction);
    $("#btnPromptNo").click(noFunction);

    $("#btnOpenModalPrompt").trigger("click");
}

function SetUserInfo() {
    if ($("#linkLogOut").length > 0) {
        $("#linkLogOut").click(function () {
            LogOut();
        });
    }

    $("#divCurrentUser").slideDown(500);
    $("#btnCurrentUser").html("Welcome, " + CurrentUser.UserName);
}

function LogOut() {
    window.location.href = '../DashBoard/frmLogout.aspx';
}

function GetMoneyFormat(input) {
    return '$' + AddThousandsSeparator(parseFloat(Math.round(input * 100) / 100).toFixed(2));
}

function AddThousandsSeparator(nStr) {
    nStr += '';
    var x = nStr.split('.');
    var x1 = x[0];
    var x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + ',' + '$2');
    }
    return x1 + x2;
}

function GetCurrentDateUSFormat() {
    var today = new Date();
    var dd = today.getDate();

    var mm = today.getMonth() + 1;
    var yyyy = today.getFullYear();
    if (dd < 10)
        dd = '0' + dd;

    if (mm < 10)
        mm = '0' + mm;

    return mm + '/' + dd + '/' + yyyy;
}


function GetDateUSFormat(input) {
    var dd = input.getDate();

    var mm = input.getMonth() + 1;
    var yyyy = input.getFullYear();
    if (dd < 10)
        dd = '0' + dd;

    if (mm < 10)
        mm = '0' + mm;

    return mm + '/' + dd + '/' + yyyy;
}

function GetDateUSFormatFromJSON(input) {
    return GetDateUSFormat(new Date(parseInt(input.substr(6))));
}

function DateSorterFunction(a, b) {
    if (a == undefined || a == null)
        a = "";
    if (b == undefined || b == null)
        b = "";

    if (a == "" && b == "")
        return 0;
    else if (a == "")
        return -1;
    else if (b == "")
        return 1;
    else {
        var aDate = new Date(a);
        var bDate = new Date(b);
        if (aDate == bDate)
            return 0;
        else if (aDate > bDate)
            return 1;
        else
            return -1;
    }
}

function LoadMainMenu(url) {
    ShowLoader();
    $.ajax({
        type: 'POST',
        url: document.location.pathname.substr(document.location.pathname.lastIndexOf('/') + 1).replace(".aspx", "") + '.aspx/GetMainMenuItems',
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        data: JSON.stringify({
            roleName: CurrentUser.RoleName
        }),
        async: true,
        success: function (msg) {
            var items = $.extend(true, [], msg.d);;
            if (items == null)
                items = [];
            HideLoader();
            BindMenu(items, url, $("#ulMainMenu"));
        },
        error: function (msg) {
            HideLoader();
            ShowAlert("danger", "Failed loading main menu items: " + msg.statusText + ": " + JSON.parse(msg.responseText).Message);
        }
    });
}

function LoadCaseMenu(url) {
    BindFileNo(CaseId);
    ShowLoader();
    $.ajax({
        type: 'POST',
        url: document.location.pathname.substr(document.location.pathname.lastIndexOf('/') + 1).replace(".aspx", "") + '.aspx/GetCaseMenuItems',
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        data: JSON.stringify({
            roleName: CurrentUser.RoleName
        }),
        async: true,
        success: function (msg) {
            var items = $.extend(true, [], msg.d);;
            if (items == null)
                items = [];
            HideLoader();
            BindMenu(items, url, $("#ulCaseMenu"), "?case_id=" + CaseIdEncrypted);
        },
        error: function (msg) {
            HideLoader();
            ShowAlert("danger", "Failed loading case menu items: " + msg.statusText + ": " + JSON.parse(msg.responseText).Message);
        }
    });
}

function BindMenu(items, url, container, queryString) {
    // get rid of query string
    url = url.split('?')[0];

    var single = '<li class="##CLASS##"><a class="menu-item" href="##LINK##">##DESCRIPTION##</a></li>';
    var dropdownRoot = '<li class="dropdown">'
                                + '<a class="menu-item" href="#" class="dropdown-toggle" data-toggle="dropdown">##DESCRIPTION##<b class="caret"></b></a>'
                                + '<ul class="dropdown-menu" id="##SUB_ID##"></ul>'
                            + '</li>';

    var dropdownSubmenu = '<li class="dropdown-submenu">'
                                + '<a class="menu-item" href="#">##DESCRIPTION##</a>'
                                + '<ul class="dropdown-menu" id="##SUB_ID##"></ul>'
                        + '</li>';

    //##DESCRIPTION##
    //##SUB_ID##
    //##LINK##

    function BindData(data, _container) {
        $(data).each(function (index, obj) {
            if (obj.Children.length == 0) {
                var link = "";
                if (obj.Description != "Document Manager")
                    link = url + obj.RelativeLink.replace("..", "") + (queryString != undefined ? queryString : "");
                else
                    link = NewDmPath + CurrentUser.AccessToken + "&FileNo=" + FileNo;

                var cssClass = "";
                if (obj.RelativeLink != "" && window.location.href.split('?')[0].indexOf(obj.RelativeLink.replace("..", "")) != -1)
                    cssClass += "active";

                _container.prepend(single.replace("##DESCRIPTION##", obj.Description).replace("##LINK##", link).replace("##CLASS##", cssClass));
            }
            else {
                var subId = "subId_" + obj.Id.toString() + container.attr("id");
                if (obj.ParentId == -1)
                    _container.prepend(dropdownRoot.replace("##DESCRIPTION##", obj.Description).replace("##SUB_ID##", subId));
                else
                    _container.prepend(dropdownSubmenu.replace("##DESCRIPTION##", obj.Description).replace("##SUB_ID##", subId));
                var subContainer = $("#" + subId);
                BindData(obj.Children, subContainer);
            }
        });
    };

    var indexesToRemove = [];
    $(items).each(function (I, objI) {
        if (objI.ParentId > 0) {
            $(items).each(function (J, objJ) {
                if (objJ.Id == objI.ParentId) {
                    if (objJ.Children == undefined)
                        objJ.Children = [];
                    objJ.Children.push(objI);
                    indexesToRemove.push(I);
                    return false; // break J loop
                }
            });
        }

        if (I == items.length - 1) {
            if (indexesToRemove.length > 0) {
                $(indexesToRemove).each(function (index_removing, object_removing) {
                    items.splice(object_removing, 1);
                    if (index_removing == indexesToRemove.length - 1)
                        BindData(items, container);
                });
            }
            else
                BindData(items, container);
        }
    });
}

var FileNo = "";
function BindFileNo(_caseId) {
    $.ajax({
        type: 'POST',
        url: document.location.pathname.substr(document.location.pathname.lastIndexOf('/') + 1).replace(".aspx", "") + '.aspx/GetFileNo',
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        data: JSON.stringify({
            caseId: _caseId
        }),
        async: false,
        success: function (msg) {
            FileNo = msg.d;
            $("#strongNavBarHeader").append('&nbsp;&nbsp;<span>(File no: ' + FileNo + ')</span>');
        },
        error: function (msg) {
            ShowAlert("danger", "Failed GetFileNo: " + msg.statusText + ": " + JSON.parse(msg.responseText).Message);
        }
    });
}