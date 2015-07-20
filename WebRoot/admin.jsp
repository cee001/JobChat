<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>



	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
<!--#indexdiv { width: 99%; margin:0; overflow:inherit; height:99%; } 
body { margin:0px;padding:0px;}
#divp1  { visibility: visible;position:absolute;  top:0px; left:0px; float: left;border: 1px solid;border-color:green;width:400px;}

</style>

  </head>

  
  <body>
   <form action="admin!dologin.action" method="post">


   <div id="indexdiv">
   <div  id="divp1" >
    <table align="center" border="0" bgcolor="#B0E2FF" border-color="#3A5FCD" cellspacing="1">

        <tr>
        <td height="50">&nbsp</td>
        </tr> 
        <tr>
        <td width="100">&nbsp</td>
        <td width="50"><font color="green" >账号:</font></td>
        <td><input type="text" name="loginId" style=" border:none;font-size:16px; height:25px; width:150px"/></td>
        <td width="100">&nbsp</td>
        </tr>
        <tr>
        <td>&nbsp</td>
        <td> <font color="green">密码:</font></td>
        <td><input type="password" name="loginPwd" style=" border:none;font-size:16px; height:25px; width:150px"/></td>
        <td>&nbsp</td>
        </tr>
        <tr>
        <td>&nbsp</td>
        </tr>         
        <tr>
        <td >&nbsp</td>
        <td >&nbsp</td>
        <td width="150" align="right">
         <strong> 
        <input class="bt" type="submit" value="登录"
         style=" border:none; height:25px;font-size:20px;color:green; width:60px; background:url(images/bt.png)" />
         </strong>   
         </td>
         <td>&nbsp</td>
        </tr>
        <tr>
        <td>&nbsp</td>
        </tr> 
    
    
    </table> 
    </div>
    </div>
    </form>
  </body>
</html>



