<%-- 
    Document   : cliente
    Created on : 09/04/2013, 02:41:43 PM
    Author     : Antonio Duran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Unknown - Cliente/Prospectos</title>
        <%@include file="layout/import-estilos.jsp" %>
    </head>
    <body>
        <!--Cabezera-->
        <%@include file="layout/header.jsp" %>
        <br/><br/><br/><br/>

        <div class="principal-tamano centrar panel panel-default">
            <div class="panel-heading"><img src="imagenes/cliente.png"/>  Clientes
                <form class="navbar-right">
                    <button class="btn-sm btn-primary">Agregar Cliente</button>
                </form>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>Codigo</th>
                            <th>Nombre de Empresa</th>
                            <th>Nombre de Contacto</th>
                            <th>Tipo</th>
                            <th>Estado</th>
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
                            <td><a href="#"><img src="imagenes/edit.png"/></a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td><a href="#"><img src="imagenes/edit.png"/></a></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td><a href="#"><img src="imagenes/edit.png"/></a></td>
                        </tr>
                    </tbody>
                </table> 
            </div>
        </div>

        <!--Footer-->
        <%@include file="layout/footer.jsp" %>
    </body>
</html>
