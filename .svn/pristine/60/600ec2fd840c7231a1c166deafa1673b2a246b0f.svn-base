<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'showup.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    
  </head>
  
 <body >
 
  <%@include file="check_a.jsp" %>  
  <form  action="admin!doUpdate.action" method="post">
 
  <input type="hidden" name="am.id" value="${requestScope.am.id }">

    <table   border="1" bordercolor="#B2DFEE" align="center" style="border-collapse: collapse;width:100%;line-height: 25px;font-size:15px;" cellpadding="0" cellspacing="0"> 
    <tr>
          <td colspan="2" bgcolor="#F0F8FF" align="left">
            <div style="font-size:15px;">
                 <div  style="margin-top: 5px;margin-left: 12px"> 
                 <b>列表角色&nbsp;<img alt="" src="images/jt07.png">&nbsp;修改资料</b> 
                 </div>
            </div>
          </td>  
    </tr>     
    <tr>
       <td bgcolor="#F0F8FF" align="right">账号：</td>
       <td><input type="text" name="am.loginId" value="${requestScope.am.loginId }"/></td>
    </tr>

      <tr>
   		 <td bgcolor="#F0F8FF" align="right">角色：</td>
   		 <td>
   			<select border="0"name="am.Roleinfo.roleId">
   				<c:forEach var="r" items="${requestScope.al}">
   					<c:if test="${r.roleId==requestScope.am.roleinfo.roleId}">
   						<option selected="selected" value="${r.roleId }">${r.roleName }</option>
   					</c:if>
   					<c:if test="${r.roleId!=requestScope.u.roleinfo.roleId}">
   						<option  value="${r.roleId }">${r.roleName }</option>
   					</c:if>
   				</c:forEach>	
   			</select>
   		 </td>
   	  </tr>
   		  
        <tr>
	   		<td bgcolor="#F0F8FF" align="right">
		      <input type="submit" value="修 改" 
		             onmouseover="this.style.background='url(images/lan1.jpg)'" onmouseout="this.style.background='url(images/lan.jpg)'"
                     style="margin-left: 12px; border:none;width:70px; height:25px;font-size:15px;color:#ffffff; background:url(images/lan.jpg)" />
	        </td>        
   			<td align="right">
  			
	          <a href="admin!showList.action"><input type="submit" value="取 消" 
	             onmouseover="this.style.background='url(images/lan1.jpg)'" onmouseout="this.style.background='url(images/lan.jpg)'"
                 style="margin-left: 12px; border:none;width:70px; height:25px;font-size:15px;color:#ffffff; background:url(images/lan.jpg)"/></a>	                     
	              &nbsp;       
            </td>

   	   </tr>
    </table>
    </form>
    
  </body>
</html>
