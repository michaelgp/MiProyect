<%-- 
    Document   : index
    Created on : 09/04/2013, 12:56:21 AM
    Author     : Antonio Duran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Unknown - Login</title>
        <%@include file="layout/import-estilos.jsp" %>
        <style>
            #login {
                width: 600px;
            }
            #iconUser {
                height: 100px;
            }
            .form-tamano {
                width: 400px;
            }
            .principal {
                position:absolute;
                left:0;
                right:0;
                margin-left:auto;
                margin-right:auto;
            }
        </style>
    </head>
    <body>
        <!--Cabezera-->
        <%@include file="layout/header.jsp" %>
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

        <div id="login" class="well principal">
            <div class="container">
                <div style="float: left;" class="row col-sm-6 col-md-3">
                    <a id="iconUser" class="thumbnail">
                        <img src="imagenes/usuario.jpg" alt=""/>
                    </a>
                </div>
                <form style="float: right;" class="form-tamano" method="post" action="inicio.jsp">
                    <fieldset>
                        <div class="form-group">
                            <label for="usuario">Usuario</label>
                            <input type="text" id="usuario" class="form-control" placeholder="Usuario">
                        </div>
                        <div class="form-group">
                            <label for="clave">Clave</label>
                            <input type="password" id="clave" class="form-control" placeholder="Clave">
                        </div>
                        <button type="submit" class="btn btn-primary">
                            <img src="imagenes/keys.png"/>Iniciar Sesion
                        </button>
                    </fieldset>
                </form>
            </div>
        </div>
    </body>
</html>