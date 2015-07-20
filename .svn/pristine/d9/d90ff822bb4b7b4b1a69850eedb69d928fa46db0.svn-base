<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>资讯搜索_合游</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="shortcut icon" href="favicon.ico" >
    <script type="text/javascript" src="js/jquery.js"></script>
	<style type="text/css">
	
		.b1t1{
			background:#e53430;
		}
		.b1t2{
			background:#e53430;
		}	

	#ul{padding: 0px;list-style:none;}
    #ul li{ float: left;font-size:13px;}	
	</style>
    <script type="text/javascript">

 
		$(function(){        
		           $("#divp1").load("qhead.jsp"); 		           
		            });

		function changes(){
			document.getElementById("sou1").className="b1t2";
				
		}
		function rechanges(){
			document.getElementById("sou1").className="b1t1";					
		}
        function touch(ch){ 

             //获取系统时间
              var myDate = new Date();
              var Y=myDate.getFullYear();    
              var M=myDate.getMonth();     
              var D=myDate.getDate();  
              var H=myDate.getHours();
              var MI=myDate.getMinutes();
              var S=myDate.getSeconds();   
              var time=Y+"-"+M+"-"+D+" "+H+":"+MI+":"+S;                
              document.getElementById("tc"+ch).value=time;
              //document.getElementById("dv12"+ch).submit();  
             
              //点击提交                                                            		     		     		     	 
		    $.ajax({
		       type:"post",
		       url:"touch!doAdd.action",
		       data:"th.TContent.cid="+$("#ta"+ch).val()			          
		           +"&th.TUser.uid="+$("#tb"+ch).val()
		           +"&th.ptime="+$("#tc"+ch).val(),
		        
		        success:function(v) {	
		               	        		        	        
	                      document.getElementById("dv1210"+ch).innerHTML=v;		
	                                                        
	            }   	                      		           		                  	     
		       });
                          
		       }
		       
		$(document).keyup(function(event){
					 if(event.keyCode ==13){
					    Search1();
					 }
		 });	       
		function Search1(){
				
	        // $("#divSearch").html('<div style="width:700px;height:25px;text-align: center;">数据正在加载中...</div>');  
	     	 var title=document.getElementById("title1").value;
	     	 if(title!=""){
                     window.location.replace("qcon!showlist1.action?title="+title);
              } 
          }    	       
	</script>

  </head>
  
  <body onload="iFrameHeight()" >
        <div onmouseover="rechangex1()"  style="padding: 0px;visibility: visible;position:absolute;margin-top:0px;margin-left:0px;">
        <table style="width:1000px;height:110px;background: #ffffff" border="0" align="center">
	        <tr>
		       <td onmouseover="reshow1()">
		  		       
		       <div id="divSearch" style="width:1000px;height:110px;">
		 	   <div style="width: 998px;text-align: center;">
		          <ul style="margin-top:0px;padding:0px;">
		           		        <!--------  搜索         ------->	
		           	<li style="margin-top:10px;margin-left:0px;float: left; ">
		               <img src="images/home/logo.png">		
		            </li>	        	           		        
		            <li style="margin-top:30px;margin-left:95px;float: left;">
		               <input id="title1" style="width:350px;height: 30px;border: 1px solid;border-color:#e53430;" type="text" name="title" >
		
		            </li>		        
		            <li style="margin-top:30px;margin-left:-1px;float: left;">	
		              <input id="sou1" class="b1t1" onclick="Search1()" onmousemove="changes()" onmouseout="rechanges()" type="button" value="搜 索"
		                     style="width:100px;height:32px;border: 0px solid;font-size:16px;color:#FFFFFF;">			        				            			              				                      			                		           
		            </li>		
		           	<li style="margin-top:27px;margin-left:97px;float: left ">
		               <img src="images/home/gwc.png">	
		            </li>		            	        	
		          </ul>	             
		       </div>               
		       </div>
                </td>
	        </tr>
	        
        </table>
        </div>

  </body>
</html>
