package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class ateacher_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    ");

  Class.forName("org.gjt.mm.mysql.Driver");
  Connection con;
  con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/assignments","root","");
  PreparedStatement stmt;
 
  if(request.getParameter("b1")!=null)
  {
  stmt=con.prepareStatement("insert into teachers values(?,?,?,?,?,?)");
  stmt.setString(1,request.getParameter("t1"));
  stmt.setString(2,request.getParameter("t4"));
  
  stmt.setString(3,request.getParameter("t5"));
  stmt.setString(4,request.getParameter("t6"));
  stmt.setString(5,request.getParameter("t7"));
  stmt.setString(6,request.getParameter("t9"));
  stmt.executeUpdate();
stmt=con.prepareStatement("insert into users values(?,?,?)");
stmt.setString(1,request.getParameter("t1"));
stmt.setString(2,request.getParameter("t2"));
stmt.setString(3,"TEACHER");
  stmt.executeUpdate();
          }

      out.write("\n");
      out.write("            \n");
      out.write("          \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <image src=\"teacher2.jpg\" width=\"100%\" height=\"300\">\n");
      out.write("       <hr>\n");
      out.write("       <table width=\"100%\">\n");
      out.write("       <td><a href=\"astudent.jsp\">Students</a></td>\n");
      out.write("       <td><a href=\"ateacher.jsp\">Teachers</a></td>      \n");
      out.write("       <td><a href=\"assignment.jsp\">Assignments Assignment</a></td>\n");
      out.write("    <td><a href=\"logout.jsp\">LogOut:</a></td>\n");
      out.write("       </table>\n");
      out.write("       <hr>\n");
      out.write("       <form method=\"post\">\n");
      out.write("       <table align=\"center\">\n");
      out.write("           <tr>\n");
      out.write("           <th>TEACHER DETAIL:</th>    \n");
      out.write("           </tr>\n");
      out.write("       <tr>\n");
      out.write("           <td>Email:</td><td><input type=\"email\" name=\"t1\"></td>\n");
      out.write("           </tr>\n");
      out.write("             <tr>\n");
      out.write("           <td>Password:</td><td><input type=\"password\" name=\"t2\" ></td>\n");
      out.write("           </tr>\n");
      out.write("             <tr>\n");
      out.write("           <td>ReType-Password:</td><td><input type=\"password\" name=\"t3\" ></td>\n");
      out.write("           </tr>\n");
      out.write("             <tr>\n");
      out.write("           <td>Name:</td><td><input type=\"text\" name=\"t4\" ></td>\n");
      out.write("           </tr>\n");
      out.write("             <tr>\n");
      out.write("                         <td>Department:</td><td><select name=\"t5\">\n");
      out.write("                 <option>MCA</option>\n");
      out.write("                 <option>MBA</option>\n");
      out.write("                 <option>B.TECH</option>\n");
      out.write("                 <option>BBA</option>\n");
      out.write("                                 \n");
      out.write("                     </select></td>\n");
      out.write("                     \n");
      out.write("           </tr>\n");
      out.write("              <tr>\n");
      out.write("           <td>Specialization:</td><td><input type=\"text\" name=\"t6\"></td>\n");
      out.write("           </tr>\n");
      out.write("           <tr>\n");
      out.write("                  <td>Qualification:</td><td><select name=\"t7\">\n");
      out.write("                 <option>PHD</option>\n");
      out.write("                 <option>MBA</option>\n");
      out.write("                 <option>B.TECH</option>\n");
      out.write("                 <option>M.Tech</option>\n");
      out.write("                 <option>M.phill</option>\n");
      out.write("                 <option>M.Sc</option>\n");
      out.write("                 <option>MCA</option>\n");
      out.write("                                 \n");
      out.write("                     </select></td>\n");
      out.write("                     \n");
      out.write("           </tr> \n");
      out.write("             <tr>\n");
      out.write("           <td>Mobile:</td><td><input type=\"text\" name=\"t9\" ></td>\n");
      out.write("           </tr>\n");
      out.write("             <tr>\n");
      out.write("           <td>Click:</td><td><input type=\"submit\" name=\"b1\"></td>\n");
      out.write("           </tr>\n");
      out.write("          \n");
      out.write("       </table>\n");
      out.write("       </form>\n");
      out.write("       <hr>\n");
      out.write("       <table align=\"center\">\n");
      out.write("           <tr>\n");
      out.write("               <th>Email</th><th>Name</th><th>Department</th><th>Specilization</th>\n");
      out.write("               <th>Qualification</th><th>Mobile</th>\n");
      out.write("           </tr>  \n");
      out.write("     ");

         PreparedStatement stm=con.prepareStatement("select * from teachers order by temail,name,department");
      ResultSet rs=stm.executeQuery();
      while(rs.next())
      {
        String s1=rs.getString(1);
        String s2=rs.getString(2);
        String s3=rs.getString(3);
        String s4=rs.getString(4);
        String s5=rs.getString(5);
        String s6=rs.getString(6);
        out.write("<tr>");
        out.write("<td>"+s1+"</td>");
        out.write("<td>"+s2+"</td>");
        out.write("<td>"+s3+"</td>");
        out.write("<td>"+s4+"</td>");
        out.write("<td>"+s5+"</td>");
        out.write("<td>"+s6+"</td>");
        out.write("</tr>");
        out.write("<br>");
      }
       
      out.write("\n");
      out.write("       </table>\n");
      out.write("       <hr>\n");
      out.write("       <center>\n");
      out.write("        All Right Reserved CopyRight 2018<br>\n");
      out.write("            MIIT Meerut City.\n");
      out.write("       </center>\n");
      out.write("       </body>\n");
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
