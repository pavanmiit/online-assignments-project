<%-- 
    Document   : admin
    Created on : Nov 7, 2018, 3:25:27 PM
    Author     : Wazid A Malik
--%>

<%@page import ="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     Class.forName("org.gjt.mm.mysql.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/assignments","root","");
    PreparedStatement stmt;
    ResultSet rs;
    if(session.getAttribute("ULOGIN")==null)
    {
      response.sendRedirect("homepage.jsp");
    }
    %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <image src="banner1.png">
        <hr>
        <table width="100%">
                      
            <td><a href="astudent.jsp">Students</a></td>            
            <td><a href="ateacher.jsp">Teachers</a></td>           
            <td><a href="assignment.jsp">Assignments Assignment</a></td> 
            <td><a href="aresult.jsp">Result</a></td>            
            <td><a href="logout.jsp">LogOut</a></td>    
                   
           
        </table>
        <hr>
        <center>
    <td><image src="admin3.jpg" height="300" ></td>
       </center>
    <hr>
    <center>
        All Rights Reserved, Copyrights 2018<br>
                       MIIT  Meerut City  
    </center>
    </body>
</html>
