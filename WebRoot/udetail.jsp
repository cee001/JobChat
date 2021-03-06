<%@page import="com.jobchat.entity.JUserpaper"%>
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

  <input type="hidden" name="ui.userinfoId" value="${requestScope.ui.userinfoId }">

     <div class="list_div11" >
	  <table border="1" class="list_table2">
	    <tr>
	       <td  colspan="3" style="font-size:15px;"><b>账户信息</b></td>
	    </tr> 
	    <tr>
	       <td >职信个人号：${requestScope.ui.JUser.userOutid }</td>
	       <td colspan="2">注册时间：${requestScope.ui.JUser.userTime }</td>
	    </tr> 
	          
	    <tr>
	       <td bgcolor="#F8F8FF" colspan="3" style="font-size:15px;"><b>基本信息</b></td>
	    </tr>     
	    <tr>        
	        <td valign="middle" align="center" rowspan="5" width="33.3%"><img height="125px" src="${requestScope.ui.JUser.userImgface}" >
	        </td><td>昵称：${requestScope.ui.JUser.userNikename }</td>
	        <td>姓名：${requestScope.ui.userinfoTruename}</td>
	    </tr>    	
	    <tr>	   	        
	        <td width="33.3%">性别：
	            <c:if test="${requestScope.ui.userinfoSex==false}">
	                                                 男
	            </c:if>
	            <c:if test="${requestScope.ui.userinfoSex!=false}">
	                                                 女
	            </c:if>	            
	        </td>
	        <td>出生年月：${requestScope.ui.birthday}</td>
	        
	     </tr>
	     <tr>
	        <td>身高：${requestScope.ui.height}</td>
	        <td>最高学历：${requestScope.ui.highestdegree}</td>
       
	     </tr>	
	     <tr>
	        <td>学位：${requestScope.ui.academicdegree}</td>
	        <td>专业：${requestScope.ui.professional}</td>	        
	     </tr>		     	
	     <tr>
	        <td>国籍：${requestScope.ui.nationality }</td>
	        <td>民族：${requestScope.ui.nation }</td>       
	     </tr>
	     <tr>	        
	        <td>婚姻状况：${requestScope.ui.maritalstatus }</td>
	        <td>籍贯：${requestScope.ui.placeoforigin }</td>
	        <td>人事档案地：${requestScope.ui.personnelfile }</td>
	     </tr>	     
	     <tr>
	        <td>现所在城市：${requestScope.ui.citynow }</td>
	        <td>政治面貌：${requestScope.ui.politicalstatus }</td>
	        <td>工作年限：${requestScope.ui.workingyears }</td>
	     </tr>
	     <tr>
	        <td>目前薪酬范围：${requestScope.ui.currentsalaryrange }</td>
	        <td>现行业：${requestScope.currentindustry }</td>
	        <td>现单位：${requestScope.ui.currentunit }</td>
	     </tr>
	     <tr>
	        <td>现职位：${requestScope.ui.currentposition }</td>
	        <td>现工作地：${requestScope.ui.nowworking }</td>
	        <td>qq：${requestScope.ui.nowworking }</td>	        
	     </tr>	
	     <tr>
	        <td>工作状态：
	            <c:if test="${requestScope.ui.iswork==1}">
	                                                 在职
	            </c:if>
	            <c:if test="${requestScope.ui.iswork!=1}">
	                                                 求职
	            </c:if>	
	        </td>
	        <td>是否找工作：
	            <c:if test="${requestScope.ui.forwork==1}">
	                                                不找工作
	            </c:if>
	            <c:if test="${requestScope.ui.iswork==2}">
	                                                 看机会
	            </c:if>
	            <c:if test="${requestScope.ui.iswork==3}">
	                                                 急找工作
	            </c:if>	        
	        </td>
	        <td>更新时间：${requestScope.ui.ptime }</td>
	        
	     </tr>	
	     <tr>
	        <td colspan="3">现住地址：${requestScope.ui.adress}</td>        
	     </tr>	
	    </table>
	    <table border="1" class="list_table2">	     
	     <tr>
	       <td bgcolor="#F8F8FF" colspan="6" style="font-size:15px;"><b>教育信息</b></td>
	     </tr>	
	     <tr align="center">
	        <td>时间</td>
	        <td>学校</td>
	        <td>院系</td>
	        <td>专业</td>
	        <td>学历</td>
	        <td>证书</td>	        
	      </tr>
	      <c:forEach var="edu" items="${requestScope.al}">
		     <tr align="center">
		        <td>${edu.time }</td>
		        <td>${edu.school }</td>
		        <td>${edu.department }</td>
		        <td>${edu.professional }</td>
		        <td>${edu.education }</td>
		        <td>${edu.certificate }</td>
		     </tr>		     
	      </c:forEach>
                   	     	                 		  
	    </table>
	    <table border="1" class="list_table2">	     
	     <tr>
	       <td bgcolor="#F8F8FF" colspan="6" style="font-size:15px;"><b>技能信息</b></td>
	     </tr>	
	     <tr align="center">
	        <td width="33.3%">编号</td>
	        <td>技能名称</td>      
	      </tr>
	      <c:forEach var="skill" items="${requestScope.al1}">
		     <tr align="center">
		        <td>${skill.skillId }</td>
		        <td>${skill.JUserskilltype.userskilltypeName }</td>

		     </tr>		     
	      </c:forEach>
                   	     	                 		  
	    </table>	
	    <table border="1" class="list_table2">	     
	     <tr>
	       <td bgcolor="#F8F8FF" colspan="6" style="font-size:15px;"><b>工作信息</b></td>
	     </tr>	
	     <tr align="center">
	        <td>工作时间</td>
	        <td>单位名称</td>
	        <td>岗位</td>
	        <td>证明人</td>
	        <td>证明人手机号码</td>
	        <td>平均月薪范围</td>	        
	      </tr>
	      <c:forEach var="work" items="${requestScope.al2}">
		     <tr align="center">
		        <td>${work.time }</td>
		        <td>${work.unitname }</td>
		        <td>${work.post}</td>
		        <td>${work.witness }</td>
		        <td>${work.witnessphone }</td>
		        <td>${work.averagemonthlysalaryrange }</td>
		     </tr>		     
	      </c:forEach>
                   	     	                 		  
	    </table>	 
	    <table border="1" class="list_table2">	     
	     <tr>
	       <td bgcolor="#F8F8FF" colspan="3" style="font-size:15px;"><b>证书信息</b></td>
	     </tr>	
	        <%
	          ArrayList<JUserpaper> al3=(ArrayList<JUserpaper>)request.getAttribute("al3");
	          if(al3.size()>0){
	          
	          for(JUserpaper p:al3){ 
	        %>
		    <tr align="center">
		      <td>
                <b><%=p.getJUserpapertype().getTypename() %></b>
                <br><br>
               <%
                
	            if(p.getPaperimg()!=null && p.getPaperimg().length()>1){
	             String d=p.getPaperimg();
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
	           }}else{out.println("kong");}
	         %>		                   	     	                 		  
	    </table>	    
	    <table border="1" class="list_table2">	     
	     <tr>
	       <td bgcolor="#F8F8FF" colspan="5" style="font-size:15px;"><b>测评信息</b></td>
	     </tr>	
	     <tr align="center">
	        <td>性格特点</td>
	        <td>职业倾向性</td>
	        <td>管理能力测评</td>
	        <td>心理素质测评</td>
	        <td>表达沟通能力测评</td>	        
	      </tr>
	      <c:forEach var="valuation" items="${requestScope.al4}">
		     <tr align="center">
		        <td>${valuation.character }</td>
		        <td>${valuation.occupationaltendency }</td>
		        <td>${valuation.managementcapabilityassessment}</td>
		        <td>${valuation.psychologicalqualityassessment }</td>
		        <td>${valuation.communicationskillsassessment }</td>

		     </tr>		     
	      </c:forEach>
                   	     	                 		  
	    </table>	    
	    <table border="1" class="list_table2">	     
	     <tr>
	       <td bgcolor="#F8F8FF" colspan="3" style="font-size:15px;"><b>价值观</b></td>
	     </tr>	
	     <tr>	        
	        <td width="33.3%">宗教信仰：${requestScope.values.religiousbelief}</td>
	        <td width="33.3%">品格观：${requestScope.values.viewofcharacter}</td>
	        <td>对人：${requestScope.values.forpeople}</td>

	     </tr>	     
	     <tr>
	     	<td>对事：${requestScope.values.ofthings}</td>
	        <td>家庭：${requestScope.values.family}</td>
	        <td>对事业：${requestScope.values.tocause}</td>

	     </tr>	                  
	     <tr>
	        <td>对长辈：${requestScope.values.totheelders}</td>
	        <td>对晚辈：${requestScope.values.fortheyounger}</td>	     
	        <td>对公：${requestScope.values.tothepublic}</td>
	     </tr>	  
	     <tr>
	        <td>对私：${requestScope.values.theprivate}</td>
	        <td>对生活：${requestScope.values.tolive}</td>
	        <td>&nbsp;</td>
	     </tr>		         	     	                 		  
	    </table>	
	    <table border="1" class="list_table2">	     
	     <tr>
	       <td bgcolor="#F8F8FF" style="font-size:15px;"><b>兴趣爱好</b></td>
	     </tr>	

		 <tr align="center">
		   <td>
             <c:forEach var="hobby" items="${requestScope.al5}">		        
	           <div style="width:150px;float: left;font-size: 13px;">${hobby.JUserhobbytype.name }</div>
	         </c:forEach>
		   </td>
		  </tr>		     

                   	     	                 		  
	    </table>	
	    <table border="1" class="list_table2">	     
	     <tr>
	       <td bgcolor="#F8F8FF" colspan="3" style="font-size:15px;"><b>工作意向</b></td>
	     </tr>	
	     <tr>	        
	        <td width="33.3%">工作地：${requestScope.forjob.address}</td>
	        <td width="33.3%">薪酬：${requestScope.forjob.sralry}</td>
	        <td>行业：${requestScope.forjob.job}</td>

	     </tr>	     
	     <tr>
	     	<td>职能类型：${requestScope.forjob.functionaltype}</td>
	        <td>职务等级：${requestScope.forjob.jobrank}</td>
	        <td>公司规模：${requestScope.forjob.companysize}</td>

	     </tr>	                  
	     <tr>
	        <td>公司性质：${requestScope.forjob.companyproperty}</td>
	        <td>住宿：${requestScope.forjob.stay}</td>    
	        <td>交通：${requestScope.forjob.traffic}</td>
	     </tr>	  
	     <tr>
	        <td>股权：${requestScope.forjob.equity}</td>
	        <td>业绩提成：${requestScope.forjob.performanceroyalty}</td>
	        <td>全／兼职／实习：
	            <c:if test="${requestScope.forjob.fullpartTimeInternship==1}">
	                                                全
	            </c:if>
	            <c:if test="${requestScope.forjob.fullpartTimeInternship==2}">
	                                                兼职
	            </c:if>
	            <c:if test="${requestScope.forjob.fullpartTimeInternship==3}">
	                                                 实习
	            </c:if>	  
	        </td>
	     </tr>		         	     	                 		  
	    </table>
	    <br><br>		    	               
      </div>
	    
  </body>
</html>
