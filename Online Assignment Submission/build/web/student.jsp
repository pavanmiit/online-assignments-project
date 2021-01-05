<%-- 
    Document   : student
    Created on : Nov 13, 2018, 7:16:02 PM
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
           <th>Assign ID</th>
           <th>Title</th>
           <th>Course</th>
           <th>Sem</th>
           <th>StartDate</th>
           <th>EndDate</th>
           <th>Questions</th>
           </tr>
      
       <%
          java.util.Date d=new java.util.Date();
          int y=d.getYear()+1900;
          int m=d.getMonth()+1;
          int dt=d.getDate();
          String today=y+"-"+m+"-"+dt;
          String course2="",sem="";
         PreparedStatement stmt;
         stmt=con.prepareStatement("Select *  from students where rollno=?");
         stmt.setObject(1,session.getAttribute("ULOGIN"));
         ResultSet rs=stmt.executeQuery();
         if(rs.next())
         {
           course2=rs.getString("course");
           sem=rs.getString("sem");
           
         } 
         stmt=con.prepareStatement("Select * from assignments where course=? and sem=? and STARTDATE>=?");
         stmt.setString(1,course2);
         stmt.setString(2,sem);
         stmt.setString(3,today);
         //stmt.setString(4,today);
         rs=stmt.executeQuery();
         while(rs.next())
         { 
            
            out.write("<tr>");
           
          
          
            out.write("<td>"+rs.getString(1)+"</td>");
           
            out.write("<td>"+rs.getString(2)+"</td>");
           
            out.write("<td>"+rs.getString(3)+"</td>");
           
            out.write("<td>"+rs.getString(4)+"</td>");
          
            out.write("<td>"+rs.getString(5)+"</td>");
           
            out.write("<td>"+rs.getString(6)+"</td>");
            
             out.write("<td><a href='getFile.jsp?aid="+rs.getString(1)+"'>Download</a></td>");
             
            out.write("</tr>");
            
            
         }
            
          
       %>
       </table>
       </body>
</html>
