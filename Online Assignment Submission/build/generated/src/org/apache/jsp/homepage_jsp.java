package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class homepage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write(" ");

    
     
     String s=request.getParameter("b1");
      String msg="";
      if(s!=null)
            {
           Class.forName("org.gjt.mm.mysql.Driver");
 Connection con=DriverManager.getConnection
        ("jdbc:mysql://127.0.0.1/assignments","root","");
 PreparedStatement stmt;
 stmt=con.prepareStatement("Select * fROM users where ulogin=? and upass=?");
 stmt.setString(1,request.getParameter("t1"));
 stmt.setString(2,request.getParameter("t2"));
 ResultSet rs=stmt.executeQuery();
  if(rs.next())
  {
      String ss=rs.getString("UTYPE");
  session.setAttribute("ULOGIN",request.getParameter("t1"));
  session.setAttribute("UTYPE",ss);
  
     if(ss.equals("ADMIN"))  
     {
        response.sendRedirect("admin.jsp");
         }
     else if(ss.equals("TEACHER"))
     {
      response.sendRedirect("teacher.jsp");
     }
     else if(ss.equals("Student"))
     {
       response.sendRedirect("student.jsp");
     }
            }    
  else
  {
      msg="Invalid/Login Password";
      
  }
            }
    
     
           
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("       <center>\n");
      out.write("       <image src=\"APJAKTU.jpg\" width=\"600\" height=\"250\">\n");
      out.write("        </center>\n");
      out.write("        <hr> </hr>\n");
      out.write("        <form method='post'>\n");
      out.write("            <table align='center'>\n");
      out.write("                 <tr>\n");
      out.write("                <th colspan=\"2\">User Authentication</th>\n");
      out.write("            </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Login:</td><td><input type='text' name=\"t1\"></td>\n");
      out.write("                    \n");
      out.write("                </tr>  \n");
      out.write("                <tr>\n");
      out.write("                    <td>Password:</td><td><input type='password' name=\"t2\"></td>\n");
      out.write("                    \n");
      out.write("                </tr>  \n");
      out.write("                 <tr>\n");
      out.write("      <td>Click Here:</td><td><input type='Submit' name=\"b1\" value=\"Login\"></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("     <td></td><td><font color='red' > ");
      out.print(msg);
      out.write("</font></td>               \n");
      out.write("                </tr>  \n");
      out.write("                 <tr>\n");
      out.write("                    \n");
      out.write("                    <td> </td>\n");
      out.write("                    \n");
      out.write("                </tr>  \n");
      out.write("                <tr>\n");
      out.write("                    \n");
      out.write("                    <td> </td>\n");
      out.write("                    \n");
      out.write("                </tr>  \n");
      out.write("                <tr>\n");
      out.write("                    \n");
      out.write("                    <td> </td>\n");
      out.write("                    \n");
      out.write("                </tr>  \n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("         </form>\n");
      out.write("        <hr> \n");
      out.write("         <center>\n");
      out.write("        <image src=\"logo.jpg\" width=\"440\" height=\"325\">\n");
      out.write("        </center>\n");
      out.write("        <center>     \n");
      out.write("                  All Rights Reserved, Copyrights 2018<br>\n");
      out.write("                      AKTU University, LUCKNOW  \n");
      out.write("                    \n");
      out.write("         </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write(" \n");
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
