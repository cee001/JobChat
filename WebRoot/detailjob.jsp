<%@page import="com.jobchat.entity.JCompanylicense"%>
<%@page import="com.jobchat.entity.JCompanyculture"%>
<%@page import="com.jobchat.entity.JCompanyenvironment"%>
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
	<link href="css/sunmailStyle.css" rel="stylesheet" type="text/css" />
  </head>
  
 <body bgcolor="#ffffff">

     <div class="list_div11" >
	  <table class="list_table2"style="background: #FFFFFF">
          <tr>
          <td style="width:25%;">&nbsp;</td>
          <td colspan="2"><b>职位信息</b></td>
          </tr> 
          <tr>
          <td style="border-right-color: #ffffff;width:25%;">&nbsp;</td>
          <td style="width:35%;">招聘职位:${requestScope.job.name }</td>
          <td>职位类型:${requestScope.job.JCompanyjobtype.companyjobtypeName }</td>
          </tr> 
          <tr>
          <td style="border-right-color: #ffffff;">&nbsp;</td>
          <td>职务等级:${requestScope.job.name }</td>
          <td>汇报对象:${requestScope.job.reportobjects }</td>
          </tr> 
          <tr>
          <td style="border-right-color: #ffffff;">&nbsp;</td>
          <td>下属部门:${requestScope.job.departments }</td>
          <td>下属人数:${requestScope.job.number }</td>
          </tr>         
          <tr>
          <td style="border-right-color: #ffffff;">&nbsp;</td>
          <td>薪资水平:${requestScope.job.salaryrange}</td>
          <td>提成:${requestScope.job.commission }</td>
          </tr>     
          <tr>
          <td style="border-right-color: #ffffff;">&nbsp;</td>
          <td>股权:${requestScope.job.equity}</td>
          <td>工作地区:${requestScope.job.workadress }</td>
          </tr>
          <tr>
          <td style="border-right-color: #ffffff;">&nbsp;</td>
          <td>发布时间:${requestScope.job.ptime}</td>
          <td style="border-right-color: #ffffff;">&nbsp;</td>
          </tr>
          <tr>
          <td style="width:25%;">&nbsp;</td>
          <td colspan="2"><b>职位要求</b></td>
          </tr>  
          <tr>
          <td style="border-right-color: #ffffff;">&nbsp;</td>
          <td>性别:${requestScope.job.sex}</td>
          <td>年龄:${requestScope.job.age}</td>
          </tr> 
          <tr>
          <td style="border-right-color: #ffffff;">&nbsp;</td>
          <td>工作年限:${requestScope.job.workage}</td>
          <td>全兼职实习:${requestScope.job.fulltimeinternship}</td>
          </tr>
          <tr>
          <td style="border-right-color: #ffffff;">&nbsp;</td>
          <td colspan="2">岗位职责:${requestScope.job.jobresponsibilities}</td>

          </tr>
          <tr>
          <td style="border-right-color: #ffffff;">&nbsp;</td>
          <td colspan="2">任职条件:${requestScope.job.workingcondition}</td>

          </tr>                    

      </table>
	           	       	    	
	    <br><br>		    	               
      </div>
	    
  </body>
</html>
