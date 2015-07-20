<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'listur.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery.js"></script>	 	
	<style type="text/css">   
    a:link{text-decoration : none ;color :#212121;} 
	a:visited {text-decoration : none ;color : #525252 ;} 
	a:hover {text-decoration : underline ;color :#CD0000 ;} 
	a:active {text-decoration : none ;color :#212121 ;}	  
	</style>
    <script>
   	    function getdate1(){  
	              
	     		  document.getElementById("nid").value="1";  
	     		  var m=1;	           
		          getdata(m);  
	
		 } 
     
 	     function gogetdate(){   
 	     	            
	          var n = document.getElementById("gopage").value;
	          n=parseInt(n)+2;
	     	  document.getElementById("nid").value=n;  
	     	  var m=1;	           
		      getdata(m);  	
		 }          
       $(function(){    
	               	var m=1;	           
		            getdata(m);                        
                   });

	     function getdata(m){  
	     
	                 var title= document.getElementById("title2").value;  
	     			 var n= document.getElementById("nid").value;  
		             if(m==1 & n!=1){
		             n=n-2;
		             }
			    var json ={
			    "sendtype":10025,
			    "data":{
			    "key":title,
			    "pn":n,
			    "ps":5,
			    }};
				     
	           $.ajax({   
			         async:false,  	           	       		
				     type:"post",
		             url:"mobile!mobile.action",	 				      
				     dataType:"json",
      		         data:"para="+JSON.stringify(json), 
				     success:function(d){
				     		     $("#dmsgid1").html("");
				                 $("#dmsgid2").html("");
				                 $("#dmsgid3").html("");
				                 $("#dmsgid4").html("");
				                 $("#dmsgid5").html("");
				                 $("#dmsgid6").html("");

				     var data1=d;				
				     var data2=data1.data;
				     var data3=data2.messagelist;
				     
    				     
				         var pn=data1.pn;
				         n=pn+1;					 
				         document.getElementById("nid").value=n;
                         var count=data1.count;
		                 lastPager=Math.ceil(count/5);	
		                 if(n==2){									       
					  	   $("#dmsgid7").html('<div>上一页 </div>');  				     
					     }else{						
					  	    $("#dmsgid7").html('<div><a onclick="getdata(1)" href="#">'+"上一页"+'</a></div>');  				     
					     }
					     if(n<=lastPager){
									      			     
					  	   $("#dmsgid8").html('<div><a onclick="getdata(0)" href="#">'+"下一页"+'</a>('+pn+'/'+lastPager+')</div>');  				     
					     }else{		
					       
					  	   $("#dmsgid8").html('<div>下一页('+pn+'/'+lastPager+')</div>');  				     
					     }				     
				     $(data3).each(function(index,rdata){
						     var num=0;
						     var json ={
							    "sendtype":10029,
							    "data":{
							    "mid":rdata.messagesId,
				
						     }};
				     
				           $.ajax({   
						         async:false,  	           	       		
							     type:"post",
					             url:"mobile!mobile.action",	 				      
							     dataType:"json",
			      		         data:"para="+JSON.stringify(json), 
							     success:function(d){
							
								     num=d.data;	
								  
								  }
							});	

			          var strtitle=rdata.messagesInfo;                                   
				      var t1=strtitle;
		  	          var datatitle=t1;	
				      if(t1.length>28){
                         t1=t1.substring(0, 29);                    				                    
	                     var x=t1.length;               
	                     re=/[\u4E00-\u9FA5]/g;  //测试中文字符的正则
	                     if(re.test(strtitle)){            
		                     var y=t1.match(/[\u4E00-\u9FA5]/g).length;                           
		                     var z=x+(x-y)/2-2; 
		                     z=parseInt(z);                                     
		                     if(strtitle.length>z){
		                       t2=strtitle.substring(0, z);
		                       datatitle=t2+"..";                         
		                     } 
		                                                        
                          }else if(strtitle.length>50){
                             datatitle=datatitle.substring(0, 51)+"...";
                          }
                       
                         }else{ }
                    
                    					     		 
					     				     
				     $("#dmsgid1").html($("#dmsgid1").html()+'<div style="border-bottom:1px solid;border-bottom-color:#B2DFEE;width:80px;font-size:13px;">'+rdata.messagesId+'</div>');
				     $("#dmsgid2").html($("#dmsgid2").html()+'<div style="border-bottom:1px solid;border-bottom-color:#B2DFEE;font-size:13px;padding-left: 5px;"><a onclick="changeif(1)" href="detail_localmsg.jsp?mid='+rdata.messagesId+'" target="tvc">'+strtitle+'</a></div>');
				     $("#dmsgid3").html($("#dmsgid3").html()+'<div style="border-bottom:1px solid;border-bottom-color:#B2DFEE;font-size:13px;">'+num+'/'+rdata.messagesReadnum+'</div>'); 				     
		          	 $("#dmsgid4").html($("#dmsgid4").html()+'<div style="border-bottom:1px solid;border-bottom-color:#B2DFEE;font-size:13px;">'+rdata.JUser.userNikename+'</div>');				     
				     $("#dmsgid5").html($("#dmsgid5").html()+'<div style="border-bottom:1px solid;border-bottom-color:#B2DFEE;font-size:13px;">'+rdata.messagesTime+'</div>');  
		          	 $("#dmsgid6").html($("#dmsgid6").html()+'<div style="border-bottom:1px solid;border-bottom-color:#B2DFEE;font-size:13px;"><a href="#" onclick="doUpdate('+rdata.messagesId+')">删除</a></div>');
 			     			      
				     });         
				                                              
			    } 
			    });
			    }

  	    function changeif(a){

            if(a==1){
	        document.getElementById("dvif1").style.display="block";
            }else{
	        document.getElementById("dvif1").style.display="none";	   
	        } 
	    } 
	    
	    
       function doUpdate(mid){
			    var json = {
			        "sendtype":10028,
			        "data":{
			        "mid":mid,			  				        			        			        
			     }
			     };
             if(confirm("确定删除吗？")){
                $.ajax({
			           async:false,                
				       type:"post",                         
				       url:"mobile!mobile.action",	 
				       dataType:"json",   
		      		   data:"&para="+JSON.stringify(json),
				       success:function(d){	
				                
		                          window.location.href="list_localmsg.jsp";
			                                                                            
			                    }	                                  		           		                  	     		     
		
				       });
  
         }
         }	    
	    
    </script>
  </head>
  
  <body>
   <% 
    String title=request.getParameter("title"); 
    title=new String(title.getBytes("iso-8859-1"),"UTF-8");
   %>
   <input id="title2" type="hidden" name="messagesImgsrcs" value="<%=title %>"> 	  
   <input id="nid" type="hidden" value="1">

   <div id="dvmsgid">
    <table   border="1" bordercolor="#B2DFEE" align="center" style="border-collapse: collapse;width:100%;line-height: 25px;font-size:15px;" cellpadding="0" cellspacing="0">   
      <tr>     
          <td colspan="6" bgcolor="#F0F8FF">
            <div style="font-size:15px;border-bottom:1px solid;border-bottom-color:#B2DFEE;" >
                 <div  style="margin-top: 5px;margin-left: 12px"> 
                   <b>列表资讯</b> 
                 </div>
            </div>
          </td>   
      </tr>
      
       <tr>     
          <td colspan="6" >
	       <div id="dvif1" style="display: none;width:100%;">
	       	<div style="font-size:15px;width:100%;">
               <div  style="margin-top: 0px;margin-left: 0px;padding0pxtext-align: right;width:100%;"> 
                  <ul style="padding: 0px;margin-top:0px;list-style-type: none;float: right;width:100%;background:#F8F8FF;border-bottom:1px solid;border-bottom-color:#B2DFEE;">
                   <li style="margin-right: 0px;margin-top: 0px;margin-right:1px;float: right;">
                     <img width="22px" onclick="changeif()"  alt="" src="images/gb.jpg">
                   </li>
                   <li style="margin-right: 47%;float: right;color:#5B5B5B"><b>资讯详情</b></li>
                  </ul>             
	          </div>
              <iframe frameborder="0" name="tvc" style="width:100%;height:550px;margin-top:0px;" ></iframe>         
             </div>     
	       </div>
          </td>   
      </tr>      
      <tr align="center">     
          <td width="80px">ID</td>   
          <td>内容</td>   
          <td>评论数/浏览数</td>
          <td>发布人</td>
          <td>发布时间</td>
          <td>操作</td>
      </tr >   

     <tr align="center">

     <td><div id="dmsgid1"></div></td>
     <td align="left"><div id="dmsgid2"></div></td>
     <td><div id="dmsgid3"></div></td>
     <td><div id="dmsgid4"></div></td>
     <td><div id="dmsgid5"></div></td>
     <td><div id="dmsgid6"></div></td>    
     
     </tr>		
     <tr align="center">
     <td colspan="6">
 	     <div style="width:99%;text-align: right">
		     <ul style="float: right;list-style-type: none;">
			     <li style="float: left;" id="dmsgid7"></li>
			     <li style="float: left;margin-left:3px;" id="dmsgid8"></li>
			     <li style="float: left;margin-left:3px;" >
			                              到第<input id="gopage" type="text" style="border:1px solid;border-color:#CD9B1D;width:35px">页
			         <input onclick="gogetdate()" onmousemove="this.style.background='#EE9A00'" onmouseout="this.style.background='#CD9B1D'" type="button" value="确定"
			         style="margin-left: 2px; border:none;width:50px; height:20px;font-size:15px;color:#ffffff; background:#CD9B1D;">				         
			     </li>
		     </ul>
	     </div>    
     </td>
     </tr>
  </table>
</div>
  </body>
</html>
