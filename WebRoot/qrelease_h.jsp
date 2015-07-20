<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 	<script type="text/javascript" src="js/jquery.js"></script>   
	<link href="css/linkStyle.css" rel="stylesheet" type="text/css" />
	<link href="css/sunmallStyle.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="kindeditor-4.1.10/themes/default/default.css" />
	<script charset="utf-8" type="text/javascript" language="javascript" src="kindeditor-4.1.10/kindeditor.js"></script>	
	<script charset="utf-8" type="text/javascript" language="javascript" src="kindeditor-4.1.10/lang/zh_CN.js"></script>
    <script type="text/javascript">  
		    
         $(function(){   
                        
              $("#divp1").load("qhead_forum.jsp?RandStr="+Math.random()); 	  
              $("#divf2a_new ").load("qdh_forum.jsp"); 
              $("#divp21").load("qfoot_new.jsp"); 
              var mid=$("#ipmid2").val();	           
				 $.ajax({ 
            	     async:false,   			          	       		
				     type:"get",
				     url:"qforum_news1.jsp?mid="+mid, 
				     success:function(d){				                 
				            $("#l2150").html(d); 
                            $("#divp21").load("qfoot_new.jsp"); 				                  
				     }              			
				   }); 	
          });             

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
                            url=url.substring(9);  
                            var imgurl="";
                            imgsrc=document.getElementById("meg3").value;
                            document.getElementById('avatar_priview').innerHTML = "<img width='170px' height='119px' src='http://xheyou.com/sunhome/data/" + url + "'/> " ;
                            $("#prw").append($("#avatar_priview").html());                           
                            imgurl=url+"$$";  
                                                                                                                          		        
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
              var userId = document.getElementById("userid").value;
              if(userId==0){
		         alert("请登陆再发布");
		        return false;	
		      }
	          var img= document.getElementById("meg3").value;
	          
              var strimg="";
          
              if(img!=""){  
                  img=img.slice(0,-2);                               	                                         
	              img=img.split('$$');               
	              var strimg2="";	
	              for(var i=0; i<img.length; i++){
	              	strimg2 ="http://xheyou.com/sunhome/data/"+img[i]+",";
					strimg+=strimg2;
	              }
              }
              if(strimg!="" && strimg.length>32){
                 document.getElementById("meg3").value=strimg;
               }else{
                 document.getElementById("meg3").value="";
               }

	  

            var objre2=document.getElementById("content1");        
            if(objre2.value=="写点什么吧"){
     
			     return false;	                    
            }          
           
            if(objre2.value==""){
                 alert("内容不能为空");  
			     return false;	                    
            }  
            if(objre2.value.length<2){
                alert("内容不能少于2字"); 
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
		                 alert("帖子发布成功!");
			             var textarea=document.getElementById("content1");     
		       	         textarea.value='写点什么吧';
		       	         textarea.style.background='#FCFCFC'; 
		       	         textarea.style.color='#A8A8A8'; 	
		       	         $("#prw").html("");                                                                             
	                    }	                                  		           		                  	     
		       });

		       }
		       
		       
       	   function GetJsonData() {

   		         var json = {
			                "sendtype":20002,
					        "data":{
					        "SUser":{"userId":$("#userid").val()},
					        "messagesType":"1",				
					        "messagesInfo": $("#content1").val(),		
					        "messagesPicture": $("#meg3").val(),
					        "SLiving":{"livingId":"6"},	
					        "messagesDevice": "web",		        
			        			        
			     }}; 
			     return json;
			}    
       	   function clearcon() {
       	 
       	         var textarea=document.getElementById("content1");     	     	       	         
	       	         textarea.style.background='#ffffff';  
	       	         textarea.style.color='#383838';      	         
       	        
       	         if ($("#content1").val().length<1){
	       	         textarea.value='写点什么吧';
	       	         textarea.style.background='#fafafa'; 
	       	         textarea.style.color='#A8A8A8';      	         
       	         }
       	   
       	   }  			  
    </script>      
  

  </head>
  
   <body>

    <input id="meg3" type="hidden" name="messagesImgsrcs" value="">      
	<% 
      Cookie[] cookies= request.getCookies();
      int userId=0;
      if(cookies!=null &&cookies.length>0){
         for(int i=0;i<cookies.length;i++){
          if(cookies[i].getName().equals("mrCookie")){
             userId=Integer.parseInt(cookies[i].getValue().split("#")[0]); 
         }
      }
      }

    %>
     <input id="userid" type="hidden" value="<%=userId %>">       
     <div class="d6b_21d">   
          <ul>
            <li>           
               <table class="d6b_2t">
                 <tr>
                  <td align="center">
                   <textarea id="content1" class="d6b_2t1" name="recruitmentInfo" onclick="if (this.value=='写点什么吧') {this.value='';}" 
                             onfocus="clearcon()"  onblur="clearcon()" >写点什么吧</textarea>		
                  </td>
                 </tr>
                 <tr>
                    <td align="center" >
                       <div class="d6b_2td">
                         <ul>
                             <li>
                                <div>
                                   <img id="image3" onmousemove="changep1()" onmouseout="rechangep1()" src="images/tjtp.png">
                                </div>	                                   
                             </li>
                             <li class="l2">
                                 <div style="float: left;margin-top: 2px;margin-left: 0px">
                                    <a href="#" onclick="reimg()">
                                       <img id="image2" onmousemove="changep2()" onmouseout="rechangep2()" src="images/cxxz.png">
                                    </a>
                                 </div>
                             </li>	
                             <li class="l3">
                                 <img alt="" onclick="showconr()" width="86px" height="30px" src="images/home/fabu.png">		                                                        
                             </li>                                
                         </ul>	                              
                       </div>		                 
                     </td>
                 </tr>
                 <tr><td><div id="prw" class="d6b_2td2"></div><div id="avatar_priview" style="display: none"></div></td></tr>	   
                 <tr><td height="20px">&nbsp;</td></tr>                   	  	                                      	                    	                                       	                    	                    	                                       	                    
               </table>                  
            </li>                                                
          </ul>
     </div>  
  </body>
</html>


