<%-- 
    Document   : marketing
    Created on : 09/04/2013, 02:42:00 PM
    Author     : Antonio Duran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GesCo - Marketing</title>
        <%@include file="layout/import-estilos.jsp" %>
    </head>
    <body>
        <!--Cabezera-->
        <%@include file="layout/header.jsp" %>
        <br/><br/><br/><br/>

        <div class="principal-tamano centrar panel panel-default">
            <div class="panel-heading"><img src="imagenes/edit.png"/>  Actividad del Cliente
                <form class="navbar-right">
                    <button type="submit" class="btn-sm btn-primary">Agregar Actividad</button>
                </form>
            </div>
            <div class="panel-body">
                <div>
                    <div class="form-group col-lg-3">
                        <label for="empresa">Empresa: </label>
                        <select id="empresa" name="empresa" class="form-control">
                            <option>Seleccione una Opcion</option>
                        </select>
                    </div>
                </div>
                <div>
                    <div class="form-group col-lg-3">
                        <label for="estatus">Estatus: </label>
                        <input type="text" id="estatus" name="estatus" class="form-control"/>
                    </div>
                </div>

                <table class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>Codigo</th>
                            <th>Empresa</th>
                            <th>Actividad</th>
                            <th>Responsable</th>
                            <th>Estado</th>
                            <th>Fecha de Inicio</th>
                            <th>Fecha de Fin</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                    </tbody>
                </table> 
            </div>
        </div>

        <!--Footer-->
        <%@include file="layout/footer.jsp" %>
    </body>
</html>
