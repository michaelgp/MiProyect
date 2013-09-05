<%-- 
    Document   : cliente-agregar
    Created on : 09/04/2013, 03:48:21 PM
    Author     : Antonio Duran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="layout/import-estilos.jsp" %>
        <%@include file="modales/cliente-modal.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Unknown - Agregar Cliente</title>
    </head>
    <body>
        <!--Cabezera-->
        <%@include file="layout/header.jsp" %>
        <br/><br/><br/><br/>
        <div class="principal-tamano centrar panel panel-default">
            <div class="panel-heading"><img src="imagenes/user_add.png"/>  Agregar Cliente</div>
            <div class="panel-body">
                <div class="col-lg-6">
                    <form class="bs-example form-horizontal">
                        <fieldset>
                            <div class="form-group">
                                <label for="nombre" class="col-lg-2 control-label">Nombre de la Empresa: </label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="rnc" class="col-lg-2 control-label">RNC: </label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="rnc" name="rnc" placeholder="RNC">
                                    <span class="help-block">Informacion: Un RNC es necesario para la facturacion.</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="select" class="col-lg-2 control-label">Estatus: </label>
                                <div class="col-lg-10">
                                    <select class="form-control" id="select">
                                        <option>Prospecto</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 control-label">Estado: </label>
                                <div class="col-lg-10">
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                                            Activo
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="select" class="col-lg-2 control-label">Sector Economico: </label>
                                <div class="col-lg-10">
                                    <select class="form-control" id="select">
                                        <option>Ganadero (Agricola)</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="correo" class="col-lg-2 control-label">Correo de la Empresa: </label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="correo" id="correo" placeholder="Correo">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="telefono" class="col-lg-2 control-label">Telefono de la Empresa: </label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="telefono" id="telefono" placeholder="Telefono">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="pagweb" class="col-lg-2 control-label">Pagina web: </label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="pagweb" id="pagweb" placeholder="Pagina web">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-lg-10 col-lg-offset-2">
                                    <a data-toggle="modal" href="#agregar-direccion" class="btn-sm btn-primary">Agregar Direccion</a>

                                    <div class="panel panel-default">
                                        <div class="panel-heading"> Direcciones</div>
                                        <div class="panel-body">
                                            <div class="panel-body">
                                                <table class="table table-striped table-bordered table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th>Sucursal</th>
                                                            <th>Calle</th>
                                                            <th>Sector</th>
                                                            <th>Provincia</th>
                                                            <th>Pais</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
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
                                                        </tr>
                                                        <tr>
                                                            <td>3</td>
                                                            <td>Column content</td>
                                                            <td>Column content</td>
                                                            <td>Column content</td>
                                                            <td>Column content</td>
                                                        </tr>
                                                    </tbody>
                                                </table> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-lg-10 col-lg-offset-2">
                                    <a data-toggle="modal" href="#agregar-contacto" class="btn-sm btn-primary">Agregar Contacto</a>

                                    <div class="panel panel-default">
                                        <div class="panel-heading"> Contactos</div>
                                        <div class="panel-body">
                                            <div class="panel-body">
                                                <table class="table table-striped table-bordered table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th>Nombres</th>
                                                            <th>Apellidos</th>
                                                            <th>Puesto</th>
                                                            <th>Departamento</th>
                                                            <th>Correo</th>
                                                            <th>Correo Secundario</th>
                                                            <th>Telefono</th>
                                                            <th>Ext</th>
                                                            <th>Movil</th>
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
                                                            <td>Column content</td>
                                                        </tr>
                                                    </tbody>
                                                </table> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-lg-10 col-lg-offset-2">
                                    <button class="btn btn-primary">Agregar Actividad</button>  
                                </div>
                            </div>

                            <hr/>

                            <div class="form-group">
                                <div class="col-lg-10 col-lg-offset-2">
                                    <button type="submit" class="btn btn-primary">Guardar Cambios</button> 
                                    <button class="btn btn-default">Cancelar</button> 
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
        <!--Footer-->
        <%--<%@include file="layout/footer.jsp" %>--%>
    </body>
</html>
