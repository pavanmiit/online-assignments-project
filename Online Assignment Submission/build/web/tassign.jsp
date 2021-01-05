<%-- 
    Document   : index
    Created on : Nov 4, 2018, 7:57:41 AM
    Author     : Administrator
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <image src="teacher2.jpg" width="550" height="150">
        </center>
        <hr>
        <table width="100%">
            <tr>
                <td><a href="teacher.jsp">Home</a></td>
                <td><a href="tassign.jsp">My Assignments</a></td>
                <td><a href="logout.jsp">Logout</a></td>
            </tr>            
        </table>
        <hr>
        <%
            stmt=con.prepareStatement("select * from assignments"); 
            rs=stmt.executeQuery();
        %>
         <table align=center>
         <tr>
             <th>ID</th><th>Title</th><th>Course</th><th>Semester</th><th>Start Date</th><th>End Date</th><th></th>
         </tr>
        <%           
                    while(rs.next())
                    {
                        out.write("<tr>");
                        out.write("<td>"+rs.getString(1)+"</td>");
                        out.write("<td>"+rs.getString(2)+"</td>");
                        out.write("<td>"+rs.getString(3)+"</td>");
                        out.write("<td>"+rs.getString(4)+"</td>");
                        out.write("<td>"+rs.getString(5)+"</td>");
                        out.write("<td>"+rs.getString(6)+"</td>");
                        out.write("<td>"+rs.getObject(7)+"</td>");
                        out.write("<td><a href='showassign.jsp?id="+rs.getString(1)+"'>Show Assignments</a></td>");
                        out.write("</tr>");
                    }     
        %>               
       </table>
        <hr>
    <center>
        All Rights Reserved, Copyrights 2018<br>
        MIIT College, MEERUT
    </center>
    </body>
</html>
