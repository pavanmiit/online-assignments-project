<%-- 
    Document   : teacher
    Created on : Nov 30, 2018, 9:02:09 PM
    Author     : Wazid A Malik
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher</title>
        <%
          Class.forName("org.gjt.mm.mysql.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Assignments","root","");
          if(session.getAttribute("ULOGIN")==null)
          {
            response.sendRedirect("homepage.jsp");
          }
          
        %>
    </head>
    <body>
       <image src="teacher2.jpg" width="100%" height="250" >
       <hr>
       <table width="100%">
        <tr>
             <td><a href="pass.jsp">Password</a></td>            
            <td><a href="teacher.jsp">Home</a></td>
             <td><a href="assign.jsp">Assignment</a></td>
            <td><a href="tassign.jsp">My Assignment</a></td>
            <td><a href="logout.jsp">Logout</a></td>
            
        </tr>
       </table>
       
        <hr>
        <image src="teacher.jpg" width="100%" height="500" >
    </body>
</html>
