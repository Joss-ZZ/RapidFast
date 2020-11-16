<%-- 
    Document   : RecuperarCuenta
    Created on : 12-nov-2020, 12:19:49
    Author     : PCGAMING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
        <!---->
        <script src="https://cdn.rawgit.com/PascaleBeier/bootstrap-validate/v2.2.0/dist/bootstrap-validate.js" ></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recuperar Cuenta</title>
         <script src="admin/js/validar_recpcuenta.js"> </script>
    </head>
    <!--BARRA DE NAVEGACION--> 
    <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="index.jsp">Inicio</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="registro.jsp">Registro <span class="sr-only">(current)</span></a>
            </li>
          </ul>
        </div>
      </nav>
    <!-- FIN BARRA DE NAVEGACION-->
    <body
        >
    <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-4 col-sm-4 col-md-4 col-lg-4 col-xl-4">
                        
                    </div>
                    <div class="col-4 col-sm-4 col-md-4 col-lg-4 col-xl-4">
                        <div id="alerta"></div>
                        <br>
                        <div class="card card-primary">
                            <br>
                            <div id="titulo" class="card-header text-center">
                                <h3>Recupera tu cuenta </h3>      
                            </div>
                            <div class="text-center">
                                <br>
                                <img src="/RapidFast/admin/image/logo.png" >
                            </div> 
                            <form action="/RapidFast/RecuperarCuenta" id="recuperarcuenta1" name="recuperarcuenta1"  method="post">
                                <div class="card-body">
                                   <div class="input-group mb-4">
                                         <div class="input-group-prepend">
                                             <div class="input-group-text"><i class="fa fa-envelope"></i></div>
                                         </div>
                                       	
                                       <input id="correo" type="text"  name="correo"  class="form-control"  placeholder="Ingrese su correo electrónico" required=""/>
                                    </div> <!--input-group mb-4 -->
                                       
                                   
                                </div>
                                <div class="card-footer">
                                    <input class="form-control btn btn-success" type="submit" name="btnEnviar"  id="btnEnviar" value="Enviar" onclick="validar_recpcuenta();"> 
                                </div>
                            </form>
                              <script src="bootstrap-validate.js"></script>
                            
                              <script>
                                        bootstrapValidate('#correo', 'email:Ingrese un correo válido!')          
                              </script>
                              
                        </div>
                    </div>
                </div>
            </div>               
        </section>
    
    </body>
</html>
