<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'listmenu.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#FCFCFC">
      <div>                               
		    <table><tr><td>——</td><td>编号</td><td>-----节点名称</td></tr></table>
		    <input type="hidden" name="rid" value="${param.rid }"><!--param 参数  -->
		    <ol style="color:#3A5FCD;">
			    <c:forEach var="m" items="${requestScope.al }">		    
			       <li>
			          ${m.mid}-----${m.mtitle }<br>
			       </li>
			    </c:forEach>
		    </ol> 		  
	 </div>
		    
  </body>
</html>
