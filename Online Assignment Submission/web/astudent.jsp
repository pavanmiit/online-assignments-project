<%-- 
    Document   : astudent
    Created on : Nov 10, 2018, 6:16:23 PM
    Author     : Wazid A Malik
--%>

<%@page import ="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Class.forName("org.gjt.mm.mysql.Driver");
    Connection con=DriverManager.getConnection
        ("jdbc:mysql://127.0.0.1/assignments","root","");
    PreparedStatement stmt;
    ResultSet rs;
    
    if(request.getParameter("b2")!=null)
    {
      stmt=con.prepareStatement("Insert into Students values(?,?,?,?,?,?)");
      stmt.setString(1,request.getParameter("t1"));
      stmt.setString(2,request.getParameter("t4"));
      stmt.setString(3,request.getParameter("t5"));
      stmt.setString(4,request.getParameter("t6"));
      stmt.setString(5,request.getParameter("t7"));
      stmt.setString(6,request.getParameter("t8"));
     // stmt.setString(7,request.getParameter("t8"));
      stmt.executeUpdate();
      stmt=con.prepareStatement("Insert into users values(?,?,?)");
      stmt.setString(1,request.getParameter("t1"));
      stmt.setString(2,request.getParameter("t2"));
      stmt.setString(3,"Student");
      stmt.executeUpdate();
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <image src="login2.jpg" width="100%" height="250">
     <hr>
        <table width="100%">
            <tr>
                <td><a href="astudent.jsp">Students</a></td>
                <td><a href="ateacher.jsp">Teachers</a></td>               
                 <td><a href="assignment.jsp">Assignments Assignment</a></td>
                <td><a href="aresult.jsp">Result</a></td>
                <td><a href="logout.jsp">Logout</a></td>
            </tr>            
        </table>
     <hr>
     <form method="post">
        
         <table align="center">
              <tr>
         <th colspan="2">Students Details</th>
        </tr>
             <tr>
                 
                 <td>RollNo:</td><td><input type="text" name="t1"></td>
                 </tr>
                 <tr>
                 <td>Password:</td><td><input type="password" name="t2"></td>
                 </tr>
                 <tr>
                     <td>Re-Type Password</td><td><input type="password" name="t3"></td>
                   </tr>
                   <td>Name:</td><td><input type="text" name="t4"></td>
                 </tr>
                 <tr>
                   <tr>
                 <td>Course</td><td><select name="t5">
                 <option>MCA</option>
                 <option>MBA</option>
                 <option>B.TECH</option>
                 <option>BBA</option>
                 </SELECT></td>
             </tr>
             <tr>
             <td>Semester</td><td><select name="t6">
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
                 <td>Email:</td><td><input type="email" name="t7"></td>    
                 </tr>
                   <tr>
                 <td>Mobile:</td><td><input type="text" name="t8"></td>    
                 </tr>
             <tr>
             <td>Click Here:</td><td><input type="submit" name="b2" value="submit"></td>
             </tr>
             </table>
         </form>
     <hr>
     <table align="center">
     <tr>
     <th>Roll No: </th><th> Name </th><th> Course </th><th>            Email  </th><th>Mobile</th><br>
</tr>
     <%
            stmt=con.prepareStatement("Select * from Students order by course,sem,name");
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
                out.write("<br>");
                
            }
        %>
        </table>
        <hr>
        <center>
            All Right Reserved CopyRight 2018<br>
            MIIT Meerut City 
        </center>>
    </body>
</html>
