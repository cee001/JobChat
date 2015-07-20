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

   		      var json = {
			                "sendtype":20110,
					        "data":{					
					        "param": 1,						        		        			        			        
			   }};               
              	  
		  $.ajax({
			   async:false,  	 		  
		       type:"post",                         
		       url:"mobile!mobile.action",	 
		       dataType:"json",   
      		   data:"&para="+JSON.stringify(json), 
		       success:function(d){					  			
				       var data1=d.data;
				       var data2=data1.homemalltypelist;			         
			   $(data2).each(function(index,rdata){	
              
                       $("#meg10").html($("#meg10").html()+'<option value="'+rdata.hmtypeStatus+'">'+rdata.hmtypeName+'</option>');
                     
               });
               }
           });
        });       
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
                            document.getElementById('avatar_priview').innerHTML = "<img width='150px' height='105px' src='http://xheyou.com/sunhome/data/" + url + "'/> " ;
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
  
        function showconr(){ 


	          var img= document.getElementById("meg3").value;
	          
              var strimg="";
          
              if(img!=""){  
                  img=img.slice(0,-2);                               	                                         
	              img=img.split('$$');               
	              var strimg2="";	
	              for(var i=0; i<img.length; i++){
	              	strimg2 ="http://xheyou.com/sunhome/data/"+img[i];
					strimg+=strimg2;
	              }
              }
              if(strimg!="" && strimg.length>32){
                 document.getElementById("meg3").value=strimg;
               }else{
                 document.getElementById("meg3").value="";
               }

	        var objre1=document.getElementById("meg1");
            var objre4=document.getElementById("meg4");      
       

            if(objre1.value==""){          
                 alert("标题不能为空");  
				 return false;	                    
            }  
            if(objre1.value.length<2){
                 alert("标题不能少于2字"); 
			     return false;	                     
           }             
             if(objre1.value.length>100){
                 alert("标题不能超过100字"); 
				 return false;	                     
            }            
            if(objre4.value==""){
                 alert("请填ID");  
			     return false;	                    
            }  
            if(objre4.value.length<1){
                alert("请填写ID"); 
			    return false;	                     
           }                        

		  $.ajax({
			   async:false,  		  
		       type:"post",                         
		       url:"mobile!mobile.action",	 
		       //contentType: "application/json; charset=utf-8",    
		       dataType:"json",   
      		   data:"&para="+JSON.stringify(GetJsonData1()), 
		       success:function(d){	
		           
                       $("#ljop1").html('<div style="font-size:16px;color:red;margin-top: 100px;text-align:center;">发布成功!<br>'
                                    +'<div style="margin-top:100px"><a href="qrelease_hm.jsp" target="_parent"><img src="images/home/jxfb.png"></a></div></div>');
	                                                                             
	                    }	                                  		           		                  	     
		       });

		       }
		       
		       
       	   function GetJsonData1() {

   		         var json = {
			                "sendtype":20153,
					        "data":{									        			
					        "adsName": $("#meg1").val(),
					        "adsType": $("#meg2").val(),	
					        "adsPicture": $("#meg3").val(),					        
					        "adsInfoid": $("#meg4").val(),	
					        "adsActivtytype": $("#meg5").val(),	
				        		        			        			        
			     }}; 
			     return json;
			}    
    </script>      
  

  </head>
  
  <body>

    <input id="meg3" type="hidden" name="messagesImgsrcs" value="">       
    <input id="rid10" type="hidden" value="">     

    <div id="indexdiv"> 

       <div  id="divp20" onmouseover="rechangex1()" >

   
           <div id="divf2g_jop">   
              <ul>
                <li id="ljop1" style="width:995px;">
                
                    <table style="width:100%;font-size: 微软雅黑;">
                        <tr>
		                    <td>
		                        <div id="f2g_div1">
			                        <div id="f2g_div1a">发布轮播图</div>

			                    </div>
		                    </td>
                        </tr>	 
	                    <tr>
		                    <td valign="bottom" height="35px">&nbsp;<div id="rv1" class="f2g_div2">&nbsp;</div></td>
	                    </tr>
	                    <tr>
		                    <td style="padding-left: 150px;"  valign="bottom" >		                                                                          
		                                                                            标&nbsp;题:&nbsp;<input id="meg1" class="f2g_p1" onfocus="clear2()" type="text" name="recruitmentTitle" >		                                                                            
		                      <img onclick="showconr()" class="f2g_img1" src="images/home/ljfb.png">                                                         
		                    </td>	
		    	      		                    
	                    </tr>
	                    <tr>
		                    <td style="padding-left: 150px;height:12px;" colspan="4">&nbsp;</td>
	                    </tr>
	                    <tr>
		                    <td style="padding-left: 150px;height:70px;" colspan="4">类&nbsp;型:
		                        <input class="f2g_p2" id="meg2" onfocus="clear2()" type="text" name="price" >
		                    </td>
	                    </tr>	
	                    <tr>
		                    <td style="padding-left: 150px;height:70px;" colspan="4">ID&nbsp;号:
		                        <input class="f2g_p2" id="meg4"  onfocus="clear2()" type="text"  onkeyup="value=value.replace(/[^\d]/g,'') "  name="link" >
		                    </td>
	                    </tr>		                                                            
	                    <tr>
		                    <td style="padding-left: 150px;height:70px;" colspan="4">表&nbsp;类:
		                        <input class="f2g_p2" id="meg5"  onfocus="clear2()" type="text" name="param" >
		                    </td>
	                    </tr>	

	                    <tr>
		                    <td align="center">
                              <div class="f2g_div4">
	                            <ul class="f2g_div5">
	                                <li>
	                                   <div>
	                                      <img id="image3" onmousemove="changep1()" onmouseout="rechangep1()" src="images/tjtp.png">
	                                   </div>
	                                   
	                                </li>
	                                <li class="l1">
	                                    <div class="f2g_div6">
	                                       <a href="#" onclick="reimg()"><img id="image2" onmousemove="changep2()" onmouseout="rechangep2()" src="images/cxxz.png"></a>
	                                    </div>
	                                </li>
                           
	                            </ul>	                              
	                        </div>		                 
		                    </td>
	                    </tr>
	                    <tr><td><div id="prw" class="f2g_div7"></div><div id="avatar_priview" style="display: none"></div></td></tr>	                    	  	                                      	                    	                                       	                    	                    	                                       	                    
                    </table>
                    
                </li>                                                
              </ul>

         </div> 
      
       </div>
    </div>  
  </body>
</html>


