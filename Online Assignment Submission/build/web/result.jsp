<%-- 
    Document   : result
    Created on : Dec 17, 2018, 1:45:38 PM
    Author     : Wazid A Malik
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  Class.forName("org.gjt.mm.mysql.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/assignments","root","");
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
            <center>
       <image src="login5.jpg" width="100%" height="300">
       </center>
       <hr>
       <table width="100%">
    
        <td><a href="student.jsp">Home</a></td>
        <td><a href="detail.jsp">My Detail</a></td>
        <td><a href="pass.jsp">Password</a></td>
        <td><a href="submissionassign.jsp">Assignment Submission</a></td>
        <td><a href="result.jsp">Result</a></td>
        <td><a href="logout.jsp">Logout</td>
        <hr>
         </table>
       <hr>
       <table align="center">
           <tr>
       <th>ID:</th>    
       <th>RollNo:</th>    
       <th>Marks:</th>
       </tr>
       <%
        PreparedStatement stmt=con.prepareStatement("Select * from marks_assign where email=?");
        stmt.setObject(1,session.getAttribute("ULOGIN"));
   
   ResultSet rs=stmt.executeQuery();
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
    </body>
</html>
