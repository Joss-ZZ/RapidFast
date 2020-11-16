package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.*;
import java.util.LinkedList;

public final class Iniciar_005fsesion_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"admin/css/stylehome.css\">\r\n");
      out.write("        <script type=\"text/javascript\" src=\"/RapidFast/admin/js/validariniciar.js\"></script>\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    ");
 Reporte_cliente newcliente=new Reporte_cliente();
       LinkedList<Reporte_cliente> lista= newcliente.reporte_clientes();
       int nro=10;
         for (int i = 0; i <lista.size(); i++) {
                 if(nro==lista.get(i).getId()){
                     nro++;
                 }
         }
    
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("        <form  name=\"iniciar\" id=\"inciar\" action=\"/RapidFast/mante_usuario\" method=\"post\">    \r\n");
      out.write("            <div class=\"modal-body\">\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <input type=\"hidden\" class=\"form-control\" value=\"");
      out.print(nro );
      out.write("\" name=\"id_usuario\">   \r\n");
      out.write("                </div>\r\n");
      out.write("                <div id=\"alerta\"></div>\r\n");
      out.write("                    \r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6\" >\r\n");
      out.write("                            <label class=\"col-form-label\">Username</label>\r\n");
      out.write("                            <input id=\"username\" type=\"email\" class=\"form-control\"  name=\"username\" placeholder=\"@example.com\" required=\"true\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6\" >\r\n");
      out.write("                            <label class=\"col-form-label\">Password</label>\r\n");
      out.write("                            <input  id=\"claves\" type=\"password\" class=\"form-control\"  name=\"clave\" placeholder=\"Ingrese contraseña\" required=\"true\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>   \r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6\" >\r\n");
      out.write("                            <label class=\"col-form-label\">Nombre:</label>\r\n");
      out.write("                            <input id=\"nombre\" type=\"text\" class=\"form-control\"  name=\"nombre\" required=\"true\"> \r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6\" >\r\n");
      out.write("                            <label class=\"col-form-label\">Apellidos:</label>\r\n");
      out.write("                            <input id=\"apellido\" type=\"text\" class=\"form-control\"  name=\"apellido\" required=\"true\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6\" >\r\n");
      out.write("                            <label  class=\"col-form-label\">Tipo de documento:</label>\r\n");
      out.write("                            <select id=\"tipodocumento\" name=\"tipodocumento\" class=\"custom-select\" required=\"true\">\r\n");
      out.write("                                <option value=\" \" selected>Selecciona</option>\r\n");
      out.write("                                <option value=\"DNI\">DNI</option>\r\n");
      out.write("                                <option value=\"Pasaporte\">Pasaporte</option>\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6\" >\r\n");
      out.write("                            <label  class=\"col-form-label\">Documento:</label>\r\n");
      out.write("                            <input id=\"nro_documento\" type=\"text\" class=\"form-control\" name=\"nro_documento\" required=\"true\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>                \r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                   <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6\" >\r\n");
      out.write("                            <label  class=\"col-form-label\" >Edad</label>\r\n");
      out.write("                            <input id=\"edad\" type=\"number\" class=\"form-control\" name=\"edad\" required=\"true\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6\" style=\"padding-left: 6%;\">\r\n");
      out.write("                            <div class=\"row\" >\r\n");
      out.write("                               <label class=\"col-form-label\">Genero</label> \r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"row\" >\r\n");
      out.write("                                <select name=\"genero\" id=\"\">\r\n");
      out.write("                                    <option value=\"\">Seleccionar la opcion</option>\r\n");
      out.write("                                    <option value=\"masculino\">Masculino</option>\r\n");
      out.write("                                    <option value=\"femenino\">Femenino</option>\r\n");
      out.write("                                </select>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>          \r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <label class=\"col-form-label\">Direccion:</label>\r\n");
      out.write("                    <input id=\"direccion\" type=\"text\" class=\"form-control\" name=\"direccion\" required=\"true\">\r\n");
      out.write("                </div>    \r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"modal-footer\">\r\n");
      out.write("                <button type=\"button\" class=\"btn btn-light\" data-dismiss=\"modal\">Cancelar</button>\r\n");
      out.write("                <input type=\"submit\" class=\"btn btn-dark\" name=\"registrar\" value=\"Guardar\" onclick=\"validariniciar()\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </form>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
