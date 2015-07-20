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
	<link href="css/mail-linkStyle.css" rel="stylesheet" type="text/css" />
	<link href="css/sunmailStyle.css" rel="stylesheet" type="text/css" />
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
	    
	     			 var n= document.getElementById("nid").value;
	     			 var status= document.getElementById("status1").value;  
		             if(m==1 & n!=1){
		                n=n-2;
		             }
			    var json ={
				    "sendtype":20146,
				    "data":{
				    "status":status,
				    "pn":n,
				    "ps":25,
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
				                 $("#dmsgid7").html("");
				                 $("#dmsgid8").html("");
				                 $("#dmsgid9").html("");


			
					     var data1=d.data;
					     var data2=data1.list;
   				     
				         var pn=d.pn;
				         n=pn+1;					 
				         document.getElementById("nid").value=n;
                         var count=d.count;
                         
		                 lastPager=Math.ceil(count/25);	
		                 if(n==2){									       
					  	   $("#d12").html('<div>上一页 </div>');  				     
					     }else{						
					  	   $("#d12").html('<div><a onclick="getdata(1)" href="#">'+"上一页"+'</a></div>');  				     
					     }
					     if(n<=lastPager){
									      			     
					  	   $("#d10").html('<div><a onclick="getdata(0)" href="#">'+"下一页"+'</a>('+pn+'/'+lastPager+')</div>');  				     
					     }else{		
					       
					  	   $("#d10").html('<div>下一页('+pn+'/'+lastPager+')</div>');  				     
					     }	

				  $(data2).each(function(index,rdata){

	                     var address=rdata.localshopAddrs;    
	                     address= address.substring(0, 29); 

	                     var info=rdata.localshopInfo;    
	                     info= info.substring(0, 29);    
	                     
					     $("#dmsgid1").html($("#dmsgid1").html()+'<div class="list_div1" style="width:80px;">'+rdata.localshopId+'</div>');
					     $("#dmsgid2").html($("#dmsgid2").html()+'<div class="list_div1" >&nbsp;<img height="18px" src="'+rdata.localshopFace+'">&nbsp;'+rdata.localshopName+'</div>');
					     $("#dmsgid3").html($("#dmsgid3").html()+'<div class="list_div1">'+info+'</div>'); 
					     $("#dmsgid4").html($("#dmsgid4").html()+'<div class="list_div1">'+rdata.localshopLevel+'</div>');
					     $("#dmsgid5").html($("#dmsgid5").html()+'<div class="list_div1" title="'+rdata.localshopAddrs+'">'+address+'</div>'); 				     				     
					     $("#dmsgid6").html($("#dmsgid6").html()+'<div class="list_div1">'+rdata.SLocalshoptype.localshoptypeName+'</div>'); 
					     $("#dmsgid7").html($("#dmsgid7").html()+'<div class="list_div1">'+rdata.SUser.userNikename+'</div>');					     
					     $("#dmsgid8").html($("#dmsgid8").html()+'<div class="list_div1">'+rdata.localshopTime+'</div>'); 				
	                     if(rdata.localshopStaus==0){
			          	    $("#dmsgid9").html($("#dmsgid9").html()+'<div class="list_div1"><a href="detail_shop.jsp?sid='+rdata.localshopId+'" onclick="changeif(1)" target="tvc">详情</a></div>');	                         
	                     }
                         if(rdata.localshopStaus==3){
			          	    $("#dmsgid9").html($("#dmsgid9").html()+'<div class="list_div1"><a href="detail_shop.jsp?sid='+rdata.localshopId+'" onclick="changeif(1)" target="tvc">详情</a></div>');	                       
	                     }
 			     		 if(rdata.localshopStaus==2){
			          	    $("#dmsgid9").html($("#dmsgid9").html()+'<div class="list_div1"><a href="detail_shop.jsp?sid='+rdata.localshopId+'" onclick="changeif(1)" target="tvc">详情</a>&nbsp;<a href="#" onclick="doUpdate('+rdata.localshopId+',1)">冻结</a></div>');	                         
	                     }	
 			     		 if(rdata.localshopStaus==1){
			          	    $("#dmsgid9").html($("#dmsgid9").html()+'<div class="list_div1"><a href="detail_shop.jsp?sid='+rdata.localshopId+'" onclick="changeif(1)" target="tvc">详情</a>&nbsp;<a href="#" onclick="doUpdate('+rdata.localshopId+',2)">恢复</a></div>');	                         
	                     }		       
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
	    
	    
       function doUpdate(id,s){     

		    var json10 = {
		        "sendtype":20147,
		        "data":{
		        "sid":id,	
	  			"status": s	        			        			        
		        }
		    };                     
            var a="";
            if(s==1){
               a=2;
            }else{
               a=1;
            }
		

                $.ajax({
			           async:false,                
				       type:"post",                         
				       url:"mobile!mobile.action",	 
				       dataType:"json",   
		      		   data:"&para="+JSON.stringify(json10),
				       success:function(d){	
			                      
		                          window.location.href="list_shop.jsp?status="+a;
			                                                                            
			                    }	                                  		           		                  	     		     
		
				       });
  
           
         }	    
	    
    </script>
  </head>
  
  <body>
   <input id="nid" type="hidden" value="1">
   <input id="status1" type="hidden" value="<%=request.getParameter("status") %>">
   <div id="dvmsgid">
    <table   border="1" bordercolor="#B2DFEE" align="center" class="list_table1" style="line-height: 30px;">   
      <tr>     
          <td colspan="11" bgcolor="#F0F8FF">
            <div class="list_div2" >
                 <div class="list_div3"> 
                 <b>列表订单</b> 
                 </div>
            </div>
          </td>   
      </tr>
      
       <tr>     
          <td colspan="11" >
	       <div id="dvif1" class="list_div4" >
	       	<div class="list_div5">
               <div class="list_div6"> 
                  <ul>
                   <li class="l1">
                     <img width="22px" onclick="changeif()"  alt="" src="images/gb.jpg">
                   </li>
                   <li class="l2" style="margin-right: 47%;color:#5B5B5B"><b>订单信息</b></li>
                  </ul>             
	          </div>
              <iframe frameborder="0" name="tvc" class="list_if1"></iframe>         
             </div>     
	       </div>
          </td>   
      </tr>      
      <tr align="center">     
          <td width="80px">ID</td>   
          <td>店铺名称</td>   
          <td>店铺简介</td>
          <td>评分</td>
          <td>地址</td>
          <td>店铺类型</td>
          <td>用户</td>
          <td>注册时间</td>
          <td>操作</td>
      </tr >   

     <tr align="center">

	     <td><div id="dmsgid1"></div></td>
	     <td align="left"><div id="dmsgid2"></div></td>
	     <td><div id="dmsgid3"></div></td>
	     <td><div id="dmsgid4"></div></td>
	     <td><div id="dmsgid5"></div></td>
	     <td><div id="dmsgid6"></div></td>    
	     <td><div id="dmsgid7"></div></td>  
	     <td><div id="dmsgid8"></div></td>
	     <td><div id="dmsgid9"></div></td>


     </tr>		
     <tr align="center">
     <td colspan="11">
 	     <div class="list_div7" >
		     <ul>
			     <li id="d12"></li>
			     <li id="d10"></li>
			     <li>
			                               到第<input id="gopage" type="text" class="list_input1">页
			         <input class="list_input2" onclick="gogetdate()" onmousemove="this.style.background='#EE9A00'" onmouseout="this.style.background='#CD9B1D'" type="button" value="确定" >				         
			     </li>
		     </ul>
		     
	     </div>    
     </td>
     </tr>
  </table>
</div>
  </body>
</html>
