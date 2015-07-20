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
			    "sendtype":59001,
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


			          var strtitle=rdata.adsName;                                
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

					     $("#dmsgid1").html($("#dmsgid1").html()+'<div class="list_div1" style="width:80px;">'+rdata.adsId+'</div>');
					     $("#dmsgid2").html($("#dmsgid2").html()+'<div class="list_div1" ><div style="float: left;"><img height="26px" src="'+rdata.adsPicture+'"></div><div style="margin-left:10px;padding-left: 5px;">'				                                            
					                                            +''+strtitle+'</div></div>');
					     $("#dmsgid3").html($("#dmsgid3").html()+'<div class="list_div1">'+rdata.adsType+'</div>'); 
					     $("#dmsgid4").html($("#dmsgid4").html()+'<div class="list_div1">'+rdata.adsInfoid+'</div>');
					     $("#dmsgid5").html($("#dmsgid5").html()+'<div class="list_div1">'+rdata.adsActivtytype+'</div>'); 				     				     
					     $("#dmsgid6").html($("#dmsgid6").html()+'<div class="list_div1">'+rdata.adsTime+'</div>'); 	
			          	 $("#dmsgid7").html($("#dmsgid7").html()+'<div class="list_div1">&nbsp;<a href="#" onclick="doUpdate('+rdata.adsId+')">删除</a></div>');
 			     			       
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
		        "sendtype":20152,
		        "data":{
		        "adsId":id,	
	  				        			        			        
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
			
		                          window.location.href="list_ads.jsp";
			                                                                            
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
          <td colspan="8" bgcolor="#F0F8FF">
            <div class="list_div2" >
                 <div class="list_div3"> 
                 <b>列表资讯</b> 
                 </div>
            </div>
          </td>   
      </tr>
      
       <tr>     
          <td colspan="8" >
	       <div id="dvif1" class="list_div4" >
	       	<div class="list_div5">
               <div class="list_div6"> 
                  <ul>
                   <li class="l1">
                     <img width="22px" onclick="changeif()"  alt="" src="images/gb.jpg">
                   </li>
                   <li class="l2" style="margin-right: 47%;color:#5B5B5B"><b>修改商品信息</b></li>
                  </ul>             
	          </div>
              <iframe frameborder="0" name="tvc" class="list_if1"></iframe>         
             </div>     
	       </div>
          </td>   
      </tr>      
      <tr align="center">     
          <td width="80px">ID</td>   
          <td>图片标题</td>   
          <td>类型</td>
          <td>对应ID</td>
          <td>表类型</td>
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
	     <td><div id="dmsgid7"></div></td>  
	     <td><div id="dmsgid8"></div></td> 
     
     </tr>		
     <tr align="center">
     <td colspan="8">
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
