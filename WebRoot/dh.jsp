<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'dh.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	    
	    #d1{ margin:0 ;width:840px;height:52px;margin-left:50px;}   
	    #ul{list-style:none;margin-top:0px;margin-left:25px;height:27px;}
	    #li{text-align:left;float:left;margin:0 80px;display:block;line-height:28px;margin-top:0px;}
	    #d2{ margin:0 ;width:840px;height:26px;margin-top:-17px;overflow:hidden}  
	    #ull{list-style:none;margin-top:1px;margin-left:83px;width:150px;height:26px;}
	    #lii{text-align:left;float:left;margin:0 3px;display:block;}
	    #ulll{list-style:none;margin-top:1px;margin-left:301px;width:205px;height:26px;}
	    #liii{text-align:left;float:left;margin:0 3px;display:block;}
	    #ullll{list-style:none;margin-top:1px;margin-left:552px;width:205px;height:26px;}
	    #liiii{visibility: visible;text-align:left;float:left;margin:0 3px;display:block;overflow:hidden}
	</style>
	<style type="text/css">
		.bt1{
			background-image:url(images/fb.jpg);
		}
		.bt2{
			background-image:url(images/fb2.jpg);
		}
   </style>
    <script type="text/javascript">
       var times=null;
       function clear(){			
			document.getElementById("ulll").style.display="none";
			document.getElementById("ullll").style.display="none";
			document.getElementById("ull").style.display="none";
			clearTimeout(times); 
		
		}
		   
		function change1(){
			document.getElementById("a1").className="bt2";
			document.getElementById("ulll").style.display="none";
			document.getElementById("ullll").style.display="none";
			document.getElementById("ull").style.display="block";
		    times=setTimeout("clear()",3000);	
		    if(times>3002){
			clearTimeout(times); 
			}   	 			
		}
		function rechange1(){
			var objA=document.getElementById("a1");
		
			objA.className="bt1";
			
		}
    	function change2(){
			document.getElementById("a2").className="bt2";
			document.getElementById("ull").style.display="none";
			document.getElementById("ullll").style.display="none";
			document.getElementById("ulll").style.display="block";
		    times=setTimeout("clear()",3000);	
		    if(times>3002){
			clearTimeout(times); 
			}   
			 
		}
		function rechange2(){
			var objA=document.getElementById("a2");
		
			objA.className="bt1";			
		}
		function change3(){
			document.getElementById("a3").className="bt2";
			document.getElementById("ull").style.display="none";
			document.getElementById("ulll").style.display="none";
			document.getElementById("ullll").style.display="block";	

		
		}	
		function rechange3(){
			var objA=document.getElementById("a3");
		
			objA.className="bt1";			
		
		}
		function rechange4(){
			var objA=document.getElementById("a3");
	
			objA.className="bt1";
			
		}
		function show1(){
			window.open("con!showlist.action",target="tv");
			document.getElementById("ull").style.display="none";
			
			
		}
		function show2(){
			window.open("com!showlist.action",target="tv");			
			document.getElementById("ull").style.display="none";
			
			
		}
		function show3(){
			window.open("cer!showlist.action",target="tv");
			document.getElementById("ulll").style.display="none";
		
			
		}
		function show4(){
			window.open("cer!showlist1.action",target="tv");
			document.getElementById("ulll").style.display="none";

			
		}
		function show5(){
			window.open("cer!showlist2.action",target="tv");
			document.getElementById("ulll").style.display="none";
	
			
		}
		function show6(){
			window.open("cer!showlist3.action",target="tv");
			document.getElementById("ullll").style.display="none";
	
			
		}		
		function show7(){
			window.open("cer!showlist4.action",target="tv");
			document.getElementById("ullll").style.display="none";
		
			
		}
		function show8(){
			window.open("cer!showlist5.action",target="tv");
			document.getElementById("ullll").style.display="none";
	
		}
		
		
	 </script>	
  </head>
  
  <body>
   
      <!-- <div id="d1">
        <div>
	     <ul id="ul">
		    <li id="li"><a  href="#" target="tv" onmousemove="change1()" onmouseout="rechange1()"><input id="a1" class="bt1"
	                   style="width:90px;height:27px;border: 0px solid;font-size:16px;color:#FFFFFF;" 
	                   type="button" value="文档中心"> </a></li>
		    <li id="li"><input id="a2"  onmousemove="change2()" onmouseout="rechange2()" class="bt1"
	                   style="width:90px;height:27px;border: 0px solid;font-size:16px;color:#FFFFFF;" 
	                   type="button" value="个人论证"></li>
		    <li id="li"><input id="a3"  onmousemove="change3()" onmouseout="rechange3()" class="bt1"
	                   style="width:90px;height:27px;border: 0px solid;font-size:16px;color:#FFFFFF;" 
	                   type="button" value="企业论证"></li>
	     </ul>	
	    </div>
	    <div id="d2">
	     <ul id="ull" style="display:none; ">
		    <li id="lii"><a  href="#" target="tv" onmousemove="show1()" >
		                <input id="a4" class="bt1"
		                 style="width:60px;height:25px;border: 0px solid;font-size:16px;color:#FFFFFF;" 
	                     type="button" value="新 闻"> </a></li>
		    <li id="lii"><input id="a5"  onmousemove="show2()" class="bt1"
	                   style="width:60px;height:25px;border: 0px solid;font-size:16px;color:#FFFFFF;" 
	                   type="button" value="评论"></li>

	     </ul>
	     <ul id="ulll" style="display:none; ">
		    <li id="liii"><a  href="#" target="tv" onmousemove="show3()" >
		                <input id="a6" class="bt1"
		                 style="width:60px;height:25px;border: 0px solid;font-size:16px;color:#FFFFFF;" 
	                     type="button" value="未论证"> </a></li>
		    <li id="liii"><input id="a7"  onmousemove="show4()" class="bt1"
	                   style="width:60px;height:25px;border: 0px solid;font-size:16px;color:#FFFFFF;" 
	                   type="button" value="待审核"></li>
		    <li id="liii"><input id="a8"  onmousemove="show5()" onmouseout="rechange2()" class="bt1"
	                   style="width:60px;height:25px;border: 0px solid;font-size:16px;color:#FFFFFF;" 
	                   type="button" value="已审核"></li>
	     </ul>
	     <ul id="ullll" style="display:none; ">
		    <li id="liii"><a  href="#" target="tv" onmousemove="show6()" ">
		                <input id="a9" class="bt1"
		                 style="width:60px;height:25px;border: 0px solid;font-size:16px;color:#FFFFFF;" 
	                     type="button" value="未论证"> </a></li>
		    <li id="liiii"><input id="a10"  onmousemove="show7()"  class="bt1"
	                   style="width:60px;height:25px;border: 0px solid;font-size:16px;color:#FFFFFF;" 
	                   type="button" value="待审核"></li>
		    <li id="liiii"><input id="a11"  onmousemove="show8()"  class="bt1"
	                   style="width:60px;height:25px;border: 0px solid;font-size:16px;color:#FFFFFF;" 
	                   type="button" value="已审核"></li>
	     </ul>
	     </div>
	   </div>  -->

  </body>
</html>
