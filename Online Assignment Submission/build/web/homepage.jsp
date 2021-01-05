<%-- 
    Document   : homepage
    Created on : Nov 4, 2018, 6:15:44 PM
    Author     : ajuba
--%>


<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
 <%
    
     
     String s=request.getParameter("b1");
      String msg="";
      if(s!=null)
            {
           Class.forName("org.gjt.mm.mysql.Driver");
 Connection con=DriverManager.getConnection
        ("jdbc:mysql://127.0.0.1/assignments","root","");
 PreparedStatement stmt;
 stmt=con.prepareStatement("Select * fROM users where ulogin=? and upass=?");
 stmt.setString(1,request.getParameter("t1"));
 stmt.setString(2,request.getParameter("t2"));
 ResultSet rs=stmt.executeQuery();
  if(rs.next())
  {
      String ss=rs.getString("UTYPE");
  session.setAttribute("ULOGIN",request.getParameter("t1"));
  session.setAttribute("UTYPE",ss);
  
     if(ss.equals("ADMIN"))  
     {
        response.sendRedirect("admin.jsp");
         }
     else if(ss.equals("TEACHER"))
     {
      response.sendRedirect("teacher.jsp");
     }
     else if(ss.equals("Student"))
     {
       response.sendRedirect("student.jsp");
     }
            }    
  else
  {
      msg="Invalid/Login Password";
      
  }
            }
    
     
           %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
       <center>
       <image src="APJAKTU.jpg" width="600" height="250">
        </center>
        <hr> </hr>
        <form method='post'>
            <table align='center'>
                 <tr>
                <th colspan="2">User Authentication</th>
            </tr>
                <tr>
                    <td>Login:</td><td><input type='text' name="t1"></td>
                    
                </tr>  
                <tr>
                    <td>Password:</td><td><input type='password' name="t2"></td>
                    
                </tr>  
                 <tr>
      <td>Click Here:</td><td><input type='Submit' name="b1" value="Login"></td>
      </tr>
      <tr>
     <td></td><td><font color='red' > <%=msg%></font></td>               
                </tr>  
                 <tr>
                    
                    <td> </td>
                    
                </tr>  
                <tr>
                    
                    <td> </td>
                    
                </tr>  
                <tr>
                    
                    <td> </td>
                    
                </tr>  
            </table>
            
         </form>
        <hr> 
         <center>
        <image src="logo.jpg" width="440" height="325">
        </center>
        <center>     
                  All Rights Reserved, Copyrights 2018<br>
                      AKTU University, LUCKNOW  
                    
         </center>
    </body>
</html>
 
