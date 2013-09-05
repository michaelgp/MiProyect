<div id="agregar-categoria" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="modalNombreLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3 id="modalNombreLabel">Agregar Categoria</h3> 
            </div>
            <div class="modal-body">
                <fieldset>
                    <form method="post" action="/Home/AddTansaccionNombre" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="tipo">Tipo de Categoria </label>
                            <div>
                                <div>
                                    <input type="text" class="form-control" id="tipo" name="tipo">
                                </div>
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
