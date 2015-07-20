
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
	
    <script type="text/javascript">
    
    
    $(function(){   
        		     		     		     	 
		  $.ajax({
		       type:"post",                         
		       url:"mobile!mobile.action",	 
		       //contentType: "application/json; charset=utf-8",    
		       dataType:"json",   
      		   data:"&para="+JSON.stringify(GetJsonData()), 
		       success:function(d){	
		            if(d != null){

				    var data1=d.data;
				    var data2=data1.localshop;	

				    $("#order1").html('<img src="'+data2.localshopFace+'">');                  
                    $("#order2").html('<b>'+data2.localshopName+'</b>');
                    $("#order3").html('<b style="color:#616161">评分水平</b>：'+data2.localshopLevel+'');  
                    $("#order4").html('<b style="color:#616161">用户昵称</b>：'+data2.SUser.userNikename+'');      
                    $("#order5").html('<b style="color:#616161">注册世间</b>：'+data2.localshopTime+'');                   
                    $("#order6").html('<b style="color:#616161">店铺简介</b>：'+data2.localshopInfo+'');
                    $("#order7").html('<b style="color:#616161">店铺地址</b>：'+data2.localshopAddrs+''); 
				    var img=data2.localshopPicture;
				    img=img.split(",");
				    for(var i=0;i<img.length;i++){
				        $("#order8").html('<img width="600px" src="'+img[i]+'">');
				    
				    }                                                     
                    if(data2.localshopstatus!=0){
                       $("#sh1").html("");
                       $("#sh2").html("");
                    
                    }                                              

	                    }	                                                         
	                    }	                                  		           		                  	     
		       });

		       });
		       
		       
       	   function GetJsonData() {
                var sid=document.getElementById("ipmid").value;  
                               
			    var json = {
			        "sendtype":20101,
			        "data":{
			        "localshopId":sid,			  				        			        			        
			     }};
			    return json;
			}  
			
		

      function doUpdate(id){
            
            var json1="";  
                    
            if(id==2){
            
	 		   json1 = {
			        "sendtype":20147,
			        "data":{
			        "sid": $("#ipmid").val(),
		  			"status": id	        			        			        
			        }
		    };                      
            }

            if(id==3){
	            if($("#iptext").val()==""){
	               alert("请填写原因");
	               objp1.focus();
	               return false;
	            }      
	            if($("#iptext").val()<2){
	               alert("请填写原因");
	               objp1.focus();
	               return false;
	            }             
	 		   json1 = {
			        "sendtype":20147,
			        "data":{
			        "sid": $("#ipmid").val(),
		  			"status": id,
			  		"text": $("#iptext").val(),        			        			        
			        }
		    };                      
            }
  
           $.ajax({
	           async:false,                
		       type:"post",                         
		       url:"mobile!mobile.action",	 
		       dataType:"json",   
      		   data:"&para="+JSON.stringify(json1),
		       success:function(d){	
	                      if(d.ret==0){	                      
			                 window.open('list_shop.jsp?status=0',target="tv");                      
	                      };
                    
	                                                                            
	                    }	                                  		           		                  	     		     

		  });
  
              
         }			  
	</script>

  </head>
  
  <body>
         
      <input id="ipmid" type="hidden" value="<%=request.getParameter("sid") %>">
      <table  align="center" style="border-collapse: collapse;width:800px;line-height: 35px;font-size:15px;" cellpadding="0" cellspacing="0">   

	      <tr>  	

             <td>
	             <div id="order1" style="float: left;"></div>
	             <div id="order2" style="float: left;margin-top: 50px;font-size: 22px;"></div>
             </td>	          

          </tr>

           <tr>  	
	         <td >&nbsp;</td>     
          </tr>           
          <tr>  	
	         <td style="border-top: 1px solid #8F8F8F;color: #36648B">&nbsp;</td>     
          </tr>  
          <tr>  
	         <td align="left" ></td>     
          </tr>                             
          <tr>  	
	         <td id="order4" ></td>     
          </tr> 
          <tr>  	
	         <td id="order5" ></td>     
          </tr> 
          <tr>  	
	         <td id="order6" ></td>     
          </tr>   
          <tr>  	
	         <td id="order7" ></td>     
          </tr>  
          <tr>  	
	         <td id="order8" ></td>     
          </tr> 
     <tr>        
        <td id="sh1" colspan="2" align="left">
   
          <input type="button" value="通 过" onclick="doUpdate(2)"
	           onmouseover="this.style.background='url(images/lan1.jpg)'" onmouseout="this.style.background='url(images/lan.jpg)'"
               style="margin-left: 12px; border:none;width:80px; height:25px;
               font-size:15px;color:#ffffff; background:url(images/lan.jpg)" />

         
        </td>
     </tr>   
     <tr>        
        <td id="sh2" colspan="2" align="left">
        
           <input type="button" value="未通过" onclick="doUpdate(3)"
	           onmouseover="this.style.background='url(images/lan1.jpg)'" onmouseout="this.style.background='url(images/lan.jpg)'"
               style="margin-left: 12px; border:none;width:80px; height:25px;
               font-size:15px;color:#ffffff; background:url(images/lan.jpg)" />
               &nbsp;<font style="color:red;">原因：</font><input id="iptext" type="text" style="width:500px;">    
             
        </td>
     </tr>                                                         
      </table>

  </body>
</html>
