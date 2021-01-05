<%@page import="java.sql.*" %>
<%    
int size=request.getContentLength();
byte[] data=new byte[size];
java.io.InputStream inr=request.getInputStream();
int read=0;
int remaining=size;
while(remaining>0)
{
    int n=inr.read(data,read,remaining);
    read=read+n;
    remaining=size-read;
}
String str=new String(data);
int p=str.indexOf("\r\n");
String boundary=str.substring(0,p);

int p1=str.indexOf("name=\"t1\"")+13;
int p2=str.indexOf(boundary,p1)-2;
String s1=str.substring(p1,p2);

p1=str.indexOf("name=\"t2\"");
p1=str.indexOf("filename=",p1)+10;
p2=str.indexOf("\r\n",p1)-1;
String filename=str.substring(p1,p2);

p1=str.indexOf("Content-Type: ",p2)+14;
p2=str.indexOf("\r\n\r\n",p1);
String filetype=str.substring(p1,p2);

p1=p2+4;
p2=str.indexOf(boundary,p1)-3;
int filesize=p2-p1+1;
byte[] filedata=new byte[filesize];
System.arraycopy(data, p1,filedata,0, filesize);
Class.forName("org.gjt.mm.mysql.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/assignments","root","");
PreparedStatement stmt=con.prepareStatement("select count(*)+1 from student_assign");
ResultSet rs=stmt.executeQuery();
String id="";
if(rs.next())
{
    id=rs.getString(1);
}
 java.util.Date d=new java.util.Date();
                int y=d.getYear()+1900;
                int m=d.getMonth()+1;
                int dt=d.getDate();
                String today=y+"-"+m+"-"+dt;
Object rollno=session.getAttribute("ULOGIN");
stmt=con.prepareStatement("Insert into student_assign values(?,?,?,?,?)");

stmt.setString(1,id);
stmt.setString(2,s1);
stmt.setObject(3,rollno);
stmt.setObject(4,today);
stmt.setBytes(5,filedata);
stmt.executeUpdate();
con.close();
response.sendRedirect("student.jsp");
%>
