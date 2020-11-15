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
                                                <input id="VerProducto" type="button" class="btn btn-danger" value="Ver Producto" onclick="verproducto(<%=lista.get(i).getId_producto()%>)">                                          
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

        <div class="row" id="foot">
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                <footer>
                    <div class="container">
                        <h2>Contactos</h2><br>
                        <ul class="nav nav-tabs nav-justified" role="tablist">
                            <li class="nav-item" >
                                <a class="nav-link active" data-toggle="tab" href="#home">Home</a>
                            </li>
                            <li class="nav-item" >
                                <a class="nav-link " data-toggle="tab" href="#nosotros">Nosotros</a>
                            </li>
                            <li class="nav-item" >
                                <a class="nav-link " data-toggle="tab" href="#map">Ubicanos</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div id="home" class="container tab-pane active"><br>
                                <div class="row">
                                    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <a class="btn btn-outline-success" href="mailto:someone@example.com">@</a>  
                                            </div>
                                            <input type="email" class="form-control" placeholder="@example.com">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                        <span>Comunicate con nosotros para mas informacion </span><a href=""><u>Terminos y condiciones</u></a>
                                    </div>
                                </div>
                            </div>
                            <div id="nosotros" class="container tab-pane fade"><br>
                                <div class="row">
                                    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                        <div class="row">
                                            <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 "id="rig">
                                                <img id="ndato" src="admin/image/google.png">
                                            </div>
                                            <div class="col-12 col-sm-12 col-md-8 col-lg-8 col-xl-8">
                                                <p id="sip">RapidFast@gmail.com</p>
                                                <p id="sip">servicio@RapidFast.com</p>
                                                <p id="sip">RapidFast@htmail.com</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                        <div class="row">
                                            <div class="col-12 col-sm-12 col-md-4 col-lg-4 col-xl-4 "id="rig">
                                                <img id="ndato" src="admin/image/what.png">
                                            </div>
                                            <div class="col-12 col-sm-12 col-md-8 col-lg-8 col-xl-8">
                                                <p id="sip">928745689</p>
                                                <p id="sip">982617425</p>
                                                <p id="sip">978569102</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>  
                            </div>
                            <div id="map" class="container tab-pane fade"><br>
                                <h3>Ubicanos</h3>
                                <iframe id="foot2" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5516.445867042784!2d-77.03057059787703!3d-12.13155461355248!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105b7e1b4b5a533%3A0xa549043226dcfb18!2sLarcomar!5e0!3m2!1ses-419!2spe!4v1592413023183!5m2!1ses-419!2spe" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                            </div>
                        </div>
                    </div>     
                </footer> 
            </div>        
        </div>
        <div class="row">
            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                <nav class="navbar navbar-expand-md  navbar-dark fixed-bottom " id="nv">
                    <ul class="navbar-nav">
                        <li class="nav-item " >
                            <img id="logo2" src="admin/image/logo2.png">
                        </li>
                        <li class="nav-item " >
                            <a class="nav-link" href="https://www.facebook.com" target="_blank"><img  id="logoabajo" src="admin/image/face.png" class="rounded-circle"></a>
                        </li>
                        <li class="nav-item" >
                            <a class="nav-link" href="https://www.instagram.com/?hl=es-la" target="_blank"><img id="logoabajo" src="admin/image/insta.png" class="rounded-circle"></a>
                        </li>
                        <li class="nav-item" >
                            <a class="nav-link" href="https://twitter.com/login?lang=es" target="_blank"><img id="logoabajo" src="admin/image/twitter.png" class="rounded-circle"></a>
                        </li>
                        <li class="nav-item" >
                            <a class="nav-link" href="https://www.youtube.com/" target="_blank"><img id="logoabajo" src="admin/image/youtube.png" class="rounded-circle"></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

        <script>
            function verproducto(idpro)
            {
                window.open("/RapidFast/producto.jsp?id_prod=" + idpro + "", "_self");
            }
        </script>
    </body>
</html>

