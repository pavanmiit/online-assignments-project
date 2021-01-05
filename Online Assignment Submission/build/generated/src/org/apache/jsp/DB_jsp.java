package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class DB_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            Class.forName("org.gjt.mm.mysql.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1","root","");
            PreparedStatement stmt;
            stmt=con.prepareStatement("create database assignments");
            stmt.executeUpdate();
            stmt=con.prepareStatement("use assignments");
            stmt.executeUpdate();
            stmt=con.prepareStatement("CREATE TABLE STUDENTS(ROLLNO INT PRIMARY KEY,NAME VARCHAR(20),COURSE  VARCHAR(20),SEM INT,EMAIL VARCHAR(30),MOBILE VARCHAR(10))");
            stmt.executeUpdate();
            stmt=con.prepareStatement("CREATE TABLE TEACHERS(TEMAIL VARCHAR(30) PRIMARY KEY,NAME VARCHAR(20),DEPARTMENT VARCHAR(20),SPECIALIZATION VARCHAR(20),QUALIFICATION VARCHAR(20),MOBILE VARCHAR(10))");
            stmt.executeUpdate();
            stmt=con.prepareStatement("CREATE TABLE ASSIGNMENTS(ASSIGN_ID INT PRIMARY KEY,TITLE VARCHAR(20),COURSE VARCHAR(20),SEM INT,STARTDATE DATE,ENDDATE DATE,UPLOADFILE MEDIUMBLOB)");
            stmt.executeUpdate();
            stmt=con.prepareStatement("CREATE TABLE STUDENT_ASSIGN(ID INT PRIMARY KEY,ASSIGN_ID INT,ROLLNO INT,UPLOADDATE DATE,UPLOADFILE MEDIUMBLOB)");
            stmt.executeUpdate();
            stmt=con.prepareStatement("CREATE TABLE TEACHER_ASSIGN(ID INT,EMAIL VARCHAR(30),COMPLETED_DATE DATE)");
            stmt.executeUpdate();
            stmt=con.prepareStatement("CREATE TABLE MARKS_ASSIGN(ID INT,EMAIL VARCHAR(30),MARKS INT)");
            stmt.executeUpdate();
            stmt=con.prepareStatement("CREATE TABLE USERS(ULOGIN VARCHAR(30),UPASS VARCHAR(10),UTYPE VARCHAR(10))");
            stmt.executeUpdate();
            stmt=con.prepareStatement("INSERT INTO USERS VALUES('admin','ADMIN123','ADMIN')");
            stmt.executeUpdate();
        
      out.write("\n");
      out.write("        <h1>Done</h1>\n");
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
