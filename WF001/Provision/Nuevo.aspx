<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nuevo.aspx.cs" Inherits="WF001.Provision.Nuevo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0" />
    <meta name="theme-color" content="#d81b60" />
    <title>Crear Provisión</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="../materialize/css/g-materialize.css" rel="stylesheet" />
    <link href="../materialize/css/materialize.css" rel="stylesheet" />

    <script src="../materialize/js/materialize.js"></script>
</head>
<body>
    <div class="navbar-fixed" style="z-index: 999;">
        <nav class="nav-extended">
            <div class="nav-wrapper pink darken-1" <%-- style="background-repeat: repeat-x;background-image: url(/images/header-transient.png);"--%>>
                <a href="../Default.aspx" class="brand-logo">
                    <img src="../images/logo_kellogg.png" /></a>
                <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            </div>
        </nav>
    </div>
    <ul id="slide-out" class="sidenav sidenav-fixed" style="z-index: 998;transform:translateX(-105%)">
        <li>
            <div class="navbar-fixed">
                <div class="nav-wrapper pink darken-1" style="height: 68px;">
                    <a href="#!" class="brand-logo">
                        <img src="../images/logo_kellogg.png" /></a>
                </div>
            </div>
        </li>
        <li>
            <a id="cerrar-menu" href="#!" data-target="slide-out" class="sidenav-close pink darken-1" onclick="cerrar();"><i class="material-icons right white-text" style="margin: 0; font-size: 1.3rem;">menu</i></a>
        </li>
        <li>
            <div class="user-view" style="padding: 0">
                <div class="background pink darken-1">
                    <%--<img src="images/office.jpg">--%>
                </div>
                <table>
                    <tr>
                        <td><a href="#!user" style="padding: 0;">
                            <img class="circle" src="../images/sf-logo.jpg" /></a></td>
                        <td>
                            <a href="#!name" style="padding: 0;"><span class="white-text name" style="margin: 0;">Iziz Rosales</span></a>
                            <a href="#!email" style="padding: 0;"><span class="white-text email" style="padding: 0;">iziz.rosales@kelloggs.com.mx</span></a>
                            <a href="#!role" style="padding: 0;"><span class="white-text email" style="padding: 0;">Administrador</span></a>
                        </td>
                    </tr>
                </table>
            </div>
        </li>
        <li class="bold"><a href="#!"><i class="material-icons">account_balance</i>Solicitudes financieras</a></li>
        <li class="bold"><a href="#"><i class="material-icons">apps</i>WorkPlace</a></li>
        <li class="no-padding">
            <ul class="collapsible collapsible-accordion">
                <li class="bold"><a class="collapsible-header waves-effect waves-teal"><i class="material-icons">thumbs_up_down</i>Acuerdo Comercial</a>
                    <div class="collapsible-body">
                        <ul>
                            <li><a href="color.html">Color</a></li>
                            <li><a href="grid.html">Grid</a></li>
                        </ul>
                    </div>
                </li>
                <li class="bold"><a class="collapsible-header waves-effect waves-teal"><i class="material-icons">trending_up</i>Presupuesto</a>
                    <div class="collapsible-body">
                        <ul>
                            <li><a href="badges.html">Badges</a></li>
                            <li><a href="buttons.html">Buttons</a></li>
                        </ul>
                    </div>
                </li>
                <li class="bold"><a class="collapsible-header waves-effect waves-teal"><i class="material-icons">sync</i>Sincronización</a>
                    <div class="collapsible-body">
                        <ul>
                            <li><a href="autocomplete.html">Autocomplete</a></li>
                            <li><a href="checkboxes.html">Checkboxes</a></li>
                        </ul>
                    </div>
                </li>
                <li class="bold"><a class="collapsible-header waves-effect waves-teal"><i class="material-icons">book</i>Catálogos</a>
                    <div class="collapsible-body">
                        <ul>
                            <li><a href="autocomplete.html">Autocomplete</a></li>
                            <li><a href="checkboxes.html">Checkboxes</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </li>
    </ul>
    <script>
        //var elem = document.querySelector('.sidenav');
        //var options = [];
        //var instance = M.Sidenav.init(elem, options);

        var elem = document.querySelector('.collapsible');
        var options = [];
        var instance = M.Collapsible.init(elem, options);

        function abrir(controler) {
            var c = document.getElementById("container").style.paddingLeft = '300px';
            document.getElementById('slide-out').style.transform = 'translateX(0%)';
            sessionStorage.setItem('menu.hide', 'false');
        }
        function cerrar() {
            var c = document.getElementById("container").style.paddingLeft = '0px';
            //document.getElementById('slide-out').style.transform = 'translateX(-105%)';
            sessionStorage.setItem('menu.hide', 'true');
        }
        function getCookie(cname) {
            return sessionStorage.getItem(cname);
        }
    </script>
    <style type="text/css">
        .sidenav li > a {
            padding: 0 16px;
        }

        .container {
            padding-left: 300px;
        }

        @media only screen and (max-width : 992px) {
            .container {
                padding-left: 0;
            }
        }

        .mennu {
            padding-left: 300px;
        }

        @media only screen and (max-width : 992px) {
            .mennu {
                padding-left: 0;
            }
        }
    </style>

    <%--<a href="#" data-target="slide-out" class="sidenav-trigger" onclick="abrir(this);" style="color: rgba(0, 0, 0, 0.87); display: block; font-size: 14px; font-weight: 500; height: 48px; line-height: 48px;"><i class="material-icons">menu</i></a>--%>
    <div id="btn-menu">
        <a class="sidenav-trigger btn pink darken-1" data-target="slide-out" onclick="abrir(this);" style="z-index: 0">
            <i class="large material-icons">menu</i>
        </a>
    </div>
    <%--    <div id="btn-menu2" style="padding-left:280px;">
        <a class="sidenav-trigger btn pink" data-target="slide-out" onclick="cerrar2(this);" style="z-index:0">
            <i class="large material-icons">menu</i>
        </a>
    </div>--%>
    <div id="container" class="container">
        <div class="row">
            <form id="form1" runat="server">
                <div class="row">
                    <div class="col s12 m12 l12 l12">
                        <h4 class="">Crear Provisión</h4>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 0;">
                    <div class="input-field col s6 m2 l2">
                        <input id="user" type="text" class="disabled black-text" value="mxklic01" disabled="disabled" />
                        <label for="user">Usuario</label>
                    </div>
                    <div class="input-field col s6 m2 l2">
                        <input id="manager" type="text" class="disabled black-text" value="mxkpgt01" disabled="disabled" />
                        <label for="manager">Manager</label>
                    </div>
                    <div class="input-field col s6 m2 l2">
                        <input id="backup" type="text" class="disabled black-text" value="mxkback01" disabled="disabled" />
                        <label for="backup">Backup</label>
                    </div>
                    <div class="input-field col s6 m2 l2">
                        <input id="bu" type="text" class="disabled black-text" value="PRGA" disabled="disabled" />
                        <label for="bu">BU</label>
                    </div>
                    <div class="col s12 m4 l4 right">
                        <input type="button" class="btn-small" value="Cancelar" runat="server" style="margin-top: 1.5rem;" />
                        <input type="button" class="btn-small" value="Borrador" runat="server" style="margin-top: 1.5rem;" />
                        <input type="button" class="btn-small" value="Guardar" runat="server" style="margin-top: 1.5rem;" />
                    </div>
                </div>
                <div class="divider pink darken-1"></div>
                <div class="row">
                    <div class="col s12 m6 l6">
                        <div class="card-panel hoverable">
                            <div class="row">
                                <div class="input-field col s6 m6 l6">
                                    <input id="fecha" type="text" class="validate" value="28/02/2018" />
                                    <label for="fecha">Fecha</label>
                                </div>
                                <div class="input-field col s3 m3 l3">
                                    <input id="mes" type="text" class="validate" value="02" disabled="disabled" />
                                    <label for="mes">Mes</label>
                                </div>
                                <div class="input-field col s3 m3 l3">
                                    <input id="anio" type="text" class="validate" value="2018" disabled="disabled" />
                                    <label for="anio">Año</label>
                                </div>
                                <div class="input-field col s12 m12 l12">
                                    <input id="cliente" type="text" class="validate" value="43000 BERMUDA GENERAL AGENCIES GR OF" />
                                    <label for="cliente">Cliente</label>
                                </div>
                                <div class="input-field col s12 m6 l6">
                                    <input id="canal" type="text" class="validate" value="PRI1PB Canal Puerto Rico Plaza 1" disabled="disabled" />
                                    <label for="canal">Canal</label>
                                </div>
                                <div class="input-field col s6 m12 l6 offset-m6">
                                    <input id="cta" type="text" class="validate" value="999999999999 Cuenta pasivo" disabled="disabled" />
                                    <label for="cta">Cuenta pasivo</label>
                                </div>
                                <div class="input-field col s12 m6 l6 offset-m6">
                                    <input id="cta_pl" type="text" class="validate" value="1111111111111 Cuenta P & L" disabled="disabled" />
                                    <label for="cta_pl">Cuenta P&L</label>
                                </div>
                                <div class="input-field col s12">
                                    <textarea id="textarea1" class="materialize-textarea"></textarea>
                                    <label for="textarea1">Comentarios</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col s12 m6 l6">
                        <div class="card-panel hoverable">
                            <div class="row">
                                <div class="input-field col  s12 m6 l6">
                                    <input id="presup" type="text" class="disabled" value="2000012" disabled="disabled" />
                                    <label for="presup">Presupuesto</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script>        
        var hide = getCookie('menu.hide');
        if (hide == 'true') {
            var c = document.getElementById("container").style.paddingLeft = '0px';
            document.getElementById('slide-out').style.transform = 'translateX(-105%)';
        } else {
            var c = document.getElementById("container").style.paddingLeft = '300px';
            document.getElementById('slide-out').style.transform = 'translateX(0%)';
        }
</script>
</body>
</html>
