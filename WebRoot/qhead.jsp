<%@page import="java.net.URLDecoder"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'qhead.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		.bt1{
			background-image:url(images/home/sc1.png);
		}
		.bt2{
			background-image:url(images/home/sc2.png);
		}

	</style>
	<script type="text/javascript">
	   	var curTimer=null;
		function changex1(){
	
		    document.getElementById("u2").style.display="block";
			document.getElementById("gz1").src="images/home/gzb.png";	
			document.getElementById("jt1").src="images/home/jtb.png";
			curTimer=setTimeout("change1b()",50);
			document.getElementById("dvapp").style.background="#ffffff";
		}
		function rechangex1(){
		
		     document.getElementById("u2").style.display="none";
			 document.getElementById("gz1").src="images/home/gza.png";	
			 document.getElementById("jt1").src="images/home/jtb.png";		
			 curTimer=setTimeout("rechange1a()",50);
			 document.getElementById("dvapp").style.background="#dadada";			
		}   
		function rechange1a(){
	        document.getElementById("u2").style.display="none";
			document.getElementById("jt1").src="images/home/jta.png";
		    clearTimeout(curTimer);
		} 	
		function change1b(){
	        document.getElementById("u2").style.display="block";
			document.getElementById("jt1").src="images/home/jtc.png";
		    clearTimeout(curTimer);
		    
		}
		
		function change2a(id){
	        document.getElementById("al"+id).style.color="#CD0000";		    
		}		
		function rechange2a(id){
	        document.getElementById("al"+id).style.color="#2E2E2E";
	
		} 	

	</script>
  </head>
  
  <body> 

       <div  style="width:100%;margin:0 auto;padding:0;background:#dadada;"> 
         <div style="width:1000px;margin:0 auto;">
         <table align="center" style="width:1000px;height:30px;overflow:hidden;font-size: 13px;">        
           <tr>
              
              <td align="left" style="width:100px;">
                  <div >
                    &nbsp;<img src="images/home/sc1.png" onmouseover="this.src='images/home/sc1.png' ; this.style.color='#ffffff'"
							   onmouseout="this.src='images/home/sc2.png'; this.style.color='#1E1E1E'"> 
                    <a id="al1" style="font-weight: 400;font-size:13px;color:#2E2E2E;" onmouseover="change2a(1)" onmouseout="rechange2a(1)" 
                       href="javascript:window.external.AddFavorite('http://localhost:8080/TJT/Tjthome.html','阳光社区')">
                                                                               收藏该网站
                    </a>
                  </div>
              </td>
              <td align="left" style="width:560px;">
                  <div>
                     &nbsp;
                  </div>
              </td>    
              <td align="center" style="width:220px;" onmouseover="rechangex1()">
    	        <% 
    	         Cookie[] cookies= request.getCookies();
    	         String usernikename="";
    	         if(cookies!=null &&cookies.length>0){
    	            for(int i=0;i<cookies.length;i++){
    	             if(cookies[i].getName().equals("mrCookie")){
    	                usernikename=cookies[i].getValue().split("#")[1]; 
    	            }
    	         }
    	         }
    	         if(usernikename!="" && usernikename.length()>1){
    	         %>    	         
    	          <a id="al7" style="font-weight: 500;font-size:13px;color:#2E2E2E;" onmouseover="change2a(7)" onmouseout="rechange2a(7)"
    	             href="Tjtcenter.jsp">tjt_<%=usernikename %></a> 
    	          <a id="al2" style="font-weight: 400;font-size:13px;color:#2E2E2E;" onmouseover="change2a(2)" onmouseout="rechange2a(2)" 
    	             href="ur!dologinout.action">退出</a>
    	         <%
    	         }else{
    	         %>
    	           <a id="al3" style="font-weight: 400;font-size:13px;color:#2E2E2E;" onmouseover="change2a(3)" onmouseout="rechange2a(3)" href="qlogin.jsp">请登录</a>
    	           &nbsp;<a id="al4" style="font-weight: 400;font-size:13px;color:#2E2E2E;" onmouseover="change2a(4)" onmouseout="rechange2a(4)" href="qregister.jsp">注册</a>  
    	         <%
    	         }
    	         %>
              </td>  
              <td >
                 <div id="dvapp"  onmouseover="changex1()" style="width:125px;height:100%;">
                  <ul style="position:absolute;margin-top: 7px;">
                     <li style="float: left;margin-top: 0px">&nbsp;<img id="gz1" src="images/home/gza.png" ></li>
                     <li style="float: left;margin-left: 7px">
		                <a id="al5" style="font-weight: 400;font-size:13px;color:#2E2E2E;text-decoration : none;"onmouseover="change2a(5)" onmouseout="rechange2a(5)">
		                                                               手机阳光社区
		                </a>                    
                     </li>
                     <li style="float: left;margin-top: 3px;" ><img id="jt1" style="margin-left: 3px" src="images/home/jta.png"> </li>                    
                  </ul>                
                 </div>
              </td>            
              <td  onmouseover="rechangex1()" >&nbsp;</td>
           </tr>
         </table>

         <div style="margin:0 auto; POSITION:relative;  Z-INDEX:800;margin-top:0px;width:1000px;">      	   
            <ul id="u2" style="FLOAT: right;margin-top:0px;margin-right:5px;display:none; POSITION:relative;  Z-INDEX:800;">
		      <li style="margin-top:0px;padding:0;FLOAT:right;width:220px; height:100px; POSITION:relative;  Z-INDEX:400;
		          border: 1px solid;border-color:red;border-top-color:#ffffff;background:#ffffff;font-size: 13px;">
                <div>  
	                <ul style="float: left;padding: 10px;list-style-type: none;">
	                 <li style="POSITION:relative;  Z-INDEX:800;">
	                   <img alt="" src="images/home/ewm.png">
	                 </li>
	                </ul>
	                <ul style="float: left;padding: 0px;margin-left: 0px;list-style-type: none;">
	                 <li style="margin-left: 3px;margin-top: 10px;">
	                                                                 阳光社区客户端
	                 </li>
	                 <li style="float: left;margin-left: 3px;margin-top: 10px;">
	                   <img alt="" src="images/home/pg1.png" onmouseover="this.src='images/home/pg2.png'"
							   onmouseout="this.src='images/home/pg1.png'">
	                 </li>
	                 <li style="float: left;margin-left: 3px;margin-top: 10px">
	                   <img alt="" src="images/home/az1.png" onmouseover="this.src='images/home/az2.png' ; this.style.color='#ffffff'"
							   onmouseout="this.src='images/home/az1.png'; this.style.color='#1E1E1E'">
	                 </li>
	                </ul>                       
                </div>
		      <li>	
		              
	        </ul>
	     </div>	  		         
         </div>
       </div>
    
  </body>
</html>
