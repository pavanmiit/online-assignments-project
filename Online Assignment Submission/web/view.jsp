<%
    Class.forName("org.gjt.mm.mysql.Driver");
    java.sql.Connection con=java.sql.DriverManager.getConnection("jdbc:mysql://127.0.0.1/assignments","root","");
    java.sql.PreparedStatement stmt=con.prepareStatement("Select UPLOADFILE from student_assign where id=?");
    stmt.setString(1,request.getParameter("id"));
    java.sql.ResultSet rs=stmt.executeQuery();
    if(rs.next())
    {
        byte[] data=rs.getBytes(1);
        response.setContentType("application/pdf");
        response.setContentLength(data.length);
        java.io.OutputStream myout=response.getOutputStream();
        myout.write(data);
        myout.close();
    }
%>