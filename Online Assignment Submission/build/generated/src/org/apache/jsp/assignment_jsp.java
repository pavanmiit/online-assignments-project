package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class assignment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Assignment Assign</title>\n");
      out.write("        ");

          Class.forName("org.gjt.mm.mysql.Driver");
          Connection con;
          PreparedStatement stmt;
          ResultSet rs;
          con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Assignments","root","");
      
        
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <img src=\"assign.jpg\" width=\"100%\" height=\"250\">\n");
      out.write("       \n");
      out.write("        <hr>\n");
      out.write("        <table width=\"100%\">\n");
      out.write("             <td><a href=\"pass.jsp\">Password</a></td>            \n");
      out.write("            <td><a href=\"astudent.jsp\">Students</a></td>            \n");
      out.write("            <td><a href=\"ateacher.jsp\">Teachers</a></td>           \n");
      out.write("            <td><a href=\"assignment.jsp\">Assignments Assignment</a></td>\n");
      out.write("            <td><a href=\"aresult.jsp\">Result</a></td>            \n");
      out.write("            <td><a href=\"logout.jsp\">LogOut</a></td>            \n");
      out.write("           \n");
      out.write("        </table>\n");
      out.write("        <hr>\n");
      out.write("            <form method=\"post\">\n");
      out.write("            <table align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("           <td>Course:</td><td><select name=\"t1\">\n");
      out.write("                   <option>MCA</option>\n");
      out.write("                   <option>BBA</option>\n");
      out.write("                   <option>BCA</option>\n");
      out.write("                   <option>B.tech</option>\n");
      out.write("                   <option>BSc.</option>\n");
      out.write("               </select></td></tr>\n");
      out.write("                <tr>\n");
      out.write("                 <td>Semester:</td><td><select name=\"t2\">\n");
      out.write("                   <option>1</option>\n");
      out.write("                   <option>2</option>\n");
      out.write("                   <option>3</option>\n");
      out.write("                   <option>4</option>\n");
      out.write("                   <option>5</option>\n");
      out.write("                   <option>6</option>\n");
      out.write("                   <option>7</option>\n");
      out.write("                   <option>8</option>\n");
      out.write("               </select></td></tr>\n");
      out.write("                <tr>\n");
      out.write("             <td></td><td><input type=\"submit\" name=\"b1\" value=\"Search Un-Assign Assignments\"></td>\n");
      out.write("          </tr>\n");
      out.write("            <hr>\n");
      out.write("        \n");
      out.write("         \n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("        ");

stmt=con.prepareStatement("Select * from Assignments where assign_id not in(select id from teacher_assign where email=?) and course=? and sem=?");
       stmt.setObject(1,session.getAttribute("ULOGIN"));
        stmt.setString(2,request.getParameter("t1"));
       stmt.setString(3,request.getParameter("t2"));
       rs=stmt.executeQuery();
       out.write("<table align='center' >");
       out.write("<tr>");
       out.write("<th>ID</th><th>Title</th><th>Course</th><th>Sem</th><th>StartDate</th><th>EndDate</th><th>Question</th>");
   out.write("<tr>");
       while(rs.next())
    {out.write("</tr>");
      out.write("<td>"+rs.getString(1)+"</td>");   
      out.write("<td>"+rs.getString(2)+"</td>");
      out.write("<td>"+rs.getString(3)+"</td>");
      out.write("<td>"+rs.getString(4)+"</td>");
      out.write("<td>"+rs.getString(5)+"</td>");
      out.write("<td>"+rs.getString(6)+"</td>");
       out.write("<td>"+rs.getObject(7)+"</td>");
       out.write("</tr>");
    }
        out.write("</table>");
        
      out.write("\n");
      out.write("               \n");
      out.write("                \n");
      out.write("        <hr></form>\n");
      out.write("        <center>\n");
      out.write("         <image src=\"admin3.jpg\" height=\"250\">\n");
      out.write("        </center>\n");
      out.write("         </body>\n");
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
