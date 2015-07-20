
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
	<link href="css/linkStyle.css" rel="stylesheet" type="text/css" />	
	<link href="css/sunmallStyle.css" rel="stylesheet" type="text/css" />	
    <style type="text/css">

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

       <div class="divh">	
          <ul id="divh_ul1">             			            
             <li></li>                                     			                
          </ul>	
          <ul>             			            
             <li style=""><a href="" id="divh_l1"><b>公共服务&nbsp;></b></a></li>  
             <li id="divh_l2"><a href="" >居委会</a></li>

             <li><a href="">物业</a></li>
             <li><a href="">社区服务</a></li>
             <li><a href="">缴税</a></li>
             <li><a href="">政务</a></li>
             <li><a href="">医疗</a></li>
             <li><a href="">教育</a></li>
             <li><a href="">环境</a></li>
             <li><a href="">治安</a></li>
             <li><a href=""><b>更多>></b></a></li>
                                    			                
          </ul>	
          <ul>             			            
             <li><a href="" id="divh_l1"><b>&nbsp;&nbsp;&nbsp;&nbsp;商城&nbsp;&nbsp;&nbsp;&nbsp;></b></a></li>  
             <li id="divh_l2"><a href="">休闲食品</a></li>
             <li><a href="">饮品畅饮</a></li>            
             <li><a href="" >时鲜水果</a></li>
             <li><a href="">精选蔬菜</a></li>
             <li><a href="">海鲜水产</a></li>
             <li><a href="">肉类</a></li>
             <li><a href="">禽类</a></li>
             <li><a href="">冷冻冷藏</a></li>
             <li><a href="">粮油副食</a></li>
             <li><a href="">调味品</a></li>
                                    			                
          </ul>	
          <ul>             			            
             <li><a href="" id="divh_l1"><b>周边生活 ></b></a></li>  
             <li id="divh_l2"><a href="" >理发</a></li>

             <li><a href="">母婴</a></li>
             <li><a href="">洗车</a></li>
             <li><a href="">修车</a></li>
             <li><a href="">停车</a></li>
             <li><a href="">容物</a></li>
             <li><a href="">健身</a></li>
             <li><a href="">租房</a></li>
             <li><a href="">售房</a></li>
             <li><a href=""><b>更多>></b></a></li>
                                    			                
          </ul>	
          <ul>             			            
             <li><a href="" id="divh_l1"><b>上门服务&nbsp;></b></a></li>  
             <li id="divh_l2"><a href="" >家政</a></li>

             <li><a href="">家教</a></li>
             <li><a href="">家装</a></li>
             <li><a href="">理发</a></li>
             <li><a href="">理财</a></li>
             <li><a href="">维修</a></li>
             <li><a href="">母婴</a></li>
             <li><a href="">急诊</a></li>
                                    			                
          </ul>	                    
          <ul>             			            
             <li><a href="" id="divh_l1"><b>跳蚤市场&nbsp;></b></a></li>  
             <li id="divh_l2"><a href="" >二手置换</a></li>
             <li><a href="">物物交换</a></li>
                                    			                
          </ul>	    
       </div>



  </body>
</html>
