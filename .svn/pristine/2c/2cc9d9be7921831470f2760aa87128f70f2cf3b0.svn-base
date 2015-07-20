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
		             if(m==1 & n!=1){
		                n=n-2;
		             }
			    var json ={
				    "sendtype":20141,
				    "data":{
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
				                 $("#dmsgid10").html("");
				                 $("#dmsgid11").html("");


			
					     var data1=d.data;
					     var data2=data1.localorderlist;
   				     
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
	                     var address=rdata.localorderAddress;    
	                     address= address.substring(0, 29); 

	                     var text=rdata.localorderText;    
	                     text= text.substring(0, 29);    		 
					     
					     $("#dmsgid1").html($("#dmsgid1").html()+'<div class="list_div1" style="width:80px;">'+rdata.localorderId+'</div>');
					     $("#dmsgid2").html($("#dmsgid2").html()+'<div class="list_div1" >&nbsp;'+rdata.localorderTotalmoney+'</div>');
					     $("#dmsgid3").html($("#dmsgid3").html()+'<div class="list_div1">'+rdata.localorderUsername+'</div>'); 
					     $("#dmsgid4").html($("#dmsgid4").html()+'<div class="list_div1">'+rdata.localorderPhone+'</div>');
					     $("#dmsgid5").html($("#dmsgid5").html()+'<div class="list_div1">'+rdata.localorderProvince+'/'+rdata.localorderCity+'/'+rdata.localorderDistrict+'</div>'); 				     				     
					     $("#dmsgid6").html($("#dmsgid6").html()+'<div class="list_div1" title="'+rdata.localorderAddress+'">'+address+'</div>'); 
					     $("#dmsgid7").html($("#dmsgid7").html()+'<div class="list_div1" title="'+rdata.localorderText+'">'+text+'</div>'); 
					     $("#dmsgid8").html($("#dmsgid8").html()+'<div class="list_div1">'+rdata.SUser.userNikename+'</div>'); 
					     $("#dmsgid9").html($("#dmsgid9").html()+'<div class="list_div1">'+rdata.localorderTime+'</div>'); 
					     $("#dmsgid10").html($("#dmsgid10").html()+'<div class="list_div1">'+rdata.localorderStatus+'</div>'); 
			          	 $("#dmsgid11").html($("#dmsgid11").html()+'<div class="list_div1"><a href="detail_order.jsp?oid='+rdata.localorderId+'" onclick="changeif(1)" target="tvc">详情</a>&nbsp;<a href="#" onclick="doUpdate('+rdata.localorderId+')">删除</a></div>');
 			     			       
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
	    
	    
       function doUpdate(id){

		    var json10 = {
		        "sendtype":20144,
		        "data":{
		        "oid":id,	
	  				        			        			        
		        }
		    };
		
            if(confirm("确定删除吗？")){
                $.ajax({
			           async:false,                
				       type:"post",                         
				       url:"mobile!mobile.action",	 
				       dataType:"json",   
		      		   data:"&para="+JSON.stringify(json10),
				       success:function(d){	
			                      alert("订单删除成功");
		                          window.location.href="list_order.jsp";
			                                                                            
			                    }	                                  		           		                  	     		     
		
				       });
  
              }
         }	    
	    
    </script>
  </head>
  
  <body>
   <input id="nid" type="hidden" value="1">

   <div id="dvmsgid">
    <table   border="1" bordercolor="#B2DFEE" align="center" class="list_table1" >   
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
          <td width="80px">订单编号</td>   
          <td>订单金额</td>   
          <td>收货人姓名</td>
          <td>电话</td>
          <td>省/市/区</td>
          <td>收货地址</td>
          <td>客户备注</td>
          <td>购买客户</td>
          <td>时间</td>
          <td>订单状态</td>
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
	     <td><div id="dmsgid10"></div></td>
	     <td><div id="dmsgid11"></div></td>

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
