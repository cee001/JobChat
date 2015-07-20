
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="Decoder.BASE64Decoder"%>
<%@page import="java.io.*,sun.misc.*,java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'upfile1.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<script type="text/javascript" src="js/jquery.js"></script>

  </head>
  
  <body onload="showuimg()">
  
	<%	
 
		//String path ="F://JAVA/heyou/attached/";
		String path = "/home/default/sunhome/data/";

		long savePicName =new Date().getTime();
		
		String file_src ="IMG"+ path + savePicName + "_src.jpg";    //保存原图
		String filename162 =path + savePicName + "_162.jpg";  //保存162
		
		String uimg=savePicName + "_162.jpg";		
        request.setAttribute("uimg",uimg);         
        System.out.println(uimg); 
		
		String pic=request.getParameter("pic");
		String pic1=request.getParameter("pic1");
		
		if(!pic.equals("")&&pic!=null){
			//原图
			File file = new File(file_src);
			FileOutputStream fout = null;
			fout = new FileOutputStream(file);
			fout.write(new BASE64Decoder().decodeBuffer(pic));
			fout.close();
		}
		
		//图1
		File file1 = new File(filename162);
		FileOutputStream fout1 = null;
		fout1 = new FileOutputStream(file1);
		fout1.write(new BASE64Decoder().decodeBuffer(pic1));
		fout1.close();
		String picUrl =path+savePicName;
		// Downloads By http://www.veryhuo.com
		
        out.println("{\"status\":\""+uimg+"\",\"picUrl\":\""+picUrl+"\"}");
		//System.out.println("{\"status\":1,\""+uimg+"\"}"); 
	    System.out.println("{\"status\":\""+uimg+"\",\"picUrl\":\""+picUrl+"\"}");
	%>

    <div id="divpp"></div>
  </body>
</html>
