
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="org.apache.struts2.dispatcher.multipart.MultiPartRequestWrapper" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>个人中心_合游</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery.js"></script>	
	
    <style type="text/css">
	#divv {margin: 0 auto;width:1000px;height:32px;background:#e53430;}    
	#divv ul{padding: 0px;margin-top:0px;margin-left: 0px;height:32px;list-style-type: none;}
    #divv ul li{ float: left;font-size:15px;margin: 0 10px;padding-top:7px;width:120px;height:25px;text-align: center;font-family: 微软雅黑;color:#ffffff;cursor:pointer;}    
    </style>
    <script type="text/javascript">
		function changedh(a){
			document.getElementById("ll"+a).style.background="#1A1A1A";
	
				
		}
		function rechangedh(a){		
			var outid=document.getElementById("doutid").value;	   
			if(a==outid){

			document.getElementById("ll"+a).style.background="#1A1A1A";
     
			}else{	     
		     
		    document.getElementById("ll"+a).style.background="#e53430";

		    }

			}	

	
            $(function(){   
                 var x= document.getElementById("doutid").value;
                 document.getElementById("ll"+x).style.background="#1A1A1A";
                 });                    
                 
        function openhref(src){
        
               window.location.href=src;
               
        }               
        
        
        
                
    </script>

  </head>
  
  <body>

       <div id="divv">	
          <ul>             			            

             <li id="ll2" onclick="openhref('Tjthome.html')" onmousemove="changedh(2)" onmouseout="rechangedh(2)" style="margin-left: 160px">首页</li>
  
             <li id="ll3" onclick="openhref('Tjtmall.html')" onmousemove="changedh(3)" onmouseout="rechangedh(3)" >商城</li>
     
             <li id="ll4" onclick="openhref('qrecruitment.jsp')" onmousemove="changedh(4)" onmouseout="rechangedh(4)">公共服务</li>
         
             <li id="ll5" onclick="openhref('Tjtforum.html')" onmousemove="changedh(5)" onmouseout="rechangedh(5)">本地生活</li>
       
             <li id="ll6" onclick="openhref('Tjtforum.html')" onmousemove="changedh(6)" onmouseout="rechangedh(6)">跳蚤市场</li>             
                        			                
         </ul>	

   
       </div>



  </body>
</html>
