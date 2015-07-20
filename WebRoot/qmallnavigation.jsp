<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>My JSP 'qnavigation.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		#dhdiv {float:left;padding: 0px;margin-left: 0px;margin-top:0px;}
		#dhdiv1 {float:left;padding: 0px;margin-top:0px;margin-left: 0px;width:200px;}
		#dhdiv2 {float:left;margin:0 auto; POSITION:relative; Z-INDEX:800;margin-top:-450px;margin-left:198px;}
		#dhli {margin-top:0px;padding:0;padding-top:15px;FLOAT:right;width:800px; height:430px; POSITION:relative;  
		       Z-INDEX:400;background:#ffffff;font-size: 13px;border: 1px solid;border-color:#BCEE68;border-left-color:#FFFFFF;}
		#dhul {float: left;padding: 0px;margin-left: 0px;list-style-type: none;}
		#dhul li {float: left;margin-left: 10px;margin-top: 3px;}
    </style>
        <script type="text/javascript">
		function changeh(a){
			document.getElementById("n"+a).style.background="#FFFFFF";
			document.getElementById("n"+a).style.color="red";
		    document.getElementById("ul"+a).style.display="block";				
		}
		function rechangeh(a){		   		     
		    document.getElementById("n"+a).style.background="none";
		    document.getElementById("n"+a).style.color="#fff";
		    document.getElementById("ul"+a).style.display="none";			 
			
			}	
         
    </script>
  </head>
  
  <body>
   <div id="dhdiv">
   <div id="dhdiv1">
     <table border="1" bordercolor="#525252" cellpadding="0" cellspacing="0"
            style="border-collapse: collapse;width:100%;background:#525252;color:#fff;border-left: 1px solid;border-left-color:#525252;
            border-right: 1px solid;border-right-color:#525252;
            line-height: 41px;font-size:15px;font-family: 微软雅黑;cursor:pointer;text-align: center;">   
   
      <tr>     
        <td id="n1"  onmousemove="changeh(1)" onmouseout="rechangeh(1)">
                                        时鲜水果<div style="float: right;">>&nbsp;</div>
        </td>   
      </tr> 
      <tr>     
        <td id="n2" onmousemove="changeh(2)" onmouseout="rechangeh(2)">
                                        精选蔬菜<div style="float: right;">>&nbsp;</div>
        </td>   
      </tr>
      <tr>     
        <td id="n3" onmousemove="changeh(3)" onmouseout="rechangeh(3)">
                                        海鲜水产<div style="float: right;">>&nbsp;</div>
        </td>   
      </tr>
      <tr>     
        <td id="n4" onmousemove="changeh(4)"onmouseout="rechangeh(4)">
                                      肉类<div style="float: right;">>&nbsp;</div>
        </td>   
      </tr>
      <tr>     
        <td id="n5"  onmousemove="changeh(5)" onmouseout="rechangeh(5)">
                                       家禽<div style="float: right;">>&nbsp;</div>
        </td>   
      </tr>
      <tr>     
        <td id="n6"  onmousemove="changeh(6)" onmouseout="rechangeh(6)">
                                       冰冻冷藏<div style="float: right;">>&nbsp;</div>
        </td>   
      </tr>

      <tr>     
        <td id="n7" onmousemove="changeh(7)" onmouseout="rechangeh(7)">
                                       休闲食品<div style="float: right;">>&nbsp;</div>
        </td>   
      </tr>
      <tr>     
        <td id="n8" onmousemove="changeh(8)" onmouseout="rechangeh(8)">
                                      饮品畅饮<div style="float: right;">>&nbsp;</div>
        </td>   
      </tr> 
      <tr>     
        <td id="n9" onmousemove="changeh(9)" onmouseout="rechangeh(9)">
                                      粮油副食<div style="float: right;">>&nbsp;</div>
        </td>   
      </tr>
      <tr>     
        <td id="n10" onmousemove="changeh(10)" onmouseout="rechangeh(10)">
                                     调味品<div style="float: right;">>&nbsp;</div>
        </td>   
      </tr>                       
      </table>
      </div>
      <div id="dhdiv2" >      	   
             <ul id="ul1" onmousemove="changeh(1)"onmouseout="rechangeh(1)" style="FLOAT: right;margin-top:0px;display:none; POSITION:relative;  Z-INDEX:800;">
		      <li id="dhli">
               <div>  
                 <ul id="dhul">
	                <li style="color:#104E8B;width:70px;text-align: right;"><b>超声检测</b></li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>便携式定量光谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>手持式合金分析仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>自动光谱分析仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>碳硫自动分析</li>	                
                 </ul>
                 <ul id="dhul">
	                <li style="width:70px;">&nbsp;</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>透射电子显微镜</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>X射线衍射仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>X荧光光谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>测微光度计</li>	                
                 </ul>
                 <ul id="dhul">
	                <li style="width:70px;">&nbsp;</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>高精密天平能谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>比色计看谱镜</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>光谱试块金相检验 </li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>金相分析仪</li>	                
                 </ul>
                </div>
              </li>
             </ul>
             <ul id="ul2" onmousemove="changeh(2)"onmouseout="rechangeh(2)" style="FLOAT: right;margin-top:0px;display:none; POSITION:relative;  Z-INDEX:800;">
		      <li id="dhli">
               <div>  
                 <ul id="dhul">
	                <li style="color:#104E8B;width:70px;text-align: right;"><b>成分分析</b></li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>便携式定量光谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>手持式合金分析仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>自动光谱分析仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>碳硫自动分析</li>	                
                 </ul>
                 <ul id="dhul">
	                <li style="width:70px;">&nbsp;</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>透射电子显微镜</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>X射线衍射仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>X荧光光谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>测微光度计</li>	                
                 </ul>
                 <ul id="dhul">
	                <li style="width:70px;">&nbsp;</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>高精密天平能谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>比色计看谱镜</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>光谱试块金相检验 </li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>金相分析仪</li>	                
                 </ul>
                </div>
              </li>
             </ul>
             <ul id="ul3" onmousemove="changeh(3)"onmouseout="rechangeh(3)" style="FLOAT: right;margin-top:0px;display:none; POSITION:relative;  Z-INDEX:800;">
		      <li id="dhli">
               <div>  
                 <ul id="dhul">
	                <li style="color:#104E8B;width:85px;text-align: right;"><b>压力管道检测</b></li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>便携式定量光谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>手持式合金分析仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>自动光谱分析仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>碳硫自动分析</li>	                
                 </ul>
                 <ul id="dhul">
	                <li style="width:85px;">&nbsp;</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>透射电子显微镜</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>X射线衍射仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>X荧光光谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>测微光度计</li>	                
                 </ul>
                 <ul id="dhul">
	                <li style="width:85px;">&nbsp;</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>高精密天平能谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>比色计看谱镜</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>光谱试块金相检验 </li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>金相分析仪</li>	                
                 </ul>
                </div>
              </li>
             </ul>
             <ul id="ul4" onmousemove="changeh(4)"onmouseout="rechangeh(4)" style="FLOAT: right;margin-top:0px;display:none; POSITION:relative;  Z-INDEX:800;">
		      <li id="dhli">
               <div>  
                 <ul id="dhul">
	                <li style="color:#104E8B;width:85px;text-align: right;"><b>测量计量仪表</b></li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>便携式定量光谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>手持式合金分析仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>自动光谱分析仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>碳硫自动分析</li>	                
                 </ul>
                 <ul id="dhul">
	                <li style="width:85px;">&nbsp;</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>透射电子显微镜</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>X射线衍射仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>X荧光光谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>测微光度计</li>	                
                 </ul>
                 <ul id="dhul">
	                <li style="width:85px;">&nbsp;</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>高精密天平能谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>比色计看谱镜</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>光谱试块金相检验 </li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>金相分析仪</li>	                
                 </ul>
                </div>
              </li>
             </ul>
             <ul id="ul5" onmousemove="changeh(5)"onmouseout="rechangeh(5)" style="FLOAT: right;margin-top:0px;display:none; POSITION:relative;  Z-INDEX:800;">
		      <li id="dhli">
               <div>  
                 <ul id="dhul">
	                <li style="color:#104E8B;width:70px;text-align: right;"><b>成分分析</b></li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>便携式定量光谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>手持式合金分析仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>自动光谱分析仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>碳硫自动分析</li>	                
                 </ul>
                 <ul id="dhul">
	                <li style="width:70px;">&nbsp;</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>透射电子显微镜</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>X射线衍射仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>X荧光光谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>测微光度计</li>	                
                 </ul>
                 <ul id="dhul">
	                <li style="width:70px;">&nbsp;</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>高精密天平能谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>比色计看谱镜</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>光谱试块金相检验 </li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>金相分析仪</li>	                
                 </ul>
                </div>
              </li>
             </ul>
             <ul id="ul6" onmousemove="changeh(6)"onmouseout="rechangeh(6)" style="FLOAT: right;margin-top:0px;display:none; POSITION:relative;  Z-INDEX:800;">
		      <li id="dhli">
               <div>  
                 <ul id="dhul">
	                <li style="color:#104E8B;width:70px;text-align: right;"><b>成分分析</b></li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>便携式定量光谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>手持式合金分析仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>自动光谱分析仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>碳硫自动分析</li>	                
                 </ul>
                 <ul id="dhul">
	                <li style="width:70px;">&nbsp;</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>透射电子显微镜</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>X射线衍射仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>X荧光光谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>测微光度计</li>	                
                 </ul>
                 <ul id="dhul">
	                <li style="width:70px;">&nbsp;</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>高精密天平能谱仪</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>比色计看谱镜</li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>光谱试块金相检验 </li>
	                <li><img alt="" src="images/home/h15.png"></li>
	                <li>金相分析仪</li>	                
                 </ul>
                </div>
              </li>
             </ul>
        </div>	
	  </div>     		         
  </body>
</html>
