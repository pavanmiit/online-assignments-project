<%-- 
    Document   : aresult
    Created on : Dec 17, 2018, 2:13:43 PM
    Author     : Wazid A Malik
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
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
         <table align="center">
           <tr>
       <th>ID:</th>    
       <th>RollNo:</th>    
       <th>Marks:</th>
       </tr>
       <%
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
   %>
       </table>
        <center>
    <image src="admin3.jpg" height="300" > 
       </center>
    <hr>
    </body>
</html>
