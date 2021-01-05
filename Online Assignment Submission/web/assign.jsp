<%-- 
    Document   : assign
    Created on : Nov 15, 2018, 10:12:23 AM
    Author     : Wazid A Malik
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   Class.forName("org.gjt.mm.mysql.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Assignments","root","");
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
        <image src="assign.jpg" width="100%" height="250">
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
         <form method="post" enctype="multipart/form-data" action="tupload.jsp">
        <table align="center">
          
            <tr>
            <td>Title:</td><td><input type="text" name="t1"></td>
            </tr>
            <tr>
            <td>Course:</td><td><select name="t2">
                     <option>MCA</option>
                 <option>MBA</option>
                 <option>B.TECH</option>
                 <option>BBA</option>
            </select></td>
            </tr>
            <tr>
            <td>Semester:</td><td><select name="t3">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    
            
            </select></td>
            </tr>
            <tr>
            <td>Start Date:</td><td><input type="date" name="t4"></td>
            </tr>
            <tr>
            <td>End Date:</td><td><input type="date" name="t5"></td>
            </tr>
             <tr>
                <td>Pdf File:</td>
                <td><input type="file" name="t6"></td>
            </tr>
            <tr>
               <td>Click Here:</td><td><input type="submit" value="tupload" name="b1"></td> 
            </tr>
       
        </table></form>
       
        <hr>
        <image src="login3.jpg" width="1600" height="250">
    </body>
</html>
