
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
    <script type="text/javascript" src="js/jquery.js"></script>	

	<script type="text/javascript">

	//得到地区码
	function getAreaID(){
		var area = 0;          
		if($("#seachdistrict").val() != "0"){
			area = $("#seachdistrict").val();                
		}else if ($("#seachcity").val() != "0"){
			area = $("#seachcity").val();
		}else{
			area = $("#seachprov").val();
		}
		return area;
	}
	    function rehref2(){
	 		      var uid = $("#vid").val();	
			      window.location.href= "ur!showDetail1.action?u.uid="+uid;  
	    	    
	    } 

        function showur(){ 
        
              $.ajax({                  
			       type:"post",                           
			       url:"ur!doUpdate.action",
			       data:"&ui.SUser.userNikename ="+$("#uu1").val()
			           +"&ui.SUser.userId ="+$("#uu0").val()
			           +"&ui.userinfoTruename="+$("#uu2").val()
			           +"&ui.userinfoSex="+$("#uu3").val()
			           +"&ui.userinfoProfession="+$("#uu5").val()
			           +"&ui.userinfoCity="+$("#uu6").val()
			           +"&ui.userinfoAddress="+$("#uu7").val()
			           +"&ui.userinfoWorkaddress="+$("#uu8").val(),		      		          
			        success:function(d){	
		                    if(d!=null){	
							   var uid = $("#uu0").val();	
							   $("#divp2b_center_b").load("ur!showDetail1.action?uid="+uid);  
		                      }	   		        		        	        		              	                                                         
		            }  	                                  		           		                  	     
			       });		                    
              }              		     		     		     	 

              function radio(i) {                      
                   document.getElementById("uu3").value=$("#uu"+i).val();
				
			} 
     
	</script>    
  </head>
  
 <body >
<div id="ui1" style="padding:0px;">
   <div style="padding:0px;">
        <ul style="float: left;padding: 0px;margin-top:20px;list-style-type:square;font-size:15px;font-family: 微软雅黑;">        
	        <li style="margin-top:0px;list-style-type:square;height:30px;padding: 0px;">         
	                                    当前位置&nbsp;<img alt="" src="images/jt07.png">&nbsp;&nbsp;个人信息&nbsp;<img alt="" src="images/jt07.png">&nbsp;&nbsp;编辑资料 
	        </li>
         </ul>
  </div>
  <br><br><br>
  
  <input type="hidden" name="ui.userinfoId" value="${requestScope.ui.userinfoId }">
  <input id="uu0" type="hidden" name="userId" value="${requestScope.ui.SUser.userId }">
  <table align="center" width="500" height="" style="font-size:15px;line-height: 45px;">  
     <tr>
        <td width="75px">昵&nbsp;&nbsp;&nbsp;称：</td>
        <td><input id="uu1" type="text" name="u.username" value="${requestScope.ui.SUser.userNikename }"></td>
     </tr>
     <tr>
        <td width="75px">姓&nbsp;&nbsp;&nbsp;名：</td>     
        <td>
	        <input id="uu2" type="text" name="u.city" value="${requestScope.ui.userinfoTruename}"/>   
        </td>
     </tr>  
     <tr>   
        <td width="75px"> 
		  	                                     性&nbsp;&nbsp;&nbsp;别：                                       
        </td>    
        <td>	   
                   <input id="uu3" type="hidden" name="sex" >     
  	               <c:if test="${requestScope.ui.userinfoSex==true  }"> 
		  	                                      男 <input id="uu31" onclick="radio(31)" type="radio" name="u.city" value="true" checked="checked"/>  
		  	                                     女 <input id="uu32" onclick="radio(32)" type="radio" name="u.city" value="false" />                                                      
  	               </c:if>  
  	               <c:if test="${requestScope.ui.userinfoSex==false  }"> 
  	                                                                  男 <input id="uu33" onclick="radio(33)" type="radio" name="u.city" value="true"/> 
		  	                                      女<input id="uu34" onclick="radio(34)" type="radio" name="u.city" value="false" checked="checked"/>                             
  	               </c:if>    	               
   	               <c:if test="${requestScope.ui.userinfoSex==null  }"> 
  	                                                                  男 <input id="uu35" onclick="radio(35)" type="radio" name="u.city" value="true"/> 
		  	                                      女<input id="uu36" onclick="radio(36)"type="radio" name="u.city" value="false" />                             
  	               </c:if>  	               		  	                                         	          
        </td>
     </tr>      
     <tr>
        <td >职&nbsp;&nbsp;&nbsp;业：</td>
        <td><input id="uu5" type="text" name="u.username" value="${requestScope.ui.userinfoProfession}">
     <tr>
        <td>城&nbsp;&nbsp;&nbsp;市：</td>     
        <td>
	        <input id="uu6" type="text" name="u.city" value="${requestScope.ui.userinfoCity}"/>   
        </td>
     </tr> 
     <tr>
        <td>家庭地址</td>         
        <td>
	        <input id="uu7" type="text" name="u.city" value="${requestScope.ui.userinfoAddress}"/>   
        </td>
     </tr>  
     <tr>
        <td>工作地址</td>         
        <td>
	        <input id="uu8" type="text" name="u.city" value="${requestScope.ui.userinfoWorkaddress}"/>   
        </td>
     </tr>       
     <tr>
        <td colspan="2">           
   		   <input type="button" value="保 存" onclick="showur()"
                  style=" border:none; height:25px;font-size:16px;color:fff; width:90px; background:red" />       
        </td>
     </tr>              		  
    </table>

  </div>   
  </body>
</html>
