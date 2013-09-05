<%-- 
    Document   : principal
    Created on : 09/04/2013, 01:28:26 AM
    Author     : Antonio Duran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="layout/import-estilos.jsp" %>
        <title>GesCo - Inicio</title>
        <style>
            #mensual {
                width: 300px;
                /*este es un comentario nuevo agregado por mi */
            }
            #anual {

            }
        </style>
    </head>
    <body>
        <!--Cabezera-->
        <%@include file="layout/header.jsp" %>
        <br/><br/><br/><br/>
        <div class="principal-tamano centrar panel panel-default">
            <div class="panel-heading"><img src="imagenes/pie_chart.png"/>  Reporte de Estados</div>
            <div class="panel-body">
                <div class="bs-example">
                    <ul class="nav nav-tabs" style="margin-bottom: 15px;">
                        <li class="active"><a href="#anual" data-toggle="tab">Anual</a></li>
                        <li><a href="#mensual" data-toggle="tab">Mensual</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade active in" id="anual">
                            
                            <form class="form-inline" >
                                <div class="form-group">
                                    <label class="sr-only" for="ano">Año del Reporte</label>
                                    <select class="form-control" name="ano" id="ano">
                                        <option>2013</option>
                                        <option>2012</option>
                                        <option>2011</option>
                                        <option>2010</option>
                                        <option>2009</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="moneda">Moneda</label>
                                    <select class="form-control" name="mes" id="moneda">
                                        <option>Dolares</option>
                                        <option>Peso Dominicano</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">
                                    Generar Reporte
                                </button>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="mensual">
                            <form>
                                <div class="form-group">
                                    <label for="ano">Año: </label>
                                    <select class="form-control" name="ano" id="ano">
                                        <option>2013</option>
                                        <option>2012</option>
                                        <option>2011</option>
                                        <option>2010</option>
                                        <option>2009</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="mes">Mes: </label>
                                    <select class="form-control" name="mes" id="mes">
                                        <option>Enero</option>
                                        <option>Febrero</option>
                                        <option>Marzo</option>
                                        <option>Abril</option>
                                        <option>Mayo</option>
                                        <option>Junio</option>
                                        <option>Julio</option>
                                        <option>Agosto</option>
                                        <option>Septiembre</option>
                                        <option>Octubre</option>
                                        <option>Noviembre</option>
                                        <option>Diciembre</option>
                                    </select>
                                </div>
                                <!-- Y este es otro comentario, debe aparecer en otro color -->
                                <div class="form-group">
                                    <label for="tipoTransa">Tipo Transaccion: </label>
                                    <select class="form-control" name="tipoTransa" id="tipoTransa">
                                        <option>Cotizacion</option>
                                        <option>Factura</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">
                                    Generar Reporte
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Footer-->
        <%@include file="layout/footer.jsp" %>
    </body>
</html>
