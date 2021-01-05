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
            response.sendRedirect("index.jsp");
        }        
        String id=request.getParameter("id");
        if(request.getParameter("b1")!=null)
        {
            stmt=con.prepareStatement("Insert into marks_assign values(?,?,?)");
            stmt.setString(1,request.getParameter("t1"));
            stmt.setString(2,request.getParameter("t2"));
            stmt.setString(3,request.getParameter("t3"));
            stmt.executeUpdate();
            
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <img src="banner1.png" width="100%" height="150"><hr>
        <table width="100%">
            <tr>
                <td><a href="teacher.jsp">Home</a></td>
                <td><a href="tassign.jsp">My Assignments</a></td>
                <td><a href="logout.jsp">Logout</a></td>
                
            </tr>            
        </table>
        <hr>
       <%
            stmt=con.prepareStatement("Select * from student_assign where assign_id=?");
            stmt.setString(1,id);
            rs=stmt.executeQuery();
       %>
       <table align="center">
           <tr>
               <th>ID</th><th>Assignment Id</th><th>Roll No</th><th>Upload Date</th>
           </tr>
           <%
            while(rs.next())
            {
                out.write("<tr>");
                String s1=rs.getString(1);
                String s11=rs.getString(2);
                String s2=rs.getString(3);
                String s3=rs.getString(4);
                out.write("<td>"+s1+"</td>");
                out.write("<td>"+s11+"</td>");
                out.write("<td>"+s2+"</td>");
                out.write("<td>"+s3+"</td>");
                out.write("<td><a href='view.jsp?id="+s1+"'>View Assignment</a></td>");
                out.write("</tr>");
            }
           %>
       </table>
        <hr>
        <form method="post">
        <table align="center">
            <tr>
                <td>Assignment Id:</td><td><input type="text" name="t1"></td>
            </tr>
            <tr>
                <td>Roll No:</td><td><input type="text" name="t2"></td>
            </tr>
            <tr>
                <td>Marks:</td><td><input type="text" name="t3"></td>
            </tr>
            <tr>
                <td></td><td><input type="submit" name="b1" value="Submit"></td>
            </tr>
        </table></form>
        <hr>
        <table align="center">
            <tr>
                <th>Assignment Id</th><th>Roll No</th><th>Marks</th>
            </tr>
            <%
                stmt=con.prepareStatement("Select * from marks_assign where id in(select id from teacher_assign where email=?)");
                stmt.setObject(1,session.getAttribute("ULOGIN"));
                rs=stmt.executeQuery();
                while(rs.next())
                {
                    out.write("<tr>");
                    out.write("<td>"+rs.getString(1)+"</td>");
                    out.write("<td>"+rs.getString(2)+"</td>");
                    out.write("<td>"+rs.getString(3)+"</td>");
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
