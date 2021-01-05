<%-- 
    Document   : detail
    Created on : Nov 29, 2018, 12:05:31 PM
    Author     : Wazid A Malik
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        
             <image src="login3.jpg" width="100%" height="250">
     <a href="student.jsp">Back</a>    
    <h1>My Detail</h1>
        <table width="100">
            <tr>
            <th>RollNo.</th>
             
            <th>Name.</th>
            <th>Course.</th>
            <th>Semester.</th>
            <th>Email.</th>
            <th>Mobile.</th>
             </tr>
   <%
    Class.forName("org.gjt.mm.mysql.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Assignments","root","");
    if(session.getAttribute("ULOGIN")==null)
    {
      response.sendRedirect("homepage.jsp");
    }
    ResultSet rs  ;
    PreparedStatement stmt;
    String course="";
    String sem="";
    stmt=con.prepareStatement("Select * from students where rollno=?");
    stmt.setObject(1,session.getAttribute("ULOGIN"));
    
    rs=stmt.executeQuery();
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
        
        
    }
   %>
        </table>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
   
    </body>
</html>
