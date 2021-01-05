package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class assign_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

   Class.forName("org.gjt.mm.mysql.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Assignments","root","");
  PreparedStatement stmt;
  ResultSet rs;
  if(session.getAttribute("ULOGIN")==null)
  {
    response.sendRedirect("homepage.jsp");
  }
 
   

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <image src=\"assign.jpg\" width=\"100%\" height=\"250\">\n");
      out.write("        <hr>\n");
      out.write("       \n");
      out.write("        <table width=\"100%\">\n");
      out.write("            <tr>\n");
      out.write("             <td><a href=\"pass.jsp\">Password</a></td>            \n");
      out.write("            <td><a href=\"teacher.jsp\">Home</a></td>\n");
      out.write("             <td><a href=\"assign.jsp\">Assignment</a></td>\n");
      out.write("            <td><a href=\"tassign.jsp\">My Assignment</a></td>\n");
      out.write("            <td><a href=\"logout.jsp\">Logout</a></td>\n");
      out.write("            </tr>\n");
      out.write("        </table> \n");
      out.write("        <hr>\n");
      out.write("         <form method=\"post\" enctype=\"multipart/form-data\" action=\"tupload.jsp\">\n");
      out.write("        <table align=\"center\">\n");
      out.write("          \n");
      out.write("            <tr>\n");
      out.write("            <td>Title:</td><td><input type=\"text\" name=\"t1\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("            <td>Course:</td><td><select name=\"t2\">\n");
      out.write("                     <option>MCA</option>\n");
      out.write("                 <option>MBA</option>\n");
      out.write("                 <option>B.TECH</option>\n");
      out.write("                 <option>BBA</option>\n");
      out.write("            </select></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("            <td>Semester:</td><td><select name=\"t3\">\n");
      out.write("                    <option>1</option>\n");
      out.write("                    <option>2</option>\n");
      out.write("                    <option>3</option>\n");
      out.write("                    <option>4</option>\n");
      out.write("                    <option>5</option>\n");
      out.write("                    <option>6</option>\n");
      out.write("                    <option>7</option>\n");
      out.write("                    <option>8</option>\n");
      out.write("                    \n");
      out.write("            \n");
      out.write("            </select></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("            <td>Start Date:</td><td><input type=\"date\" name=\"t4\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("            <td>End Date:</td><td><input type=\"date\" name=\"t5\"></td>\n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("                <td>Pdf File:</td>\n");
      out.write("                <td><input type=\"file\" name=\"t6\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("               <td>Click Here:</td><td><input type=\"submit\" value=\"tupload\" name=\"b1\"></td> \n");
      out.write("            </tr>\n");
      out.write("       \n");
      out.write("        </table></form>\n");
      out.write("       \n");
      out.write("        <hr>\n");
      out.write("        <image src=\"login3.jpg\" width=\"1600\" height=\"250\">\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
