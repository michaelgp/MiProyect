<%-- 
    Document   : Producto
    Created on : 09/04/2013, 02:42:31 PM
    Author     : Antonio Duran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="layout/import-estilos.jsp" %>
        <%@include file="modales/producto-modal.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GesCo - Productos</title>
    </head>
    <body>
        <!--Cabezera-->
        <%@include file="layout/header.jsp" %>
        <br/><br/><br/><br/>

        <div class="principal-tamano centrar panel panel-default">
            <div class="panel-heading">  Productos
                <form class="navbar-right">
                    <a data-toggle="modal" href="#agregar-producto" class="btn-sm btn-primary">Agregar Contacto</a>
                </form>
            </div>
            <div class="panel-body">

                <div class="form-inline" >
                    <div class="form-group">
                        <label  for="ano">Año del Reporte</label>
                        <select class="form-control" name="ano" id="ano">
                            <option>1</option>
                            <option>2</option>
                        </select>
                    </div>
                    <div class="form-group navbar-right">
                        <label for="buscar">Buscar</label>
                        <input placeholder="Buscar" type="text" id="buscar" name="buscar" class="form-control"/>
                    </div>
                </div>

                <br/>
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>Codigo</th>
                            <th>Producto</th>
                            <th>Estado</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td><a href="#"><img src="imagenes/edit.png"/></a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td><a href="#"><img src="imagenes/edit.png"/></a></td>
                        </tr>
                    </tbody>
                </table> 

                <div class="bs-example">
                    <ul class="pager">
                        <li><a href="#">Previous</a></li>
                        <li><a href="#">Next</a></li>
                    </ul>
                </div>

            </div>
        </div>

        <!--Footer-->
        <%@include file="layout/footer.jsp" %>
    </body>
</html>
