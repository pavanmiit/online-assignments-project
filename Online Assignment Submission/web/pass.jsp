<%-- 
    Document   : pass
    Created on : Dec 4, 2018, 1:05:54 PM
    Author     : Wazid A Malik
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  Class.forName("org.gjt.mm.mysql.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/Assignments","root","");
 if(session.getAttribute("ULOGIN")==null)
 {
    response.sendRedirect("homepage.jsp");
 }
  PreparedStatement stmt;
  String b="",s1="",s2="";
  String msg="";
  b=request.getParameter("b1");
  s1=request.getParameter("t1");
  s2=request.getParameter("t2");
  if(b!=null)
  {
   stmt=con.prepareStatement("update users set upass=? where ulogin=?");
   
   stmt.setString(1,s2);
  stmt.setObject(2,session.getAttribute("ULOGIN")); 
   stmt.executeUpdate();
   msg="Password sucessfully changed";
  }
  

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body>
       <image src="login5.jpg" width="100%" height="300">
       <hr>
       <table width="100%">
    
       
        <td><a href="logout.jsp">Logout</td>
      
         </table>
       <hr>
       <form method="post">
           <table align="center">
             <tr>
               <td>Current Password</td><td><input type="password" name="t1" ></td>
              </tr>
               <td>New Password</td><td><input type="password" name="t2" ></td>
               </tr>
                <tr>
               <td>Confirm Password</td><td><input type="password" name="t3" ></td>
               </tr>
               <tr>
                <td>Click Here</td><td><input type="submit" value="Change" name="b1" ></td>
                </tr>   
             
               
           
           </table>
           </form>
    </body>
</html>
