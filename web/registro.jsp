<%-- 
    Document   : Registro
    Created on : 12-nov-2020, 11:16:31
    Author     : PCGAMING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Registrarse</title>
        <link  href="admin/css/styleRegistro.css" rel="stylesheet" />
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
    <body>
       <div class="caja" align="center">
          
            <br>
            <img src="admin/image/tienda.png" height="35px" width="35px" >

            <h1 style="font-size: 23px " align="left" >Crear Tu Cuenta en RapidFast</h1>

            <form name="FRM_Editar" method="post" action=" " >

                <input type="hidden" name="pagina" value="registrar" ><br/>

                <input type="submit" value="Registrar" ><br/>  

                <input type="hidden" value=" " name="idusuario"  ><br/> 
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                      <label for="validationTooltip01">Nombres</label>
                      <input type="text" class="form-control" id="validationTooltip01" value="" required>
             
                    </div>
                    <div class="col-md-6 mb-3">
                      <label for="validationTooltip02">Apellidos</label>
                      <input type="text" class="form-control" id="validationTooltip02" value="" required>
                
                    </div>
                 </div>
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                      <label for="validationTooltip01">Correo</label>
                      <input type="email" class="form-control" id="validationTooltip01" value="" required>
              
                    </div>
                    <div class="col-md-6 mb-3">
                      <label for="validationTooltip02">Clave</label>
                      <input type="text" class="form-control" id="validationTooltip02" value="" required>
                      <div class="valid-tooltip">
                        Looks good!
                      </div>
                    </div>
                 </div>
               <div class="form-row">
                    <div class="col-md-6 mb-3">
                      <label for="validationTooltip01">Tipo Documento</label>
                      <select id="tipodocumento" name="tipodocumento" class="custom-select" required="true">
                                <option value=" " selected>Selecciona</option>
                                <option value="DNI">DNI</option>
                                <option value="Pasaporte">Pasaporte</option>
                      </select>
                    </div>
                    <div class="col-md-6 mb-3">
                      <label for="validationTooltip02">Nro-Documento</label>
                      <input type="text" class="form-control" id="validationTooltip02" value="" required>

                    </div>
                 </div>
                 <div class="form-row">
                    <div class="col-md-6 mb-3">
                      <label for="validationTooltip01">Edad</label>
                      <input type="text" class="form-control" id="validationTooltip02" value="" required>
                    </div>
                    <div class="col-md-6 mb-3">
                      <label for="validationTooltip02">Genero</label>
                       <select id="tipodocumento" name="genero" class="custom-select" required="true">
                                <option value=" " selected>Selecciona</option>
                                <option value="Masculino">MASCULINO</option>
                                <option value="Femenino">FEMENINO</option>
                       </select>
                    </div>
                 </div>
                
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                      <label for="validationTooltip01">Dirección</label>
                      <input type="text" class="form-control" id="validationTooltip02" value="" required>
                    </div>
                 </div>

            </form>
      
    </body>
</html>
