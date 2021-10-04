package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Medix | Login</title>\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"./assets/css/Style.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    \r\n");
      out.write("    <!-- Header -->\r\n");
      out.write("    <div class=\"header\">\r\n");
      out.write("        <img src=\"./assets/images/logo.png\" alt=\"\" width=\"5%\" class=\"logo\">\r\n");
      out.write("        <h1>Medix</h1>\r\n");
      out.write("\r\n");
      out.write("        <img src=\"./assets/images/call.png\" alt=\"\" width=\"2.5%\" class=\"call-icon\">\r\n");
      out.write("        <h3 class=\"call\"><a href=\"tel:9876543210\">Call: 9876543210</a></h3>\r\n");
      out.write("\r\n");
      out.write("        <img src=\"./assets/images/mail.jpg\" alt=\"\" width=\"3%\" class=\"mail-icon\">\r\n");
      out.write("        <h3 class=\"mail\"><a href=\"mailto:medix@gmail.com\">Email: medix@gmail.com</a></h3>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- Sub-header -->\r\n");
      out.write("    <div class=\"sub-header\">\r\n");
      out.write("        <ul>\r\n");
      out.write("            <li><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("            <li><a href=\"about.jsp\">About us</a></li>\r\n");
      out.write("            <li><a href=\"services.jsp\">Services</a></li>\r\n");
      out.write("            <li><a href=\"contact.jsp\">Contact us</a></li>\r\n");
      out.write("            <li><a href=\"login.jsp\" class=\"login active\">Login</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- Login -->\r\n");
      out.write("    <div class=\"login\">\r\n");
      out.write("        <h1>Login</h1>\r\n");
      out.write("\r\n");
      out.write("        <!-- Box -->\r\n");
      out.write("        <div class=\"box\" style=\"height: 300px;\">\r\n");
      out.write("            <form action=\"loginCode.jsp\" style=\"text-align: center;\">\r\n");
      out.write("                <p>Email</p>\r\n");
      out.write("                <input type=\"email\" name=\"email\" placeholder=\"Email\" required> <br> <br>\r\n");
      out.write("                <p>Password</p>\r\n");
      out.write("                <input type=\"password\" name=\"pass\" placeholder=\"Password\" required> <br> <br>\r\n");
      out.write("                <!-- <button type=\"submit\" value=\"login\">Login</button> -->\r\n");
      out.write("                <input type=\"submit\" value=\"Login\">\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>  \r\n");
      out.write("    \r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- Footer -->\r\n");
      out.write("    <div class=\"footer\">\r\n");
      out.write("        <div class=\"section\">\r\n");
      out.write("            <img src=\"./assets/images/logo.png\" alt=\"\" width=\"40%\" height=\"20%\" class=\"logo\">\r\n");
      out.write("            <h1 style=\"margin: 0; margin-top: 20px;\">Medix</h1>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"section\">\r\n");
      out.write("            <h4>Links</h4>\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("                <li><a href=\"about.jsp\">About us</a></li>\r\n");
      out.write("                <li><a href=\"services.jsp\">Services</a></li>\r\n");
      out.write("                <li><a href=\"contact.jsp\">Contact us</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"section\">\r\n");
      out.write("            <h4>Contact Us</h4>\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li><a href=\"tel:9876543210\">Call: 9876543210</a></li>\r\n");
      out.write("                <li><a href=\"mailto:medix@gmail.com\">Email: medix@gmail.com</a></li>\r\n");
      out.write("                <li><p>Address: F-13, Ratlam Kothi, Geeta Bhawan, Indore, M.P.</p></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"section\">\r\n");
      out.write("            <h4>Handles</h4>\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li><a href=\"https://www.facebook.com/login/\" target=\"_blank\">Facebook</a></li>\r\n");
      out.write("                <li><a href=\"https://twitter.com/?lang=en\" target=\"_blank\">Twitter</a></li>\r\n");
      out.write("                <li><a href=\"https://www.instagram.com/accounts/login/\" target=\"_blank\">Instagram</a></li>\r\n");
      out.write("                <li><a href=\"https://www.whatsapp.com/?lang=en\" target=\"_blank\">WhatsApp</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- Sub-footer -->\r\n");
      out.write("    <div class=\"sub-footer\">\r\n");
      out.write("        <p>&copy; Medix. Designed and developed by Kashish Ahuja.</p>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
