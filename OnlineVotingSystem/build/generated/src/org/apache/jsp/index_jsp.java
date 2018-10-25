package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/Header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"col-md-7 col-sm-6 highlight\">\n");
      out.write("\t<div id=\"myContainer\" style=\" width: 100%;\">\n");
      out.write("\n");
      out.write(" \t\t\n");
      out.write("\t\t\n");
      out.write("\t<div ng-view></div>\n");
      out.write("\t\n");
      out.write("        </div>\t\n");
      out.write("\t\t\n");
      out.write("    <div  style=\"height: 350px; width: 100%; overflow: hidden; cursor: pointer\">\n");
      out.write("\t<div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\" data-interval=\"2000\">\n");
      out.write("\n");
      out.write("\t\t<!-- Indicators -->\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- Wrapper for slides -->\n");
      out.write("\t\t<div class=\"carousel-inner\" role=\"listbox\">\n");
      out.write("\t\t\t<div class=\"item active\">\n");
      out.write("\t\t\t\t<img src=\"images/3.jpg\" alt=\"Vote1\"\n");
      out.write("\t\t\t\t\tstyle=\"height: 350px; width: 100%; overflow: hidden; cursor: pointer\">\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"item active\">\n");
      out.write("\t\t\t\t<img src=\"images/2.jpg\" alt=\"Chania\"\n");
      out.write("\t\t\t\t\tstyle=\"height: 350px; width: 100%; overflow: hidden; cursor: pointer\">\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"item\">\n");
      out.write("\t\t\t\t<img src=\"images/3.jpg\" alt=\"Chania\"\n");
      out.write("\t\t\t\t\tstyle=\"height: 350px; width: 100%; overflow: hidden; cursor: pointer\">\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"item\">\n");
      out.write("\t\t\t\t<img src=\"images/1.jpg\" alt=\"Flower\"\n");
      out.write("\t\t\t\t\tstyle=\"height: 350px; width: 100%; overflow: hidden; cursor: pointer\">\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t\t<!-- Left and right controls -->\n");
      out.write("\t\t\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<br/>\n");
      out.write("\t\t<div class=\"col-md-5 col-sm-3 highlight\">\n");
      out.write("\t\t\t<div class=\"panel panel-primary\">\n");
      out.write("\t\t\t\t<div class=\"panel-heading\" style=\"background-color: #333 \">\n");
      out.write("                                    <h3  class=\"panel-title\" style=\"text-align: center\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</h3>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"panel-body fixed-panel\"\n");
      out.write("\t\t\t\t\tstyle=\"text-align: justify; font-size: 15px; height: 310px;\">\n");
      out.write("\t\t\t\t\t\t<form class=\"form-horizontal\" action=\"Login\" method=\"post\">\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                      <label class=\"control-label col-sm-2\" for=\"vid\">Passport&nbsp;ID&nbsp;:</label>\n");
      out.write("                                                      <div class=\"col-sm-10\">\n");
      out.write("                                                          <input type=\"text\" class=\"form-control\" name=\"vid\" placeholder=\"Enter passport or Citizen card no.\" required=\"true\">\n");
      out.write("                                                      </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                      <label class=\"control-label col-sm-2\" for=\"pwd\">Password&nbsp;:</label>\n");
      out.write("                                                      <div class=\"col-sm-10\"> \n");
      out.write("                                                        <input type=\"password\" class=\"form-control\" name=\"pwd\" placeholder=\"Enter password\" required=\"true\">\n");
      out.write("                                                      </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"form-group\"> \n");
      out.write("                                                      <div class=\"col-sm-offset-2 col-sm-10\">\n");
      out.write("                                                          <button type=\"submit\" class=\"btn btn-success\">Login</button>\n");
      out.write("                                                      </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"form-group\"> \n");
      out.write("                                                      <div class=\"col-sm-offset-2 col-sm-10\">\n");
      out.write("                                                        <h5><a>Forget password...!</a></h5>\n");
      out.write("                                                      </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"form-group\"> \n");
      out.write("                                                      <div class=\"col-sm-offset-2 col-sm-10\">\n");
      out.write("                                                          <h5 style=\"color: red\">");

                                                                    if(request.getAttribute("invalid")==null)
                                                                    {
                                                                     
                                                                    }else
                                                                    {
                                                                    out.print(request.getAttribute("invalid"));
                                                                    }
                                                                    
      out.write("</h5>\n");
      out.write("                                                      </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                      \n");
      out.write("                                                  </form>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<br/>\n");
      out.write("    <br/>\n");
      out.write("    <br/>\n");
      out.write("    <br/>\n");
      out.write("    <br/>\n");
      out.write("  \n");
      out.write("\t\t</div>\n");
      out.write("                                                      \n");
      out.write("        <div>\n");
      out.write("       \n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/footer.jsp", out, false);
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
