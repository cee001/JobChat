
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>发布消息</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<script type="text/javascript" src="js/jquery.js"></script>
	
    <script type="text/javascript">
    $(function(){   
        		     		     		     	 
		  $.ajax({
		       type:"post",                         
		       url:"mobile!mobile.action",	 
		       //contentType: "application/json; charset=utf-8",    
		       dataType:"json",   
      		   data:"&para="+JSON.stringify(GetJsonData()), 
		       success:function(d){	
		            if(d != null){

				    var data1=d.data;
				    var data2=data1.entity;	
				    var a=data2.localorderStatus;
				    var b="";
				    if(a==0){
				       b="等待支付";
				       $("#order10").html('&nbsp;<a href="#" onclick="upPrice('+data2.localorderId+')"><img height="20px" src="images/sun/26-26.png"></a>');
				    }
				    if(a==2){
				       b="等待发货";
				    }
				    if(a==3){
				       b="等待收货";
				    }
				    if(a==4){
				       b="已签收";
				    }
				    if(a==5){
				       b="已退货";
				    }                     
                    $("#order1").html('<b style="color:#616161">订单编号</b>:'+data2.localorderId+'');
                    $("#order2").html(data2.localorderTotalmoney);        
                    $("#order3").html(data2.localorderTime);
                    $("#order4").html('<b style="color:#616161">购买客户</b>:'+data2.SUser.userNikename+'');
                    $("#order5").html('<b style="color:#616161">订单状态</b>:<font style="color:#FFA500;">'+b+'</font>'); 
                    $("#order6").html('<b style="color:#616161">收货人</b>:'+data2.localorderUsername+'');
                    $("#order7").html('<b style="color:#616161">联系电话</b>:'+data2.localorderPhone+'');
                    $("#order8").html('<b style="color:#616161">收货地址</b>:'+data2.localorderProvince+data2.localorderCity+data2.localorderDistrict+data2.localorderAddress+'');                                 
                    $("#order9").html('<b style="color:#616161">客户备注</b>:'+data2.localorderText+'');                                              

	                    }	                                                         
	                    }	                                  		           		                  	     
		       });

		       });
		       
		       
       	   function GetJsonData() {
                var oid=document.getElementById("ipmid").value;  
                               
			    var json = {
			        "sendtype":20145,
			        "data":{
			        "oid":oid,			  				        			        			        
			     }};
			    return json;
			}  
			
       	   function upPrice(id) {

                $("#order2").html('<input id="price1" type="text" size="5px" >'); 
                $("#order10").html('<input onclick="doUpdate('+id+')" type="button" width="50px" value="保存">');
                var objp1=document.getElementById("price1");
                objp1.focus();
                
			} 			

      function doUpdate(id){
      
      
            var objp1=document.getElementById("price1");
            if($("#price1").val()==""){
               objp1.focus();
               return false;
            }      
            if((/[\u4e00-\u9fa5]+/).test($("#price1").val())){ 
                alert("不能有汉字");
                objp1.focus();
                return false;	
            } 
            if (/^[a-za-z]+$/.test( $("#price1").val())){
                alert("不能英文字母");
                objp1.focus();
                return false;	
            }  
            var money = parseFloat($("#price1").val());
            money=money.toFixed(2);
       
		    var json10 = {
		        "sendtype":20144,
		        "data":{
		        "orderId":id,
		        "money":money,	
	  				        			        			        
		        }
		    };
  
           $.ajax({
	           async:false,                
		       type:"post",                         
		       url:"mobile!mobile.action",	 
		       dataType:"json",   
      		   data:"&para="+JSON.stringify(json10),
		       success:function(d){	
	                      if(d.ret==0){
	                      
			                $("#order2").html(money); 			                
			                $("#order10").html('&nbsp;<a href="#" onclick="upPrice('+id+')"><img height="20px" src="images/sun/26-26.png"></a>');	                      
	                      };
                    
	                                                                            
	                    }	                                  		           		                  	     		     

		  });
  
              
         }			  
	</script>

  </head>
  
  <body>
         
      <input id="ipmid" type="hidden" value="<%=request.getParameter("oid") %>">
      <table  align="center" style="border-collapse: collapse;width:800px;line-height: 35px;font-size:15px;" cellpadding="0" cellspacing="0">   

	      <tr>  	
	         <td align="left" id="order1" width=350px>订单编号</td> 
             <td>
	             <div style="color:#616161;float: left;"><b>订单金额</b>:<font size="2">￥</font></div>
	             <div id="order2" style="color:red;float: left;"></div>
	             <div style="color:red;float: left;">元</div>
	             <div id="order10" style="float: left;margin-top: 3px;"></div>
             </td>	          
	         <td align="right" id="order3">下单时间</td>    
          </tr>
          <tr>  
          	 <td id="order4">购买客户</td>
	         <td align="left"  id="order5" colspan="2">订单状态</td>     
          </tr>
           <tr>  	
	         <td id="order9"  colspan="3" >客户备注</td>     
          </tr>  
           <tr>  	
	         <td colspan="3" >&nbsp;</td>     
          </tr>           
          <tr>  	
	         <td colspan="3" style="border-top: 1px solid #8F8F8F;color: #36648B"><b>收货人信息</b></td>     
          </tr>                    
          <tr>  	
	         <td id="order6"  colspan="3">收货人</td>     
          </tr> 
          <tr>  	
	         <td id="order7"  colspan="3">联系电话</td>     
          </tr> 
          <tr>  	
	         <td id="order8"  colspan="3">收货地址</td>     
          </tr>   
                                  
      </table>

  </body>
</html>
