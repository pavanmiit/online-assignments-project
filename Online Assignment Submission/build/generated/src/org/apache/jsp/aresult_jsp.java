package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class aresult_jsp extends org.apache.jasper.runtime.HttpJspBase
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
     Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/assignments","root","");
    PreparedStatement stmt;
    ResultSet rs;
    if(session.getAttribute("ULOGIN")==null)
    {
      response.sendRedirect("homepage.jsp");
    }
     
   
      out.write("\n");
      out.write("  \n");
      out.write("   \n");
      out.write("   \n");
      out.write("  \n");
      out.write("   \n");
      out.write("  \n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <image src=\"banner1.png\">\n");
      out.write("        <hr>\n");
      out.write("        <table width=\"100%\">\n");
      out.write("                      \n");
      out.write("            <td><a href=\"astudent.jsp\">Students</a></td>            \n");
      out.write("            <td><a href=\"ateacher.jsp\">Teachers</a></td>            \n");
      out.write("            <td><a href=\"assignment.jsp\">Assignments Assignment</a></td> \n");
      out.write("            <td><a href=\"aresult.jsp\">Result</a></td>            \n");
      out.write("            <td><a href=\"logout.jsp\">LogOut</a></td>    \n");
      out.write("                   \n");
      out.write("           \n");
      out.write("        </table>\n");
      out.write("        <hr>\n");
      out.write("         <table align=\"center\">\n");
      out.write("           <tr>\n");
      out.write("       <th>ID:</th>    \n");
      out.write("       <th>RollNo:</th>    \n");
      out.write("       <th>Marks:</th>\n");
      out.write("       </tr>\n");
      out.write("       ");

        stmt=con.prepareStatement("Select * from marks_assign");
       
   
   rs=stmt.executeQuery();
   while(rs.next())
   {
     String s1=rs.getString(1);
     String s2=rs.getString(2);
     String s3=rs.getString(3);
     
      out.write("<tr>");
      
        out.write("<td>"+s1+"</td>");
       
        out.write("<td>"+s2+"</td>");
        
        out.write("<td>"+s3+"</td>");
        
        out.write("</tr>");
   }
   
      out.write("\n");
      out.write("       </table>\n");
      out.write("        <center>\n");
      out.write("    <image src=\"admin3.jpg\" height=\"300\" > \n");
      out.write("       </center>\n");
      out.write("    <hr>\n");
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
