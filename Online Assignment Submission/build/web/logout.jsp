<%-- 
    Document   : logout
    Created on : Nov 13, 2018, 8:16:55 PM
    Author     : Wazid A Malik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   session.removeAttribute("ULOGIN");
                      session.removeAttribute("UTYPE");
               
     session.invalidate();
               
      response.sendRedirect("homepage.jsp");
       
 %>
