<div id="agregar-producto" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="modalNombreLabel" aria-hidden="true">
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
                            <label for="categoria">Categoria: </label>
                            <div>
                                <select class="form-control" id="categoria" name="categoria">
                                    <option>Software</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="codigo">Codigo: </label>
                            <div>
                                <input type="text" class="form-control" id="codigo" name="codigo">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="descripcion">Descripcion de Producto: </label>
                            <div>
                                <input type="text" class="form-control" id="descripcion" name="descripcion">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="categoria">Tipo Itebis: </label>
                            <div>
                                <select class="form-control" id="categoria" name="categoria">
                                    <option>18%</option>
                                    <option>14%</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="radio">
                                Estado: 
                                <label>
                                    Activo
                                    <input type="radio" name="principal" id="optionsRadios1" value="1">
                                </label>
                                <label>
                                    Inactivo
                                    <input type="radio" name="principal" id="optionsRadios1" value="1">
                                </label>
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
