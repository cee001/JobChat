<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>My JSP 'Tjthome.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 	<script type="text/javascript" src="js/jquery.js"></script>   
	<link href="css/linkStyle.css" rel="stylesheet" type="text/css" />
	<link href="css/sunmallStyle.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">  
         $(function(){   
                        
              $("#divp1").load("qhead.jsp?RandStr="+Math.random()); 
              $("#dh_center").load("qdh_mall.jsp"); 	  
              $("#divp21").load("qfoot_new.jsp"); 
              var uid=document.getElementById("u100").value;
 
              $("#divp2b_center_b").load("ur!showDetail1.action?uid="+uid);

          });             
        function openhref1(src){

      		 $.ajax({ 
			     async:false,    	       		
				 type:"get",
				 url:src, 
				 success:function(d){			                 
				        $("#divp2b_center_b").html(d); 
				        changedd(); 	                              
	             }                           	                        		
			});	
		}	      

		function changedu(id,a){

		img="bai_"+a+".png";
			document.getElementById("l"+id).style.background="#FFB90F";
			document.getElementById("l"+id).style.color="#ffffff";
			document.getElementById("img"+a).src="images/home/bai/"+img;	
		}
		function rechangedu(id,a){		
			var outid=document.getElementById("outid").value;	   
			if(id==outid){
            img="hei_"+a+".png"; 
			document.getElementById("l"+id).style.background="#FFB90F";
            document.getElementById("l"+id).style.color="#ffffff";
            document.getElementById("img"+a).src="images/home/hei/"+img;
			}else{	     
		    img="hei_"+a+".png"; 
		    document.getElementById("l"+id).style.background="none";
		    document.getElementById("l"+id).style.color="#0A0A0A";
		    document.getElementById("img"+a).src="images/home/hei/"+img;
		    }

			}	
		function changedd(){
			 document.getElementById("l2150").style.background="none";
		     document.getElementById("l2150").style.color="#0A0A0A";		
			 document.getElementById("l2151").style.background="none";
		     document.getElementById("l2151").style.color="#0A0A0A";
		     document.getElementById("l2152").style.background="none";
		     document.getElementById("l2152").style.color="#0A0A0A";
		     document.getElementById("l4001").style.background="none";
		     document.getElementById("l4001").style.color="#0A0A0A";
		     document.getElementById("l4002").style.background="none";
		     document.getElementById("l4002").style.color="#0A0A0A";
		     document.getElementById("l4003").style.background="none";
		     document.getElementById("l4003").style.color="#0A0A0A";
		     document.getElementById("l4004").style.background="none";
		     document.getElementById("l4004").style.color="#0A0A0A";
		     document.getElementById("l5001").style.background="none";
		     document.getElementById("l5001").style.color="#0A0A0A";
		     document.getElementById("l5002").style.background="none";
		     document.getElementById("l5002").style.color="#0A0A0A";
		     document.getElementById("l5003").style.background="none";
		     document.getElementById("l5003").style.color="#0A0A0A";
		     document.getElementById("l5004").style.background="none";
		     document.getElementById("l5004").style.color="#0A0A0A";
		     document.getElementById("l5005").style.background="none";
		     document.getElementById("l5005").style.color="#0A0A0A";
		     document.getElementById("l5006").style.background="none";
		     document.getElementById("l5006").style.color="#0A0A0A";
			
		}	
	
       $(function(){   

            document.getElementById("l107").style.background="#FFB90F";
 			document.getElementById("l107").style.color="#ffffff";
			document.getElementById("img28").src="images/home/bai/bai_28.png";	         	
            });             
                 
        function openhref(src){
        
              window.open(src,target="_blank");
               
        }          
    </script>      
  

  </head>
  
  <body>

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
      if(userId==0){
        response.sendRedirect("qlogin.jsp");
        return;
      }
    %>
    <input id="u100" type="hidden" value="<%=userId %>">    
    <input id="outid" type="hidden" value="2150">
    <input id="doutid" type="hidden" value="1"> 
    <div id="indexdiv"> 
       <div id="divp1">
         
       </div>
       <div id="divp2" onmouseover="rechangex1()">
           <div onmouseover="rechangex1()" id="divp2a_forum" >       
           <div id="dh_center"></div>
           </div> 
           <div id="divp2b_forum">  
              <div id="divp2b_center_a">
                <ul>
                  <li style="padding:0px;text-align:center;width:210px;height:180px;border-top:0px">
                       <img alt="" src="images/home/c01.png"><br>                   
                  </li> 
                  <li id="l101" onclick="openhref1(101,30)" onmousemove="changedu(101,30)" onmouseout="rechangedu(101,30)" >
	                   <div id="c_a_li">
		                   <ul>
			                   <li style="float:left;margin-top:12px;width:22px;line-height:20px;"><img id="img30" src="images/home/hei/hei_30.png"></li>
			                   <li style="width:100px;">&nbsp;我的公司</li>
		                   </ul>
	                   </div>                     
                  </li>   
                  <li id="l109" onclick="openhref('qpr_release.jsp')" onmousemove="changedu(109,34)" onmouseout="rechangedu(109,34)" >
	                   <div id="c_a_li">
		                   <ul>
			                   <li style="float:left;margin-top:12px;width:22px;line-height:20px;"><img id="img34" src="images/home/hei/hei_34.png"></li>
			                   <li style="width:100px;">&nbsp;发布产品</li>
		                   </ul>
	                   </div>                     
                  </li>                                 
                  <li id="l102" onclick="openhref1(102,03)" onmousemove="changedu(102,03)" onmouseout="rechangedu(102,3)">
	                   <div id="c_a_li">
		                   <ul>
			                   <li style="float:left;margin-top:12px;width:22px;line-height:20px;"><img id="img3" src="images/home/hei/hei_3.png"></li>
			                   <li style="width:100px;">&nbsp;我的求职</li>
		                   </ul>
	                   </div>                                        
                  </li>
                  <li id="l103" onclick="openhref1(103,11)" onmousemove="changedu(103,11)" onmouseout="rechangedu(103,11)">
	                   <div id="c_a_li">
		                   <ul>
			                   <li style="float:left;margin-top:12px;width:22px;line-height:20px;"><img id="img11" src="images/home/hei/hei_11.png"></li>
			                   <li style="width:100px;">&nbsp;我的招聘</li>
		                   </ul>
	                   </div> 
                  </li>
                  <li id="l104" onclick="openhref1(104,32)" onmousemove="changedu(104,32)" onmouseout="rechangedu(104,32)">
	                   <div id="c_a_li">
		                   <ul>
			                   <li style="float:left;margin-top:12px;width:22px;line-height:20px;"><img id="img32" src="images/home/hei/hei_32.png"></li>
			                   <li style="width:100px;">&nbsp;我的发布</li>
		                   </ul>
	                   </div>                   
                  </li>
                  <li id="l105" onclick="openhref1(105,36)" onmousemove="changedu(105,36)" onmouseout="rechangedu(105,36)">
	                   <div id="c_a_li">
		                   <ul>
			                   <li style="float:left;margin-top:12px;width:22px;line-height:20px;"><img id="img36" src="images/home/hei/hei_36.png"></li>
			                   <li style="width:100px;">&nbsp;我的消息</li>
		                   </ul>
	                   </div>                   
                  </li>
                  <li id="l106" onclick="openhref1(106,25)" onmousemove="changedu(106,25)" onmouseout="rechangedu(106,25)">
	                   <div id="c_a_li">
		                   <ul>
			                   <li style="float:left;margin-top:12px;width:22px;line-height:20px;"><img id="img25" src="images/home/hei/hei_25.png"></li>
			                   <li style="width:100px;">&nbsp;我的收藏</li>
		                   </ul>
	                   </div>                   
                  </li>

                  <li id="l107" onclick="openhref1(107,28)" onmousemove="changedu(107,28)" onmouseout="rechangedu(107,28)">
	                   <div id="c_a_li">
		                   <ul>
			                   <li style="float:left;margin-top:12px;width:22px;line-height:20px;"><img id="img28" src="images/home/hei/hei_28.png"></li>
			                   <li style="width:100px;">&nbsp;个人信息</li>
		                   </ul>
	                   </div>                   
                  </li>                  
                  <li id="l108" onclick="openhref1(108,16)" onmousemove="changedu(108,16)" onmouseout="rechangedu(108,16)">
	                   <div id="c_a_li">
		                   <ul>
			                   <li style="float:left;margin-top:12px;width:22px;line-height:20px;"><img id="img16" src="images/home/hei/hei_16.png"></li>
			                   <li style="width:100px;">&nbsp;系统设置</li>
		                   </ul>
	                   </div>                   
                  </li>
                               
                </ul>
              </div>  
              <div id="divp2b_center_b" >

              </div>                    
           </div> 

           <div id="#divp21">  
           
           </div> 
                  
       </div>    

    </div>
  </body>
</html>


