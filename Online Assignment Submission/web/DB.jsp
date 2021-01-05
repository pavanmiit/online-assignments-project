<%-- 
    Document   : DB
    Created on : Nov 4, 2018, 7:35:15 AM
    Author     : Administrator
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("org.gjt.mm.mysql.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1","root","");
            PreparedStatement stmt;
            stmt=con.prepareStatement("create database assignments");
            stmt.executeUpdate();
            stmt=con.prepareStatement("use assignments");
            stmt.executeUpdate();
            stmt=con.prepareStatement("CREATE TABLE STUDENTS(ROLLNO INT PRIMARY KEY,NAME VARCHAR(20),COURSE  VARCHAR(20),SEM INT,EMAIL VARCHAR(30),MOBILE VARCHAR(10))");
            stmt.executeUpdate();
            stmt=con.prepareStatement("CREATE TABLE TEACHERS(TEMAIL VARCHAR(30) PRIMARY KEY,NAME VARCHAR(20),DEPARTMENT VARCHAR(20),SPECIALIZATION VARCHAR(20),QUALIFICATION VARCHAR(20),MOBILE VARCHAR(10))");
            stmt.executeUpdate();
            stmt=con.prepareStatement("CREATE TABLE ASSIGNMENTS(ASSIGN_ID INT PRIMARY KEY,TITLE VARCHAR(20),COURSE VARCHAR(20),SEM INT,STARTDATE DATE,ENDDATE DATE,UPLOADFILE MEDIUMBLOB)");
            stmt.executeUpdate();
            stmt=con.prepareStatement("CREATE TABLE STUDENT_ASSIGN(ID INT PRIMARY KEY,ASSIGN_ID INT,ROLLNO INT,UPLOADDATE DATE,UPLOADFILE MEDIUMBLOB)");
            stmt.executeUpdate();
            stmt=con.prepareStatement("CREATE TABLE TEACHER_ASSIGN(ID INT,EMAIL VARCHAR(30),COMPLETED_DATE DATE)");
            stmt.executeUpdate();
            stmt=con.prepareStatement("CREATE TABLE MARKS_ASSIGN(ID INT,EMAIL VARCHAR(30),MARKS INT)");
            stmt.executeUpdate();
            stmt=con.prepareStatement("CREATE TABLE USERS(ULOGIN VARCHAR(30),UPASS VARCHAR(10),UTYPE VARCHAR(10))");
            stmt.executeUpdate();
            stmt=con.prepareStatement("INSERT INTO USERS VALUES('admin','ADMIN123','ADMIN')");
            stmt.executeUpdate();
        %>
        <h1>Done</h1>
    </body>
</html>
