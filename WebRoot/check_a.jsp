<%@page import="com.jobchat.entity.Admin"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <body>
	  <% 
	     Admin an=(Admin)session.getAttribute("sunlogin"); 
	     if(session.getAttribute("sunlogin")==null){
            response.sendRedirect("sunlogin.jsp");
            return;          
         }else{

         } 
	   %>

  </body>
</html>
