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
	  <table border="1" class="list_table2">
	    <tr>
	       <td  colspan="2" style="font-size:15px;"><b>账户信息</b></td>
	    </tr> 
	    <tr>
	       <td >职信个人号：${requestScope.company.JUser.userOutid }</td>
	       <td >注册时间：${requestScope.company.JUser.userTime }</td>
	    </tr> 
	          
	    <tr>
	       <td bgcolor="#F8F8FF" colspan="2" style="font-size:15px;"><b>基本信息</b></td>
	    </tr>     
	    <tr>        
	        <td valign="middle" align="center" rowspan="5" width="50%"><img height="125px" src="${requestScope.company.JUser.userImgface}" >
	        </td><td>昵称：${requestScope.company.JUser.userNikename }</td>
	        
	    </tr>    	
	    <tr>
	        <td>公司名称：${requestScope.company.truename}</td>	   	        	        
	     </tr>
	    <tr>	        
            <td>城市：${requestScope.company.city}</td>
	        
	     </tr>	
	    <tr>

	        <td>地址：${requestScope.company.address}</td>
	        
	     </tr>		          
	     <tr>
	        <td>注册资本：${requestScope.company.registeredcapital}</td>

       
	     </tr>	
	     <tr>
	        <td>法人：${requestScope.company.legalperson}</td>	     
	        <td>负责人：${requestScope.company.leadingofficial }</td>
       
	     </tr>		     	
	     <tr>
	     	<td>行业类型：${requestScope.company.industrytype }</td>	 
	        <td>单位性质：${requestScope.company.unitproperty }</td>
      
	     </tr>
	     <tr>
	        <td>公司规模：${requestScope.company.staffsize}</td> 	     	        
	        <td>销售规模：${requestScope.company.salesscale }</td>

	     </tr>	  
	     <tr>
	        <td>成立时间：${requestScope.company.setuptime }</td>
	        <td>主营业务：${requestScope.company.mainbusiness }</td>
	     </tr>	 	        
	     <tr>
	        <td>品牌名称：${requestScope.company.brandname }</td>
	        <td>主要产品或服务：${requestScope.company.mainproducts }</td>

	     </tr>
	     <tr>
	     
	        <td>主要客户：${requestScope.company.majorclient }</td>	     
	        <td>专利或创新：${requestScope.company.patent }</td>
	     </tr>
	     <tr>

	        <td>主要股东：${requestScope.company.majorshareholder }</td>
	        <td>更新时间：${requestScope.company.ptime }</td>
	     </tr>	     	
	    </table>
	    <table border="1" class="list_table2">	     
	     <tr>
	       <td bgcolor="#F8F8FF" colspan="3" style="font-size:15px;"><b>价值观</b></td>
	     </tr>	
	     <tr>	        
	        <td width="33.3%">联系人名称：${requestScope.cuser.username}</td>
	        <td width="33.3%">电话：${requestScope.cuser.userphone}</td>
	        <td>手机：${requestScope.cuser.userphone2}</td>

	     </tr>	     
	     <tr>
	     	<td>qq：${requestScope.cuser.userqq}</td>
	        <td>办公地址：${requestScope.cuser.useraddress}</td>
	        <td>总机：${requestScope.cuser.userphone3}</td>

	     </tr>	                  
	     <tr>
	        <td>人事部门电话：${requestScope.cuser.userphone4}</td>
	        <td>业务部电话：${requestScope.cuser.userphone5}</td>	     
	        <td>客服电话：${requestScope.cuser.userphone6}</td>
	     </tr>	  
	     <tr>
	        <td>网站：${requestScope.cuser.url}</td>
	        <td>微信号：${requestScope.cuser.weichat}</td>
	        <td>更新时间：${requestScope.cuser.ptime}</td>
	     </tr>		         	     	                 		  
	    </table>
	    <table border="1" class="list_table2">	     
	       <tr>
	         <td bgcolor="#F8F8FF" colspan="3" style="font-size:15px;"><b>证书信息</b></td>
	       </tr>	
	         <%
	          ArrayList<JCompanylicense> alicense=(ArrayList<JCompanylicense>)request.getAttribute("al");
	          for(JCompanylicense l:alicense){ 
	          %>
		    <tr align="center">
		      <td>
                <%=l.getJCompanylicensetype().getCompanylicensetypeName() %>
                <br><br>
                <%
                
	            if(l.getCompanylicenseText()!=null && l.getCompanylicenseText().length()>1){
	             String d=l.getCompanylicenseText();
	             String[] all=d.split(",");	
	             String picture="";
		         for(int i=0;i<all.length;i++){	
		         picture=all[i];	                
		        %>
		        <img width="600px" src="<%=picture %>"><br><br>
		        <% 
		         }
		         }else{}
		         %>			        		        
		       </td>		     
		     </tr>		     
	         <% 
	           }
	         %>		                   	     	                 		  
	    </table>	 
	    <table border="1" class="list_table2">	     
		     <tr>
		       <td bgcolor="#F8F8FF" style="font-size:15px;"><b>企业环境</b></td>
		     </tr>	
		     <tr>	        
		        <td><b>办公环境</b></td>       
		     </tr>
	
			 <tr align="center">
			    <td>
	              <%
	                JCompanyenvironment en=(JCompanyenvironment)request.getAttribute("environment");
	               
		            if(en.getCompanyenvironmentWork()!=null && en.getCompanyenvironmentWork().length()>1){
		             String a=en.getCompanyenvironmentWork();
		             String[] al=a.split(",");	
		             String ids="";
			         for(int i=0;i<al.length;i++){	
			         ids=al[i];	                
			        %>
			        <img width="600px" src="<%=ids %>"><br><br>
			        <% 
			         }}else{}
			         %>			    
			    </td>
			 </tr>		     
		     <tr>	        
		        <td><b>生活环境</b></td>       
		     </tr>
	
			 <tr align="center">
			    <td>
	              <%
	               
		            if(en.getCompanyenvironmentLiving()!=null && en.getCompanyenvironmentLiving().length()>1){
		             String a=en.getCompanyenvironmentLiving();
		             String[] al=a.split(",");	
		             String ids="";
			         for(int i=0;i<al.length;i++){	
			         ids=al[i];	                
			        %>
			        <img width="600px" src="<%=ids %>"><br><br>
			        <% 
			         }}else{}
			         %>			    
			    </td>
			 </tr>			
		     <tr>	        
		        <td><b>娱乐环境</b></td>       
		     </tr>
	
			 <tr align="center">
			    <td>
	              <%
	               
		            if(en.getCompanyenvironmentPlay()!=null && en.getCompanyenvironmentPlay().length()>1){
		             String c=en.getCompanyenvironmentPlay();
		             String[] al=c.split(",");	
		             String img1s="";
			         for(int i=0;i<al.length;i++){	
			         img1s=al[i];	                
			        %>
			        <img width="600px" src="<%=img1s %>"><br><br>
			        <% 
			         }}else{}
			         %>			    
			    </td>
			 </tr>			 			                	     	                 		  
	    </table>
	    <table border="1" class="list_table2">	     
	     <tr>
	       <td bgcolor="#F8F8FF" colspan="2" style="font-size:15px;"><b>员工福利</b></td>
	     </tr>	
	     <tr align="center">
	        <td>福利名称</td>
	        <td>备注</td>
        
	      </tr>
	      <c:forEach var="welfare" items="${requestScope.al1}">
		     <tr align="center">
		        <td width="33.3%">${welfare.JCompanywelfaretype.companywelfaretypeName }</td>
		        <td>${welfare.companywelfareText }</td>
		     </tr>		     
	      </c:forEach>
                   	     	                 		  
	    </table>	 
	    <table border="1" class="list_table2">	     
	     <tr>
	       <td bgcolor="#F8F8FF" colspan="2" style="font-size:15px;"><b>企业文化</b></td>
	     </tr>	
	     <tr>	        
	        <td width="50%">核心价值观：${requestScope.culture.corevalues}</td>
	        <td >远景目标：${requestScope.culture.vision}</td>	
	     </tr>	     
	     <tr>
	        <td>经营理念：${requestScope.culture.managementidea}</td>
	        <td>人才理念：${requestScope.culture.talentidea}</td>
	     </tr>	                  
	     <tr>
	        <td colspan="2" align="center">
	              <b>企业活动图片</b><br><br>
	  
	              <%
	                JCompanyculture culture=(JCompanyculture)request.getAttribute("culture");
		            if(culture.getCulturalactivitypicture()!=null && culture.getCulturalactivitypicture().length()>1){
		             String d=culture.getCulturalactivitypicture();
		             String[] al=d.split(",");	
		             String picture="";
			         for(int i=0;i<al.length;i++){	
			         picture=al[i];	                
			        %>
			        <img width="600px" src="<%=picture %>"><br><br>
			        <% 
			         }}else{}
			         %>		        
	        </td>
	     
	     </tr>	  
		         	     	                 		  
	    </table>	
	    <table border="1" class="list_table2">	     
	     <tr>
	       <td bgcolor="#F8F8FF" colspan="2" style="font-size:15px;"><b>业务信息</b></td>
	     </tr>	
	     <tr>	        
	        <td width="50%">产品信息：${requestScope.business.productinformation}</td>
	        <td >服务信息：${requestScope.business.serviceinformation}</td>	
	     </tr>	     
	     <tr>
	        <td>实体店铺：${requestScope.business.physicalstore}</td>
	        <td>网络店铺：${requestScope.business.wetchatstore}</td>
	     </tr>	                    
		         	     	                 		  
	    </table>	           	       	    	
	    <br><br>		    	               
      </div>
	    
  </body>
</html>
