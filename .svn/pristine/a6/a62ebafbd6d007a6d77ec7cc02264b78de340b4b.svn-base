<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>发布消息</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<script type="text/javascript" src="js/jquery.js"></script>

	<link rel="stylesheet" href="kindeditor-4.1.10/themes/default/default.css" />

	<script charset="utf-8" type="text/javascript" language="javascript" src="kindeditor-4.1.10/kindeditor.js"></script>
	
	<script charset="utf-8" type="text/javascript" language="javascript" src="kindeditor-4.1.10/lang/zh_CN.js"></script>
	
    <style type="text/css">

		.bt10{
			background-image:url(images/fb2.jpg);
		}
		.bt11{
			background-image:url(images/fb.png);
		} 
	  
	   #ulp1{margin-left:10px;width:660px;margin-top:26px;height:370px;text-align:left;
	        border: 1px solid;border-color:#A8A8A8;background:#F0F8FF;padding-left: 21px}
	   #ulp1 li{list-style:none;margin-top:15px;}    
	   a:link{text-decoration : none ;color :red ;} 
	   a:visited {text-decoration : none ;color : #525252 ;} 
	   a:hover {text-decoration : underline ;color :#CD0000 ;} 
	   a:active {text-decoration : none ;color :#212121 ;}	  
    </style>
    <script type="text/javascript">

		function changep(){
			document.getElementById("ap1").className="bt10";
			
		}
		function rechangep(){
			document.getElementById("ap1").className="bt11";
			
			
		}   	
	
        function changep1(){
			document.getElementById("image3").src="images/tjtp1.png";
			
		}
		function rechangep1(){
			document.getElementById("image3").src="images/tjtp.png";
			
		}
		function changep2(){
			document.getElementById("image2").src="images/cxxz1.png";
			
		}
		function rechangep2(){
			document.getElementById("image2").src="images/cxxz.png";
			
		}
            
           
            var imgsrc="";
			KindEditor.ready(function(K) {
				var editor = K.editor({
					uploadJson : 'kindeditor-4.1.10/jsp/upload_json.jsp',					
					allowFileManager : true
					//allowImageUpload : true		
				});

				K('#image3').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							showRemote : false,		               	  													
							imageUrl : K('#url3').val(),
							
						clickFn : function(url, title, width, height, border, align) {

							K('#url3').val(url);
							editor.hideDialog();
							
							$(function(){ 

                            var imgurl="";
                           
                            if(url.length>45){
                             document.getElementById('avatar_priview').innerHTML = "<img width='150px' height='105px' src='" + url + "'/> " ;
                             $("#prw").append($("#avatar_priview").html());                            
                             imgurl=url.split('http://xheyou.com//TJT/image/');   
                            }else{
                             document.getElementById('avatar_priview').innerHTML = "<img width='150px' height='105px' src='http://xheyou.com" + url + "'/> " ;
                             $("#prw").append($("#avatar_priview").html());                           
                             imgurl=url.split('/TJT/image/');  
                            }                                                                                                		        
				            imgsrc=imgsrc+imgurl;
				            
                            document.getElementById("meg3").value=imgsrc;
				 
							});	
							}
							
						});
						
					});
									 
				});
				
			});
	   function reimg(){

			$("#prw").html("");
			imgsrc="";
			document.getElementById("meg3").value="";
			}

	    function rehref(){
	          window.location.href= "qaddcon1.jsp";  
	    	    
	    }     
        function showconr(){ 

	          var img= document.getElementById("meg3").value;
              var strimg="";
          
              if(img!=""){ 
              img=img.substring(1);                           
              img=img.split(',');               
              var strimg2="";	
              for(var i=0; i<img.length; i++){
              	strimg2 ="http://xheyou.com/TJT/image/"+img[i]+",";
				strimg+=strimg2;
              }
              }
              if(strimg!="" && strimg.length>32){
               document.getElementById("meg3").value=strimg;
               }else{
               document.getElementById("meg3").value="";
               }

	        var objre1=document.getElementById("meg1");

            var objre2=document.getElementById("content1");
            if(objre1.value==""){          
                 alert("标题不能为空");  
				 return false;	                    
            }  
            if(objre1.value.length<5){
                 alert("标题不能少于5字"); 
			     return false;	                     
           }             
             if(objre1.value.length>60){
                 alert("标题不能超过60字"); 
				 return false;	                     
            }            
           
            if(objre2.value==""){
                 alert("内容不能为空");  
			     return false;	                    
            }  
            if(objre2.value.length<10){
                alert("内容不能少于10字"); 
			    return false;	                     
           }  
	     		     	 
		  $.ajax({
			   async:false,  		  
		       type:"post",                         
		       url:"mobile!mobile.action",	 
		       //contentType: "application/json; charset=utf-8",    
		       dataType:"json",   
      		   data:"&para="+JSON.stringify(GetJsonData()), 
		       success:function(d){	
		                if(d !=null){
                         $("#dv10").html('<div style="font-size:16px;color:red;margin-top: 50px;">消息发布成功!</div>');
	                    }	                                                         
	                    }	                                  		           		                  	     
		       });

		       }
		       
		       
       	   function GetJsonData() {
   		         var json = {
			                "sendtype":20002,
					        "data":{
					        "TUser":{"userId":1},
					        "TMessagestype":{"messagestypeId":400},
					        "messagesTitle": $("#meg1").val(),
					        "messagesInfo": $("#content1").val(),		
					        "messagesImgsrcs": $("#meg3").val(),				        
			        			        
			     }}; 
			     return json;
			}    
	</script>

  </head>
  
  <body onload="showtest()">
      <table   border="1" bordercolor="#B2DFEE" align="center" style="border-collapse: collapse;width:100%;line-height: 25px;font-size:15px;height:550px;" cellpadding="0" cellspacing="0">   
	      <tr>     
	          <td bgcolor="#F0F8FF" colspan="3">
	            <div style="font-size:15px;">
	                 <div  style="margin-top: 5px;margin-left: 12px"> 
	                 <b>发布消息</b> 
	                 </div>
	            </div>
	          </td>   
	      </tr> 
	      <tr >  
	      
	      <td align="center" colspan="3">
	       <div id="dv10" style="padding: 0px;width:720px;height:550px;overflow:hidden;margin-top: 0px;">                              
              
		               <div id="dvcon10"></div>

                       <input id="meg3" type="hidden" name="messagesImgsrcs" value=""> 
                       
                   <div id="dl1" style="margin-top:0px;margin-left:8px;float: left;overflow:hidden;">  
                   <ul style="list-style-type: none;padding: 0px">
                     
                    <li>               
	                <ul id="ulp1">                
	                     <li style=" list-style-type:none;font-size:16px;color:#2E2E2E;font-family:微软雅黑;margin-left: 0px;margin-top: 7px;line-height: 23px">
	                       	     标题：<br><input id="meg1" type="text" name="messagesTitle" style="width:640px;height:22px" ><br>
	                     </li> 
	                     <li style="list-style-type:none;font-size:16px;font-family:微软雅黑;color:#2E2E2E;margin-top: 5px;margin-left: 0px">
	                       	     正文：
	                     </li>		
	                     <li id="lp00" style="list-style-type:none;margin-left:175px;font-size:16px;color:red;float: left;display: none">内容不能为空</li>        
	                     <li style="margin-top: 5px">	                     
	                     <textarea id="content1" name="messagesInfo" style="width:640px;height:240px;"></textarea>	                    	                   
	                     </li>    
	                     
	                     <li style="margin-top:-15px;padding: 0px;">
	                        <div>
	                            <ul style="padding: 0px;list-style-type: none;float: left">
	                                <li style="float: left;padding-left: 0px;border:1px dashed #F00;width:83px;height:25px;float: left;">
	                                   <div style="float: left;margin-top: 2px;">
	                                      <img id="image3" onmousemove="changep1()" onmouseout="rechangep1()" src="images/tjtp.png">
	                                   </div>
	                                   
	                                </li>
	                                <li style="float: left;border:1px dashed #F00;
	                                    width:83px;height:25px;padding-top: 0px;margin-left: 5px;padding: 0px">
	                                    <div style="float: left;margin-top: 2px;margin-left: 0px">
	                                       <a href="#" onclick="reimg()"><img id="image2" onmousemove="changep2()" onmouseout="rechangep2()" src="images/cxxz.png"></a>
	                                    </div>
	                                </li>	                                
	                                <li style="float: right;margin-left:364px;">
						                       <input id="ap1" type="button" class="bt11" value="发  表" onclick="showconr()"
                                                      onmouseover="this.style.background='url(images/lan1.jpg)'" onmouseout="this.style.background='url(images/lan.jpg)'"
						                              style="width:100px;height:25px;border:0px;color:#ffffff;font-size:14px;font-family: 微软雅黑;background:url(images/lan.jpg)"> 						                                                        
	                                </li>
	                            </ul>
	                              
	                        </div>
                               
	                     </li>                                                 
	                </ul>		
                   </li>  
                   <li><div id="prw" style="margin-top: 10px"></div><div id="avatar_priview" style="display: none"></div></li>
                 
                 </ul>                      

                 </div>		        

	       </div>	
          </td>      
       
          </tr>
      </table>

  </body>
</html>
