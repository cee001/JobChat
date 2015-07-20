<%@page import="com.jobchat.entity.Powers"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'grzxh.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/sunmailStyle.css" rel="stylesheet" type="text/css" />
  
  </head>
  
  <body>
    <input id="d1" type="hidden" value="300">
    <% ArrayList<Powers> al=(ArrayList<Powers>)request.getAttribute("al");%>   
    <table class="dh1_table1">
     <tr align="center">
     <td class="dh1_tab_td1" >&nbsp;</td>
       <% 
         for(Powers p:al){
         if(p.getMenus().getMid()<31000 &&p.getMenus().getMid()>29999){
         
        %> 
       <td class="dh1_tab_td3" ><a href="<%=p.getMenus().getNurl() %>" target="tv"><%=p.getMenus().getMtitle() %></a></td>
       <%}} %>
       <td>&nbsp;</td>
     </tr>
    </table>
  </body>
</html>
