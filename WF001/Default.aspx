<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WF001.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0" />
    <meta name="theme-color" content="#d81b60" />
    <title>Lista</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="materialize/css/g-materialize.css" rel="stylesheet" />
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
        <li class="bold"><a href="#"><i class="material-icons">apps</i>WorkPlace</a></li>
        <li class="no-padding">
            <ul class="collapsible collapsible-accordion">
                <li class="bold"><a class="collapsible-header waves-effect waves-teal"><i class="material-icons">book</i>Catálogos</a>
                    <div class="collapsible-body">
                        <ul>
                            <li><a href="color.html">Color</a></li>
                            <li><a href="grid.html">Grid</a></li>
                        </ul>
                    </div>
                </li>
                <li class="bold"><a class="collapsible-header waves-effect waves-teal"><i class="material-icons">sync</i>Sincronización</a>
                    <div class="collapsible-body">
                        <ul>
                            <li><a href="badges.html">Badges</a></li>
                            <li><a href="buttons.html">Buttons</a></li>
                        </ul>
                    </div>
                </li>
                <li class="bold"><a class="collapsible-header waves-effect waves-teal"><i class="material-icons">trending_up</i>Presupuesto</a>
                    <div class="collapsible-body">
                        <ul>
                            <li><a href="autocomplete.html">Autocomplete</a></li>
                            <li><a href="checkboxes.html">Checkboxes</a></li>
                        </ul>
                    </div>
                </li>
                <li class="bold"><a class="collapsible-header waves-effect waves-teal"><i class="material-icons">thumbs_up_down</i>Acuerdo Comercial</a>
                    <div class="collapsible-body">
                        <ul>
                            <li><a href="autocomplete.html">Autocomplete</a></li>
                            <li><a href="checkboxes.html">Checkboxes</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </li>
        <li class="bold"><a href="#!"><i class="material-icons">account_balance</i>Solicitudes financieras</a></li>
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
                        <h4 class="">Workplace</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6 m2 l2">
                        <input id="documento" type="text" class="validate" />
                        <label for="documento">No. documento</label>
                    </div>
                    <div class="input-field col s6 m2 l2">
                        <input id="date_ini" type="text" class="datepicker" />
                        <label for="date_ini">Fecha inicio</label>
                    </div>
                    <div class="input-field col s6 m2 l2">
                        <input id="date_fin" type="text" class="datepicker2" />
                        <label for="date_fin">Fecha fin</label>
                    </div>
                    <script>
                        var elem = document.querySelector('.datepicker');
                        var options = [];
                        var instance = M.Datepicker.init(elem, options);
                        var elem2 = document.querySelector('.datepicker2');
                        var instance2 = M.Datepicker.init(elem2, options);
                    </script>
                    <div class="input-field col s6 m3 l3">
                        <input id="cliente" type="text" class="validate" />
                        <label for="cliente">Cliente</label>
                    </div>
                    <div class="input-field col s6 m3 l3">
                        <input id="agente" type="text" class="validate" />
                        <label for="agente">Agente</label>
                    </div>
                </div>
                <div class="row">
                    <ul id="coll_1" class="collapsible expandable">
                        <li class="active">
                            <div class="collapsible-header">
                                <i class="material-icons">filter_drama</i>Provisiones
                                <span class="badge"><a class="waves-effect waves-light btn-floating btn-small" href="Provision/Nuevo.aspx"><i class="material-icons">add</i></a></span>
                            </div>
                            <div class="collapsible-body">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Documento</th>
                                            <th>Fecha</th>
                                            <th>Cliente</th>
                                            <th>Agente</th>
                                            <th>Monto</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>100011</td>
                                            <td>09/02/2018</td>
                                            <td>9901 Nueva Walmart de México</td>
                                            <td>G110 Francisco Maldonado</td>
                                            <td>$ 85 000.00</td>
                                        </tr>
                                        <tr>
                                            <td>100012</td>
                                            <td>10/02/2018</td>
                                            <td>8888 Tiendas Chedraui</td>
                                            <td>G110 Francisco Maldonado</td>
                                            <td>$ 60 000.00</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="row">
                    <ul id="coll_2" class="collapsible expandable">
                        <li class="active">
                            <div class="collapsible-header">
                                <i class="material-icons">place</i>Notas de crédito
                                <span class="badge"><a class="waves-effect waves-light btn-floating btn-small"><i class="material-icons">add</i></a></span>
                            </div>
                            <div class="collapsible-body">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Documento</th>
                                            <th>Fecha</th>
                                            <th>Cliente</th>
                                            <th>Agente</th>
                                            <th>Monto</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>100011</td>
                                            <td>09/02/2018</td>
                                            <td>9901 Nueva Walmart de México</td>
                                            <td>G110 Francisco Maldonado</td>
                                            <td>$ 85 000.00</td>
                                        </tr>
                                        <tr>
                                            <td>100012</td>
                                            <td>10/02/2018</td>
                                            <td>8888 Tiendas Chedraui</td>
                                            <td>G110 Francisco Maldonado</td>
                                            <td>$ 60 000.00</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="row">
                    <ul id="coll_3" class="collapsible expandable">
                        <li class="active">
                            <div class="collapsible-header">
                                <i class="material-icons">whatshot</i>Ordenes de pago
                                <span class="badge"><a class="waves-effect waves-light btn-floating btn-small"><i class="material-icons">add</i></a></span>
                            </div>
                            <div class="collapsible-body">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Documento</th>
                                            <th>Fecha</th>
                                            <th>Cliente</th>
                                            <th>Agente</th>
                                            <th>Monto</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>100011</td>
                                            <td>09/02/2018</td>
                                            <td>9901 Nueva Walmart de México</td>
                                            <td>G110 Francisco Maldonado</td>
                                            <td>$ 85 000.00</td>
                                        </tr>
                                        <tr>
                                            <td>100012</td>
                                            <td>10/02/2018</td>
                                            <td>8888 Tiendas Chedraui</td>
                                            <td>G110 Francisco Maldonado</td>
                                            <td>$ 60 000.00</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </li>
                    </ul>
                </div>
                <script>
                        var elem = document.getElementById('coll_1');
                        var options = {
                            accordion: false
                        }
                        var instance = M.Collapsible.init(elem, options);
                        var elem2 = document.getElementById('coll_2');
                        var options = [];
                        var instance2 = M.Collapsible.init(elem2, options);
                        var elem3 = document.getElementById('coll_3');
                        var options = {
                            accordion: false
                        }
                        var instance3 = M.Collapsible.init(elem3, options);
                </script>
            </form>
        </div>
    </div>
    <script>        
                        //var hide = getCookie('menu.hide');
                        //if (hide == 'true') {
                        //    var c = document.getElementById("container").style.paddingLeft = '0px';
                        //    document.getElementById('slide-out').style.transform = 'translateX(-105%)';
                        //} else {
                        //    var c = document.getElementById("container").style.paddingLeft = '300px';
                        //    document.getElementById('slide-out').style.transform = 'translateX(0%)';
                        //}
</script>
</body>
</html>
