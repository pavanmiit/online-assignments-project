<%-- 
    Document   : submissionassign
    Created on : Dec 16, 2018, 8:39:16 PM
    Author     : Wazid A Malik
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
                java.util.Date d=new java.util.Date();
                int y=d.getYear()+1900;
                int m=d.getMonth()+1;
                int dt=d.getDate();
                String today=y+"-"+m+"-"+dt;
                String course="",sem="";
                stmt=con.prepareStatement("Select * from Students where rollno=?");
                stmt.setObject(1,session.getAttribute("ULOGIN"));
                rs=stmt.executeQuery();
                if(rs.next())
                {
                    course=rs.getString("course");
                    sem=rs.getString("sem");
                }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <img src="login5.jpg" width="100%" height="300"><hr>
        <table width="100%">
            <tr>
                <td><a href="student.jsp">Home</a></td>
                <td><a href="detail.jsp">My Detail</a></td>
        <td><a href="pass.jsp">Password</a></td>
                <td><a href="submissionassign.jsp">Assignments Submission</a></td>
                <td><a href="result.jsp">Result</a></td>
                <td><a href="logout.jsp">Logout</a></td>
            </tr>            
        </table>
        <hr>
    <center><h2>Current Assignments</h2></center>
    <table align="center">
        <tr>
                <th>ID</th><th>Title</th><th>Course</th><th>Semester</th><th>Start Date</th><th>End Date</th>
            </tr>
        <%
               
                stmt=con.prepareStatement("Select * from Assignments where course=? and sem=? and startdate>=? ");
                stmt.setString(1,course);
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
                    out.write("<td>"+rs.getObject(7)+"</td>");
                    out.write("</tr>");
                }
        %>
    </table>
        <hr>
        <form method="post" enctype="multipart/form-data" action="upload.jsp">
        <table align="center">
            <tr>
                <td>Select Assignment:</td>
                <td>
                    <select name="t1">
                    <%
               
                            stmt=con.prepareStatement("Select * from Assignments where course=? and sem=? and startdate>=?");
                            stmt.setString(1,course);
                            stmt.setString(2,sem);
                            stmt.setString(3,today);
                            //stmt.setString(4,today);
                            rs=stmt.executeQuery();
                            while(rs.next())
                            {
                                String s1=rs.getString(1);
                                String s2=rs.getString(2);
                                out.write("<option value='"+s1+"'>"+s2+"</option>");
                                
                                
                            }
                    %>    
                    </select>
                </td>
            </tr>
            <tr>
                <td>Pdf File:</td>
                <td><input type="file" name="t2"></td>
            </tr>
            <tr>
                <td></td><td><input type="submit" name="b1" value="Upload"></td>
            </tr>
        </table></form>
        <hr>   
    <center>
        All Rights Reserved, Copyrights 2018<br>
        MIIT College, Meerut
    </center>
    </body>
</html>