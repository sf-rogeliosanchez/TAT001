﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site_1n.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WF001.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Workplace</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="title" runat="server">
    <h4 class="">Workplace</h4>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="form" runat="server">
    <form id="form1" runat="server">
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
</asp:Content>
