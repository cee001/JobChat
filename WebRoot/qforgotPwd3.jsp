<%@page import="com.jobchat.entity.Admin"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'qUppass.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/qloginStyle.css" rel="stylesheet" type="text/css" />
	<link href="css/login-linkStyle.css" rel="stylesheet" type="text/css" />	
	<script type="text/javascript" src="js/jquery.js"></script>	
	<script type="text/javascript" src="js/md5.js"></script>	
    <script>

	 function clear1(){
	     dv1.innerHTML = "";
	     dv2.innerHTML = "";	 	 
	 }		
     function checkLogin(){

			var objP1=document.getElementById("pd1");
			var objP2=document.getElementById("pd2");	
            var phone=document.getElementById("phone");
		    var newpa=hex_md5(objP1.value);

			if(objP1.value==""){
				 dv1.innerHTML = ">密码不能为空";
				
				return false;
			}
			if(objP1.value.length<6){
			    dv1.innerHTML = ">密码至少大于6位";
			
				return false;	
			}
			if(objP2.value==""){
				dv2.innerHTML = ">请确认密码";
				
				return false;
			}						

			if(objP2.value != objP1.value){
				dv2.innerHTML = ">两次输入密码不一致";
			
				return false;		
			}
			 
              //评论提交                                                            		     		     		     	 
		     $.ajax({
		       type:"post",
		       url:"ur!doUpdate1.action",
		       data:"userPhone="+phone
		           +"&userPwd="+newpa,
		       success:function(d) {	
		        	document.getElementById("divpp7").innerHTML="密码修改成功!";		                                    
	            }  	                      		           		                  	     
		       });
            }     
    </script> 
  </head>
    <body style="background: #F7F7F7">
    <input id="mobile_code" type="hidden" name="mobile_code" value="">
    <input id="phone" type="hidden" name="phone" value="<%=request.getParameter("phone")%>　">
    <div id="#indexdvp" style="font-family: 微软雅黑;">
        <div id="divpp6">
          <ul>
           <li style="margin-left: 25%;margin-top: 2%"><img src="images/dlym/zhuce_03.png"></li>
           <li style="margin-left: 65%;margin-top: 6%;font-size:17px;">
             <a href="sunhome.html">阳光生活首页</a>
           </li>
           <li style="margin-top: 8%;width:100%;height:10px;background: #3258ae">&nbsp;</li>
          </ul>
        </div>
	    <div id="divpp7">
	      <ul >
           <li style="font-size:20px">找回密码 </li>
           <li  style="margin-top: 0px"><img width="85%" src="images/dlym/zhuce.png"></li>
           <li style="color:#FF4500">
                                            新密码已生效，请妥善保管。<br><br><br>			 	                              
           </li>
           <li style="margin-top: 150px;text-align: center;">
            <table width="100%" >
	            <tr>
	              <td>&nbsp;</td>
		          <td width="60px" align="right"><a href="qlogin.jsp"><img height="50px" src="images/dlym/fh.png"> </a></td>
		          <td width="150px"><a href="qlogin.jsp"><b style="font-size: 20px;font-family: 方正兰亭;color:#104E8B">返回登陆</b></a></td>
		          
	            </tr>
            </table>       
           <br>
           </li>
          </ul>
	              
	    </div>
    </div>


  </body>
</html>
            