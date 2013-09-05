<script>
    function desplazo(funcion) {
        $(funcion).dropdown();
    }
    funcion()
</script>
<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" onclick="desplazo('.navbar-toggle')" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="#" class="navbar-brand">GesCo</a>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
            <ul class="nav navbar-nav">
                <li><a href="#">Inicio</a></li>
                <li><a href="#">Clientes/Prospectos</a></li>
                <li><a href="#">Marketing</a></li>
                <li><a href="#">Eventos</a></li>
                <li><a href="#">Categorias</a></li>
                <li><a href="#">Productos</a></li>
                <li><a href="#">Ventas</a></li>
                <li class="dropdown">
                    <a href="#" onclick="desplazo('.dropdown-toggle')" class="dropdown-toggle" data-toggle="dropdown">Configuracion<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Usuarios</a></li>
                        <li><a href="#">Panel de Control</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">About us</a></li>
                <li><a href="#">Contact us</a></li>
            </ul>
        </div>
    </div>
</div>