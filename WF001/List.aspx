<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="WF001.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0" />
    <meta name="theme-color" content="#d81b60" />
    <title>Lista</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="materialize/css/materialize.css" rel="stylesheet" />

    <script src="materialize/js/materialize.js"></script>
</head>
<body>
    <div class="navbar-fixed" style="z-index: 999;">
        <nav class="nav-extended">
            <div class="nav-wrapper pink darken-1" <%-- style="background-repeat: repeat-x;background-image: url(/images/header-transient.png);"--%>>
                <a href="#!" class="brand-logo">
                    <img src="images/logo_kellogg.png" /></a>
                <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            </div>
        </nav>
    </div>
    <ul id="slide-out" class="sidenav sidenav-fixed" style="z-index: 998;">
        <li>
            <div class="navbar-fixed">
                <div class="nav-wrapper pink darken-1" style="height: 68px;">
                    <a href="#!" class="brand-logo">
                        <img src="images/logo_kellogg.png" /></a>
                </div>
            </div>
        </li>
        <li>
            <a id="cerrar-menu" href="#!" data-target="slide-out" class="sidenav-close pink darken-1" onclick="cerrar();"><i class="material-icons right white-text" style="margin:0;font-size: 1.3rem;">menu</i></a>
        </li>
        <li>
            <div class="user-view" style="padding: 0">
                <div class="background pink darken-1">
                    <%--<img src="images/office.jpg">--%>
                </div>
                <table>
                    <tr>
                        <td><a href="#!user" style="padding: 0;">
                            <img class="circle" src="images/sf-logo.jpg" /></a></td>
                        <td>
                            <a href="#!name" style="padding: 0;"><span class="white-text name" style="margin: 0;">Iziz Rosales</span></a>
                            <a href="#!email" style="padding: 0;"><span class="white-text email" style="padding: 0;">iziz.rosales@kelloggs.com.mx</span></a>
                            <a href="#!role" style="padding: 0;"><span class="white-text email" style="padding: 0;">Administrador</span></a>
                        </td>
                    </tr>
                </table>
            </div>
        </li>
        <li class="no-padding">
            <ul class="collapsible collapsible-accordion">
                <li class="bold"><a class="collapsible-header waves-effect waves-teal">Catálogos</a>
                    <div class="collapsible-body">
                        <ul>
                            <li><a href="color.html">Color</a></li>
                            <li><a href="grid.html">Grid</a></li>
                        </ul>
                    </div>
                </li>
                <li class="bold"><a class="collapsible-header waves-effect waves-teal">Sincronización</a>
                    <div class="collapsible-body">
                        <ul>
                            <li><a href="badges.html">Badges</a></li>
                            <li><a href="buttons.html">Buttons</a></li>
                        </ul>
                    </div>
                </li>
                <li class="bold"><a class="collapsible-header waves-effect waves-teal">Presupuesto</a>
                    <div class="collapsible-body">
                        <ul>
                            <li><a href="autocomplete.html">Autocomplete</a></li>
                            <li><a href="checkboxes.html">Checkboxes</a></li>
                        </ul>
                    </div>
                </li>
                <li class="bold"><a class="collapsible-header waves-effect waves-teal">Acuerdo Comercial</a>
                    <div class="collapsible-body">
                        <ul>
                            <li><a href="autocomplete.html">Autocomplete</a></li>
                            <li><a href="checkboxes.html">Checkboxes</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </li>
        <li class="bold"><a href="#!">Solicitudes financieras</a></li>

    </ul>
    <script>
        var elem = document.querySelector('.sidenav');
        var options = [];
        var instance = M.Sidenav.init(elem, options);


        var elem = document.querySelector('.collapsible');
        var options = [];
        var instance = M.Collapsible.init(elem, options);

        function abrir(controler) {
            var c = document.getElementById("container").style.paddingLeft = '300px';
        }
        function cerrar() {
            var c = document.getElementById("container").style.paddingLeft = '0px';
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
                        <h1 class=""><%=idioma.tabla %></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12">
                        <asp:Label ID="lblForms" runat="server"></asp:Label>
                    </div>
                </div>
                <table class="highlight">
                    <thead>
                        <tr>
                            <th><%=idioma.nombre %></th>
                            <th><%=idioma.version %></th>
                            <th><%=idioma.precio %></th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>Alvin</td>
                            <td>Eclair</td>
                            <td>$0.87</td>
                        </tr>
                        <tr>
                            <td>Alan</td>
                            <td>Jellybean</td>
                            <td>$3.76</td>
                        </tr>
                        <tr>
                            <td>Jonathan</td>
                            <td>Lollipop</td>
                            <td>$7.00</td>
                        </tr>
                        <tr>
                            <td>Alvin</td>
                            <td>Eclair</td>
                            <td>$0.87</td>
                        </tr>
                        <tr>
                            <td>Alan</td>
                            <td>Jellybean</td>
                            <td>$3.76</td>
                        </tr>
                        <tr>
                            <td>Jonathan</td>
                            <td>Lollipop</td>
                            <td>$7.00</td>
                        </tr>
                        <tr>
                            <td>Alvin</td>
                            <td>Eclair</td>
                            <td>$0.87</td>
                        </tr>
                        <tr>
                            <td>Alan</td>
                            <td>Jellybean</td>
                            <td>$3.76</td>
                        </tr>
                        <tr>
                            <td>Jonathan</td>
                            <td>Lollipop</td>
                            <td>$7.00</td>
                        </tr>
                        <tr>
                            <td>Alvin</td>
                            <td>Eclair</td>
                            <td>$0.87</td>
                        </tr>
                        <tr>
                            <td>Alan</td>
                            <td>Jellybean</td>
                            <td>$3.76</td>
                        </tr>
                        <tr>
                            <td>Jonathan</td>
                            <td>Lollipop</td>
                            <td>$7.00</td>
                        </tr>
                        <tr>
                            <td>Alvin</td>
                            <td>Eclair</td>
                            <td>$0.87</td>
                        </tr>
                        <tr>
                            <td>Alan</td>
                            <td>Jellybean</td>
                            <td>$3.76</td>
                        </tr>
                        <tr>
                            <td>Jonathan</td>
                            <td>Lollipop</td>
                            <td>$7.00</td>
                        </tr>
                        <tr>
                            <td>Alvin</td>
                            <td>Eclair</td>
                            <td>$0.87</td>
                        </tr>
                        <tr>
                            <td>Alan</td>
                            <td>Jellybean</td>
                            <td>$3.76</td>
                        </tr>
                        <tr>
                            <td>Jonathan</td>
                            <td>Lollipop</td>
                            <td>$7.00</td>
                        </tr>
                        <tr>
                            <td>Alvin</td>
                            <td>Eclair</td>
                            <td>$0.87</td>
                        </tr>
                        <tr>
                            <td>Alan</td>
                            <td>Jellybean</td>
                            <td>$3.76</td>
                        </tr>
                        <tr>
                            <td>Jonathan</td>
                            <td>Lollipop</td>
                            <td>$7.00</td>
                        </tr>
                        <tr>
                            <td>Alvin</td>
                            <td>Eclair</td>
                            <td>$0.87</td>
                        </tr>
                        <tr>
                            <td>Alan</td>
                            <td>Jellybean</td>
                            <td>$3.76</td>
                        </tr>
                        <tr>
                            <td>Jonathan</td>
                            <td>Lollipop</td>
                            <td>$7.00</td>
                        </tr>
                        <tr>
                            <td>Alvin</td>
                            <td>Eclair</td>
                            <td>$0.87</td>
                        </tr>
                        <tr>
                            <td>Alan</td>
                            <td>Jellybean</td>
                            <td>$3.76</td>
                        </tr>
                        <tr>
                            <td>Jonathan</td>
                            <td>Lollipop</td>
                            <td>$7.00</td>
                        </tr>
                        <tr>
                            <td>Alvin</td>
                            <td>Eclair</td>
                            <td>$0.87</td>
                        </tr>
                        <tr>
                            <td>Alan</td>
                            <td>Jellybean</td>
                            <td>$3.76</td>
                        </tr>
                        <tr>
                            <td>Jonathan</td>
                            <td>Lollipop</td>
                            <td>$7.00</td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
