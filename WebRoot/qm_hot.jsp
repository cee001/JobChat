
<%@page import="javax.management.relation.RoleInfo"%>

<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'addbooktype.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/sunmallStyle.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery.js"></script>	 	
	<script>

																
	</script>
  </head>
  
  <body>
     <div>
       <ul>
          <li>
	         <div style="position:absolute;height:50px">
		         <ul style="padding: 0px;margin-top: 10px">
		           <li style="float:left;margin-top:0px;margin-left: 10px;font-size: 22px;font-family: 微软雅黑;color:#e53430"><b>热卖单品</b></li>
		           <li style="float:left;margin-top:1px;margin-left: 50px;"><img alt="" width="32" src="images/home/sc_38.png"></li>
		         </ul>
		      </div>     
          </li>
          <li style="position:absolute;padding: 0px;margin-top: 50px">
	          <table border="1px" bordercolor="#F0F0F0" align="center" style="margin-top:0px;width:1000px;height:492px;border-top: 2px solid;border-top-color:#e53430;">
	             <tr>
	              <td rowspan="2" width="200px">
	              <img alt="" width="100%" height="100%" src="images/home/sc_42.png">
	              </td>
	              <td width="200px" height="246px">
	                <div style="width: 100%;height: 100%;">
	                  <ul style="margin-top: 20px;width:150px;margin-left: 20px;">
	                    <li style="width:150px;height:136px;"><img alt="" width="100%"  src="images/home/sc_44.png"></li>
	                    <li style="margin-top: 20px;font-size: 14px;font-family: 微软雅黑;">湖南麻橙</li>
	                    <li style="margin-top: 10px;font-size: 16px;font-family: 微软雅黑;color:#e53430"><font size="2px">￥</font><b>49元/500克</b></li>
	                  </ul>
	                </div>
	              
	              </td>
	              <td colspan="2"><img alt="" src="images/home/sc_47.png"></td>
	              <td width="200px" align="center">
	             
	              	<div style="width: 100%;height: 100%;">
	                  <ul style="margin-top: 20px;width:150px;margin-left: 20px;">
	                    <li style="width:150px;height:136px;"> <img alt="" width="150"  src="images/home/sc_90.png"></li>
	                    <li style="margin-top: 20px;font-size: 14px;font-family: 微软雅黑;">赣南砂糖蜜桔</li>
	                    <li style="margin-top: 10px;font-size: 16px;font-family: 微软雅黑;color:#e53430"><font size="2px">￥</font><b>19元/500克</b></li>
	                  </ul>
	                </div>
	              </td>
	             </tr>
	              <tr>
	              <td>
	              	<div style="width: 100%;height: 100%;">
	                  <ul style="margin-top: 20px;width:150px;margin-left: 20px;">
	                    <li style="width:150px;height:136px;"> <img alt="" width="100%"  src="images/home/sc_78.png"></li>
	                    <li style="margin-top: 20px;font-size: 14px;font-family: 微软雅黑;">陕西红富士</li>
	                    <li style="margin-top: 10px;font-size: 16px;font-family: 微软雅黑;color:#e53430"><font size="2px">￥</font><b>9.9元/500克</b></li>
	                  </ul>
	                </div>	              
	              </td>
	              <td>
	              	<div style="width: 100%;height: 100%;">
	                  <ul style="margin-top: 20px;width:150px;margin-left: 20px;">
	                    <li style="width:150px;height:136px;"> <img alt="" width="100%"  src="images/home/sc_80.png"></li>
	                    <li style="margin-top: 20px;font-size: 14px;font-family: 微软雅黑;">四川安岳檬柠2个</li>
	                    <li style="margin-top: 10px;font-size: 16px;font-family: 微软雅黑;color:#e53430"><font size="2px">￥</font><b>5元</b></li>
	                  </ul>
	                </div>		              
	              </td>
	              <td>
	              	<div style="width: 100%;height: 100%;">
	                  <ul style="margin-top: 20px;width:150px;margin-left: 20px;">
	                    <li style="width:150px;height:136px;"> <img alt="" width="100%"  src="images/home/sc_88.png"></li>
	                    <li style="margin-top: 20px;font-size: 14px;font-family: 微软雅黑;">海南菠萝</li>
	                    <li style="margin-top: 10px;font-size: 16px;font-family: 微软雅黑;color:#e53430"><font size="2px">￥</font><b>15元</b></li>
	                  </ul>
	                </div>	              
	              </td>
	              <td>
	              	<div style="width: 100%;height: 100%;">
	                  <ul style="margin-top: 20px;width:150px;margin-left: 20px;">
	                    <li style="width:150px;height:136px;"> <img alt="" width="100%"  src="images/home/sc_76.png"></li>
	                    <li style="margin-top: 20px;font-size: 14px;font-family: 微软雅黑;">四川安岳檬柠2个</li>
	                    <li style="margin-top: 10px;font-size: 16px;font-family: 微软雅黑;color:#e53430"><font size="2px">￥</font><b>17元</b></li>
	                  </ul>
	                </div>	              
	              </td>
	             </tr>
	          </table>
          </li>
       </ul>
     </div>
     
  </body>
</html>
