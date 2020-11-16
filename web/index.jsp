<%-- 
    Document   : index
    Created on : 12-nov-2020, 11:15:31
    Author     : PCGAMING
--%>

<%@page import="modelo.Conexion"%>
<%@page import="java.util.LinkedList"%>
<%@page import="modelo.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="/RapidFast/admin/css/stylehome.css">
        <link rel="stylesheet" type="text/css" href="/RapidFast/admin/css/bar.css">
        <!--estilo buscador -->
        <link rel="stylesheet" type="text/css" href="/RapidFast/admin/css/buscador.css">
        <!--fin estilo buscador -->
        <script type="text/javascript" src="/EXAMEN_T3/admin/js/progresbar.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Magra&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet"> 
        <!--ICONOS -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>Rapidfast</title>
        <link rel="shortcut icon" href="admin/image/tienda.png"/> 
    </head>
    <%@include file="navegacion.jsp" %>
    <body>
        <div class="row ">
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">

            </div>
        </div> 
        <div class="row">
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12" style="padding:0">
                <div class="row" id="panel" style="margin:0">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                        <div id="vista" class="carousel slide" data-ride="carousel">
                            <ul class="carousel-indicators">
                                <li data-target="#vista" data-slide-to="0" class="active"></li>
                                <li data-target="#vista" data-slide-to="1"></li>
                                <li data-target="#vista" data-slide-to="2"></li>
                            </ul>

                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img id="spon" src="admin/image/manzana.jpg">
                                </div>
                                <div class="carousel-item">
                                    <img id="spon" src="admin/image/pollo.jpg">
                                </div>
                                <div class="carousel-item">
                                    <img id="spon" src="admin/image/todo.jpg">
                                </div>
                            </div>

                            <a class="carousel-control-prev" href="#vista" data-slide="prev">
                                <span class="carousel-control-prev-icon"></span>
                            </a>
                            <a class="carousel-control-next" href="#vista" data-slide="next">
                                <span class="carousel-control-next-icon"></span>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </div>  

        <!-- VISTA DE LOS PRODUCTOS -->  
        <div class="row">
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">    
                <%
                    Conexion conn = new Conexion();
                    producto pro = new producto(conn);
                    LinkedList<producto> lista = pro.ListarProducto();%>
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mt-5">
                        <div class="row" id="promit">
                            <% for (int i = 0; i < lista.size(); i++) {
                                    if (lista.get(i).getStock() > 0) {%>
                            <div  id="inprod" class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-3">
                                <div id="margen">
                                    <img  class="img-thumbnail" id="cargaimagen" src="<%=lista.get(i).getImagen()%>">
                                    <p id="product" ><%=lista.get(i).getNombre()%> </p>
                                    <div id="produ"class="row">
                                        <div class="col-12 col-sm-12 col-md-8 col-lg-8 col-xl-8">
                                            <div class="container">
                                                <input id="VerProducto" type="button" class="btn btn-danger" value="Ver Producto" onclick="verproducto(<%=lista.get(i).getId_producto()%>)" style="margin-left: -10px">                                          
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
                                            <div class="row">
                                                <!-- agregasr-->
                                                <a id="canasta" href="" class="btn btn-success disabled" ><img id="newc" src="admin/image/tienda.png"></a>
                                                <!-- /////////////-->         
                                            </div>
                                            <div id="stockkk">
                                                <span style="color: white;"><%=lista.get(i).getStock()%></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>        
                            </div>          
                            <%}
                                }%>  
                        </div>
                    </div>
                </div>
            </div>           
        </div>                    

        <!--  FIN --  VISTA DE LOS PRODUCTOS -->   

        <!-- MODALS -->
        <%@include file="modals.jsp" %>
        <!-- FOOTER-->
        <%@include file="footer_index.jsp" %>

        
        <script>
            function verproducto(idpro)
            {
                window.open("/RapidFast/producto.jsp?id_prod=" + idpro + "", "_self");
            }
        </script>
        
  

    </body>
</html>

