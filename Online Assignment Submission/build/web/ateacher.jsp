<%-- 
    Document   : ateacher
    Created on : Nov 27, 2018, 1:02:07 PM
    Author     : Wazid A Malik
--%>

<%@page  import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <%
  Class.forName("org.gjt.mm.mysql.Driver");
  Connection con;
  con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/assignments","root","");
  PreparedStatement stmt;
 
  if(request.getParameter("b1")!=null)
  {
  stmt=con.prepareStatement("insert into teachers values(?,?,?,?,?,?)");
  stmt.setString(1,request.getParameter("t1"));
  stmt.setString(2,request.getParameter("t4"));
  
  stmt.setString(3,request.getParameter("t5"));
  stmt.setString(4,request.getParameter("t6"));
  stmt.setString(5,request.getParameter("t7"));
  stmt.setString(6,request.getParameter("t9"));
  stmt.executeUpdate();
stmt=con.prepareStatement("insert into users values(?,?,?)");
stmt.setString(1,request.getParameter("t1"));
stmt.setString(2,request.getParameter("t2"));
stmt.setString(3,"TEACHER");
  stmt.executeUpdate();
          }
%>
            
          
    </head>
    <body>
       <image src="teacher2.jpg" width="100%" height="300">
       <hr>
       <table width="100%">
       <td><a href="astudent.jsp">Students</a></td>
       <td><a href="ateacher.jsp">Teachers</a></td>      
       <td><a href="assignment.jsp">Assignments Assignment</a></td>
    <td><a href="logout.jsp">LogOut:</a></td>
       </table>
       <hr>
       <form method="post">
       <table align="center">
           <tr>
           <th>TEACHER DETAIL:</th>    
           </tr>
       <tr>
           <td>Email:</td><td><input type="email" name="t1"></td>
           </tr>
             <tr>
           <td>Password:</td><td><input type="password" name="t2" ></td>
           </tr>
             <tr>
           <td>ReType-Password:</td><td><input type="password" name="t3" ></td>
           </tr>
             <tr>
           <td>Name:</td><td><input type="text" name="t4" ></td>
           </tr>
             <tr>
                         <td>Department:</td><td><select name="t5">
                 <option>MCA</option>
                 <option>MBA</option>
                 <option>B.TECH</option>
                 <option>BBA</option>
                                 
                     </select></td>
                     
           </tr>
              <tr>
           <td>Specialization:</td><td><input type="text" name="t6"></td>
           </tr>
           <tr>
                  <td>Qualification:</td><td><select name="t7">
                 <option>PHD</option>
                 <option>MBA</option>
                 <option>B.TECH</option>
                 <option>M.Tech</option>
                 <option>M.phill</option>
                 <option>M.Sc</option>
                 <option>MCA</option>
                                 
                     </select></td>
                     
           </tr> 
             <tr>
           <td>Mobile:</td><td><input type="text" name="t9" ></td>
           </tr>
             <tr>
           <td>Click:</td><td><input type="submit" name="b1"></td>
           </tr>
          
       </table>
       </form>
       <hr>
       <table align="center">
           <tr>
               <th>Email</th><th>Name</th><th>Department</th><th>Specilization</th>
               <th>Qualification</th><th>Mobile</th>
           </tr>  
     <%
         PreparedStatement stm=con.prepareStatement("select * from teachers order by temail,name,department");
      ResultSet rs=stm.executeQuery();
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
            MIIT Meerut City.
       </center>
       </body>
</html>
