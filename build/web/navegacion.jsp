
<%@page import="modelo.producto"%>
<%@page import="modelo.Conexion"%>
<%@page import="java.util.LinkedList"%>
<%@page import="modelo.Usuario"%>
  
<%
    Usuario user = (Usuario) session.getAttribute("usuario");
%>

<!--BARRA DE NAVEGACION-->
<nav class="navbar navbar-expand-lg navbar navbar-dark fixed-top" id="" style="background-color: #6874f5;">
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
                <a class="nav-link" href="Recuperar_Cuenta.jsp" style=""> Olvidaste tu clave? </a>
            </li>
            
        </ul>
        <!-- AGREGUE EL BUSCADOR-->
        <input type="search"  id="input-search" placeholder="Buscar producto" style="margin-right: 400px"
               <% Conexion buscadorproducto=new Conexion();
                 producto bprod=new producto(buscadorproducto); %>
         >
         <div class="content-search">
             <div class="content-table">
                 <table id="table" >
                     <thead>
                         <tr>
                             <td></td>
                         </tr>
                     </thead>
                     <tbody >
                         <%
                             LinkedList<producto> mostrarproductos;
                             mostrarproductos = bprod.ListarProducto();
                             for (producto j : mostrarproductos) {
                         %>
                         <tr>
                             <td style="background-color:#ffffff;">
                                 <form method="post"
				    action="producto.jsp">
                                     <a>
                                         <button type="submit" class="SubmitButtonClass btn-light" style="border:none; padding:0px"> <img src="<%=j.getImagen()%>"style="width:60px ;"></button> 
                                         <span style="margin-left:5px">
                                             <%=j.getNombre()%> 
                                             <h6 style="margin-left:68px;margin-top:-20px"><%=j.getCaracteristicas()%></h6>
                                         </span>
                                         <input type="hidden" value="<%=j.getId_producto()%>" name="id_prod">  

                                     </a>
                                 </form>   
                             </td>
                         </tr>
                         <%  }   %>    
                     </tbody>
                 </table>
             </div>
         </div>          
      
      <!-- FIN AGREGUE EL BUSCADOR-->
      
        <% if (user == null) {%>
            <a href="#" type="button" class="btn btn-light" data-toggle="modal" data-target="#ModalLogin" style="margin-right: 50px">Ingresar</a>
        <%} else {%>
            <!--  BOTON DE CARRITO DE COMPRA**-->
            <div>
                <a href="" type="button" class="btn btn-light" data-toggle="modal" data-target="#mymodal">
                    <img id="carro" src="/RapidFast/admin/image/carrito.png">
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

