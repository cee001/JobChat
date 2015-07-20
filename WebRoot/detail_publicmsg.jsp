
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script type="text/javascript" src="js/jquery.js"></script>
	

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
    $(function(){   
        		     		     		     	 
		  $.ajax({
		       type:"post",                         
		       url:"mobile!mobile.action",	 
		       //contentType: "application/json; charset=utf-8",    
		       dataType:"json",   
      		   data:"&para="+JSON.stringify(GetJsonData()), 
		       success:function(d){	
		                if(d !=null){
		                			
				     var data1=d;				
				     var data2=data1.data;
				     var data3=data2.meg;					                              
				     
                         $("#l1").html(data3.publicmessagesTime);                     
                         $("#l2").html(data3.publicmessagesInfo);
                         var img = data3.publicmessagesPicture;
                         img=img.split(',');
                    
				         for(var i=0;i<img.length;i++){
                             $("#l3").html($("#l3").html()+'<div style="font-size:15px;width:720px;word-wrap:break-word;margin-top:5px"><img  width="600" src="'+img[i]+'"<br></div>');				         
				         }
				         				        
	                    }	                                                         
	                    }	                                  		           		                  	     
		       });

		       });
		       
		       
       	   function GetJsonData() {
                var mid=document.getElementById("ipmid").value;  
                               
			    var json = {
			        "sendtype":20016,
			        "data":{
			        "messagesId":mid,			  				        			        			        
			     }};
			    return json;
			}    
	</script>

  </head>
  
  <body>
         
      <input id="ipmid" type="hidden" value="<%=request.getParameter("mid") %>">
      <table  align="center" style="border-collapse: collapse;width:100%;line-height: 25px;font-size:15px;" cellpadding="0" cellspacing="0">   

	      <tr >  
	      <td style="border-right-color: #ffffff;">&nbsp;</td>
	      <td align="center" width="750px" style="border-right-color: #ffffff;">
	       <div id="dv10" style="padding: 0px;width:720px;overflow:hidden;margin-top: 0px;height:100%;">                              
            <ul style="list-style-type: none;padding: 0px;margin-top: 0px">                    
              <li id="l1" style="height:30px;font-size:14px;widht:100%;"> 
                            		           	           	                               
              </li>  
              <li id="l2" style="height:22px;font-size:15px;text-align: left;margin-top: 30px;">               		           	           	                               
              </li>  
              <li id="l3" style="font-size:15px;line-height: 25px;text-align: left;margin-top: 30px;">               		           	           	                               
              </li>                                               
            </ul>		                                                                 	        
	       </div>	
          </td>      
       	  <td >&nbsp;</td>
          </tr>
      </table>

  </body>
</html>
