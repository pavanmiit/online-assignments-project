<%-- 
    Document   : assignment
    Created on : Dec 11, 2018, 8:11:09 AM
    Author     : Wazid A Malik
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assignment Assign</title>
        <%
          Class.forName("org.gjt.mm.mysql.Driver");
          Connection con;
          PreparedStatement stmt;
          ResultSet rs;
          con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Assignments","root","");
      
        %>
    </head>
    <body>
       <img src="assign.jpg" width="100%" height="250">
       
        <hr>
        <table width="100%">
             <td><a href="pass.jsp">Password</a></td>            
            <td><a href="astudent.jsp">Students</a></td>            
            <td><a href="ateacher.jsp">Teachers</a></td>           
            <td><a href="assignment.jsp">Assignments Assignment</a></td>
            <td><a href="aresult.jsp">Result</a></td>            
            <td><a href="logout.jsp">LogOut</a></td>            
           
        </table>
        <hr>
            <form method="post">
            <table align="center">
                <tr>
           <td>Course:</td><td><select name="t1">
                   <option>MCA</option>
                   <option>BBA</option>
                   <option>BCA</option>
                   <option>B.tech</option>
                   <option>BSc.</option>
               </select></td></tr>
                <tr>
                 <td>Semester:</td><td><select name="t2">
                   <option>1</option>
                   <option>2</option>
                   <option>3</option>
                   <option>4</option>
                   <option>5</option>
                   <option>6</option>
                   <option>7</option>
                   <option>8</option>
               </select></td></tr>
                <tr>
             <td></td><td><input type="submit" name="b1" value="Search Un-Assign Assignments"></td>
          </tr>
            <hr>
        
         
            </table>
            
        <%
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
        %>
               
                
        <hr></form>
        <center>
         <image src="admin3.jpg" height="250">
        </center>
         </body>
</html>
