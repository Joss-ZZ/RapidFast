
<%@page import="modelo.Usuario"%>

<%
    Usuario user = (Usuario) session.getAttribute("usuario");
%>

<!--BARRA DE NAVEGACION-->
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="index.jsp">Inicio</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="registro.jsp">Registro<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="RecuperarCuenta.jsp" style=""> Olvidaste tu clave? </a>
            </li>

        </ul>

        <% if (user == null) {%>
            <a href="#" type="button" class="btn btn-light" data-toggle="modal" data-target="#ModalLogin" style="margin-right: 50px">Ingresar</a>
        <%} else {%>
            <!--  BOTON DE CARRITO DE COMPRA**-->
            <div>
                <a href="" type="button" class="btn btn-light" data-toggle="modal" data-target="#mymodal">
                    <img id="carro" src="/EXAMEN_T3/admin/image/carrito.png">
                </a>
            </div>
            <!--  FIN BOTON DE CARRITO DE COMPRA**-->

            <!--     BOTON DE WISHLIST *  ***-->
            <div id="wish">
                <a href="" type="button" class="btn btn-light" data-toggle="modal" data-target="#ModalWishlist">
                    <img id="wishlist" src="admin/image/wishlist.png">
                </a>
            </div>

            <a href="${pageContext.request.contextPath}/CerrarSesion" class=""style=""><i class="material-icons">exit_to_app</i></a>
        <%}%>

    </div>
</nav>
<!-- FIN -- BARRA DE NAVEGACION-->

