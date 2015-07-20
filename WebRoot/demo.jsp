
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>编辑头像_合游</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link href="css/sunmallStyle.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>
  <style type="text/css" media="screen">
  html, body { height:100%; background-color: #ffffff;}
  #flashContent { width:100%; height:100%; }
  </style>

  <script type="text/javascript">

	
    function rehref3(){
	     var uid= document.getElementById("img10").value;
	     $("#divp2b_center_b").load("ur!showDetail1.action?uid="+uid);
    	    
    } 	            
    function uploadevent(status){

	  if(status==-1){
	     rehref3();	  
	  }else{
	  
	  var img="http://xheyou.com/sunhome/data/"+status;

     $.ajax({
          async:false,             
	      type:"post",                           
	      url:"ur!doUpdate3.action?uid="+$("#img10").val(),
	      data:"&imgface="+img,		      		          
	      success:function(d) {	
	                  if(d!=null){	
	                   setTimeout("rehref3()",100);
	                      //document.getElementById("indexdiv").innerHTML=d;
                       
	                    }	   		        		        	        		              	                                                         
	          }  	                                  		           		                  	     
      }); 
  
	  
	  }
   }
  </script>
 </head>
 <body>
        <div id="indexdiv">                          
	        <div id="divp_tx">
	        <div style="padding: 0px;visibility: visible;position:absolute;margin-top:0px;margin-left:0px;">
	        <table style="width:700px;background: #ffffff" align="center">
		        <tr>
			        <td width="700px" height="220" style="padding-left: 5px;">
					   <div style="padding: 0px;width:680px;height:1200px;overflow:hidden;">
						  <div id="altContent" style="margin-top:25px">
						
						
							<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
							codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"
							WIDTH="650" HEIGHT="450" id="myMovieName">
							<PARAM NAME=movie VALUE="avatar.swf">
							<PARAM NAME=quality VALUE=high>
							<PARAM NAME=bgcolor VALUE=#FFFFFF>
							<param name="flashvars" value="imgUrl=./default.jpg&uploadUrl=./upfile.jsp&uploadSrc=false" />
							<EMBED src="avatar.swf" quality=high bgcolor=#FFFFFF WIDTH="650" HEIGHT="450" wmode="transparent" flashVars="imgUrl=./default.jpg&uploadUrl=./upfile.jsp&uploadSrc=false"
							NAME="myMovieName" ALIGN="" TYPE="application/x-shockwave-flash" allowScriptAccess="always"
							PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer">
							</EMBED>
							</OBJECT>
							 	<% 
							      Cookie[] cookies2 = request.getCookies();
							      int userId=0;
							      if(cookies2!=null &&cookies2.length>0){
							         for(int i=0;i<cookies2.length;i++){
							             if(cookies2[i].getName().equals("mrCookie")){
							                userId=Integer.parseInt(cookies2[i].getValue().split("#")[0]); 
							             }							
							        }
							      }
							      if(userId==0){
							        response.sendRedirect("qlogin.jsp");
							        return;
							      }
							    %>
							 <input id="img10" type="hidden" value="<%=userId %>">
						
						  </div>
						
						  <div id="avatar_priview"></div>
					  </div>			      
			        </td>

		        </tr>
		        
	        </table>
	        </div>
	        </div>
	    
       </div>

 </body>
</html>
