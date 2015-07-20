
<%@page import="com.jobchat.entity.Powers"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
			
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'head.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/sunmailStyle.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="jquery-1.4.1.js"></script>
	<style type="text/css">
		.bh1{
			background-image:url(images/sun/96.png);
		}
		.bh2{
			background-image:url(images/sun/1.png);
		}


   </style>
 
       <script type="text/javascript">
   
		function changeh(id){
			document.getElementById(id).style.background="url(http://xheyou.com/sunhome/images/sun/96.png)";
			document.getElementById(id).style.color="red";
								
		}
		function rechangeh(id){
		    var did=document.getElementById("d2").value;
            if(id==did){
	            document.getElementById(id).style.background="url(http://xheyou.com/sunhome/images/sun/96.png)";
				document.getElementById(id).style.color="red";
            }else{
				document.getElementById(id).style.background="none";
				document.getElementById(id).style.color="#ffffff";
            }
	    }
	    function clickchange(){
	
				document.getElementById($("#d2").val()).style.background="none";
				document.getElementById($("#d2").val()).style.color="#ffffff";  	    
 																    
	    }
	    
	    
	    $(function(){   
            getMyTime();
            var did=document.getElementById("d1").value;  	
			document.getElementById(did).style.background="url(http://xheyou.com/sunhome/images/sun/96.png)";
			document.getElementById(did).style.color="red";	
       	  });
       	              //获取系统时间
            function getMyTime(){
              var myDate = new Date();
              var Y=myDate.getFullYear();   
 
              var M=myDate.getMonth();  
              M=M+1;   
              if(M<10){
                 M="0"+M;
              }         
              var D=myDate.getDate();  
              if(D<10){
                 D="0"+D;
              }  
              var H=myDate.getHours();
              var MI=myDate.getMinutes();
              var X= myDate.getDay();
              if(X==0){
              X="星期天";
              }else if(X==1){
              X="星期一";
              }else if(X==2){
              X="星期二";
              }else if(X==3){
              X="星期三";
              }else if(X==4){
              X="星期四";
              }else if(X==5){
              X="星期五";
              }else if(X==6){
              X="星期六";
              }
              if(MI<10){
                    MI="0"+MI;
              }  
              var time=Y+"年"+M+"月"+D+"日 "+X+" "+H+":"+MI;
                    
              $("#timeid").html(time); 
              window.setTimeout("getMyTime()",20000);
              }
		</script>
  </head>
  
  <body >

       
        <div class="dh_divp1" style="background:url(images/sun/dh1.png);">   
        <% ArrayList<Powers> al=(ArrayList<Powers>)request.getAttribute("al");%>     
        <table class="dh_table1">        
           <tr>
              <td class="dh_tab_td1" align="center" valign="middle" >	    
	                    <div class="dh_divp2">
	                       <img width="100%" src="images/sun/jlog.png">
	                    </div>       
              </td>

            <% 
             for(Powers p:al){
             if(p.getMenus().getMid()<700){
            %>     
              <td align="center" class="dh_tab_td2">
               <div class="dh_divp5">
                 <div style="margin-top:8px;">                                                                      
		            <a onclick="openhref('<%=p.getMenus().getMid() %>')" style="text-decoration: none;color: #ffffff;" >
		                                                  
		              <input id="<%=p.getMenus().getMid() %>" class="dh_input1" type="button" value="<%=p.getMenus().getMtitle() %>"
		                     onmouseover="changeh(<%=p.getMenus().getMid() %>)" onmouseout="rechangeh(<%=p.getMenus().getMid()%>)">                                 
		            </a> 	             
                 </div>
                </div>     	                                                                        
              </td>              

             <%}} %>  
             <td align="right"><div id="timeid" class="dh_divp6"></div></td>  
        </table>
       </div>
 

	
	        
  </body>
</html>
	        