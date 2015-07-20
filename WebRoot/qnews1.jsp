
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'showup.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/newStyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <style type="text/css">

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
			   async:false,  	 		  
		       type:"post",                         
		       url:"mobile!mobile.action",	 
		       dataType:"json",   
      		   data:"&para="+JSON.stringify(GetJsonData()), 
		       success:function(d){	
		                if(d !=null){		                			
				     var data1=d;				
				     var data2=data1.data;
				     var data3=data2.meg;	                       

                         $("#ln3").html('<div style="text-align: left;padding-left:5px;width:650px;line-height: 25px;font-size:15px;word-wrap:break-word;">'               
                         +'<pre>'+data3.messagesInfo+'</pre><br></div>');
                         var strimg="";                  
                         var img="";
                         if(data3.messagesImgsrcs!=null & data3.messagesImgsrcs.length>2){
                           strimg=data3.messagesImgsrcs;
                           img=strimg.split(',');  			
			              for(var i=0; i<img.length; i++){
                          $("#ln4").html($("#ln4").html()+'<div><img width="600px" src='+img[i]+'><br><br></div>');
			            
			             }                         
                         }                                                    
	                    }	                                                         
	                    }	                                  		           		                  	     
		       });

		       });
		       
		       
       	   function GetJsonData() {
                var mid=document.getElementById("ipmid").value;                                
			    var json = {
			        "sendtype":20003,
			        "data":{
			        "messagesId":mid,			  				        			        			        
			     }};
			    return json;
			}    
	</script>
  </head>
  
  <body>
    <input id="ipmid" type="hidden" value="<%=request.getParameter("mid") %>">
    <div id="divv2d1_1">                              
        <ul>                    
          <li id="ln1"></li>  
          <li id="ln2" style="margin-top:10px;height:22px;font-size:14px;border-bottom: 1px solid;border-bottom-color:#A8A8A8;"></li>              
          <li id="ln3"></li>    
          <li id="ln4" style="padding-left: 5px;"></li> 
          <li style="height:200px">&nbsp;</li>                                             
        </ul>		                                                                 	        
    </div>	
  </body>
</html>