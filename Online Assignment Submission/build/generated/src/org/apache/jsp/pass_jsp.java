package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class pass_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 if(session.getAttribute("ULOGIN")==null)
 {
    response.sendRedirect("homepage.jsp");
 }
  PreparedStatement stmt;
  String b="",s1="",s2="";
  String msg="";
  b=request.getParameter("b1");
  s1=request.getParameter("t1");
  s2=request.getParameter("t2");
  if(b!=null)
  {
   stmt=con.prepareStatement("update users set upass=? where ulogin=?");
   
   stmt.setString(1,s2);
  stmt.setObject(2,session.getAttribute("ULOGIN")); 
   stmt.executeUpdate();
   msg="Password sucessfully changed";
  }
  


      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("      \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <image src=\"login5.jpg\" width=\"100%\" height=\"300\">\n");
      out.write("       <hr>\n");
      out.write("       <table width=\"100%\">\n");
      out.write("    \n");
      out.write("       \n");
      out.write("        <td><a href=\"logout.jsp\">Logout</td>\n");
      out.write("      \n");
      out.write("         </table>\n");
      out.write("       <hr>\n");
      out.write("       <form method=\"post\">\n");
      out.write("           <table align=\"center\">\n");
      out.write("             <tr>\n");
      out.write("               <td>Current Password</td><td><input type=\"password\" name=\"t1\" ></td>\n");
      out.write("              </tr>\n");
      out.write("               <td>New Password</td><td><input type=\"password\" name=\"t2\" ></td>\n");
      out.write("               </tr>\n");
      out.write("                <tr>\n");
      out.write("               <td>Confirm Password</td><td><input type=\"password\" name=\"t3\" ></td>\n");
      out.write("               </tr>\n");
      out.write("               <tr>\n");
      out.write("                <td>Click Here</td><td><input type=\"submit\" value=\"Change\" name=\"b1\" ></td>\n");
      out.write("                </tr>   \n");
      out.write("             \n");
      out.write("               \n");
      out.write("           \n");
      out.write("           </table>\n");
      out.write("           </form>\n");
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
