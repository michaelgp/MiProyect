<div id="agregar-contacto" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="modalNombreLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3 id="modalNombreLabel">Agregar Cliente</h3> 
            </div>
            <div class="modal-body">
                <fieldset>
                    <form method="post" action="/Home/AddTansaccionNombre" enctype="multipart/form-data">
                        <div class="form-group">
                            <div class="radio">
                                <label>
                                    Principal: 
                                    <input type="radio" name="principal" id="optionsRadios1" value="1">
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nombre">Nombres: </label>
                            <div>
                                <input type="text" class="form-control" id="nombre" name="nombre">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="apellido">Apellidos: </label>
                            <div>
                                <input type="text" class="form-control" id="apellido" name="apellido">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="puesto">Puesto: </label>
                            <div>
                                <input type="text" class="form-control" id="puesto" name="puesto">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="departamento">Departamento: </label>
                            <div>
                                <input type="text" class="form-control" id="departamento" name="departamento">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="correo">Correo: </label>
                            <div>
                                <input type="text" class="form-control" id="correo" name="correo">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="correosec">Correo Secundario: </label>
                            <div>
                                <input type="text" class="form-control" id="correosec" name="correosec">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="telefono">Telefono: </label>
                            <div>
                                <input type="text" class="form-control" id="telefono" name="telefono">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </div>
                    </form>
                </fieldset>
            </div>
        </div>
    </div>
</div>

<div id="agregar-direccion" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="modalNombreLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3 id="modalNombreLabel">Agregar Direccion</h3> 
            </div>
            <div class="modal-body">
                <fieldset>
                    <form method="post" action="/Home/AddTansaccionNombre" enctype="multipart/form-data">
                        <div class="form-group">
                            <div class="radio">
                                <label>
                                    Principal: 
                                    <input type="radio" name="principal" id="optionsRadios1" value="1">
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sucursal">Nombre Sucursal: </label>
                            <div>
                                <input type="text" class="form-control" id="sucursal" name="sucursal">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="calle">Calle: </label>
                            <div>
                                <input type="text" class="form-control" id="calle" name="calle">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sector">Sector: </label>
                            <div>
                                <input type="text" class="form-control" id="sector" name="sector">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="provincia">Provincia: </label>
                            <div>
                                <input type="text" class="form-control" id="provincia" name="provincia">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="pais">Pais: </label>
                            <div>
                                <input type="text" class="form-control" id="pais" name="pais">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </div>
                    </form>
                </fieldset>
            </div>
        </div>
    </div>
</div>
