<%@page import="com.jobchat.entity.Admin"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>SunHome后台管理系统</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="jquery-1.4.1.js"></script>
	<link href="css/sunmailStyle.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
	    
  
	</style>
	<script type="text/javascript">
	  function openhref(mid){
	  
             clickchange();	 
             document.getElementById(mid).style.background="url(http://xheyou.com/sunhome/images/sun/96.png)";
             document.getElementById(mid).style.color="red";             
             var src="";
             if(mid==100){
               src="kong.jsp";
             }else if(mid==200){
               src="men!showmenu1.action";
             }else if(mid==300){
               src="men!showmenu2.action";
             }else if(mid==400){
               src="men!showmenu3.action";
             }else if(mid==500){
               src="men!showmenu4.action";
             }else if(mid==600){
               src="men!showmenu5.action";
             }   
         
       		 $.ajax({ 
			         async:false,    	       		
				     type:"get",
				     url:src, 
				     success:function(d){		
				            if(d!=null & d.length>20){
				               $("#divdh").html(d);

				            }else{

				               $("#divdh").load(src); 	
				            }      				                 				            			            				     
							$("#d2").val(mid);									
				     }              			
			 });	 
				 	             
        }	
	
      $(function(){   
                 $("#divp1").load("men!showmenu.action"); 	  
            	 $.ajax({ 
			          	       		
				     type:"get",
				     url:"kong.jsp", 
				     success:function(d){
				                 
				            $("#divdh").html(d);
				     		var did=document.getElementById("d1").value;  	
			     		
							document.getElementById(did).style.background="url(http://xheyou.com/sunhome/images/sun/96.png)";
							document.getElementById(did).style.color="red";	
							       
				     }              
			
				   });
		   
	  });
	     function changeif(a){
	     
	       if(a==1){
	          document.getElementById("dvif1").style.display="block";
	       }else{
	          document.getElementById("if1").style.display="none";	   
	      }
	    }
	</script>
  </head>
  
  <body>
      <input id="d2" type="hidden" value="100">
      <%
        if(session.getAttribute("sunlogin")==null){
               response.sendRedirect("sunlogin.jsp");
               return;
          
         }else{

         } 
      %> 
     <div id="indexdiv">       
             
        <div id="divp1">
    
        </div>
        
        <div id="divp2" >        
            <div id="divp2a">   
	            <div id="divp2a_1">
	              <img alt="" style="width:7px;height:100%" src="images/home/dh1.png">               
	            </div> 
	            <div id="divp2a_2">
	              &nbsp;<iframe  width="95%" height="100%" frameborder="0" src="men!showMenuByRoleId.action"></iframe>	
	            </div>
	            <div id="divp2a_3">
	              <img alt="" style="width:7px;height:100%" src="images/home/dh1.png">               
	            </div>   
            </div>  
                    
            <div id="divp2b">
	            <div id="divp2b_1" style="background:url(images/home/dht.png)">	   
	                     
	              <% Admin am= (Admin)session.getAttribute("sunlogin");%>	       
	                     
	              <div id="divdh" style="float: left;width:75%;"></div>
	              <div id="divp2b_2">
	                                                        欢迎您：<font style="color:#FF0000"><%=am.getLoginId() %></font>&nbsp;
	                <a href="admin!dologinout.action" style="color:#104E8B;font-size: 13px;text-decoration : none ;">退出</a>
	              </div>
	            </div>
	            <div id="divp2b_3">
	
	              <iframe frameborder="0" name="tv" style="width:100%;height:1160px;margin-top:0px;"src="kong.jsp"></iframe>
	
	            </div>
            </div>
         </div>
     </div>   
  </body>
</html>
