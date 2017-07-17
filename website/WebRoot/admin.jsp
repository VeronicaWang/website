<%@page import="com.jredu.ssm.entity.ImgInfo"%>
<%@ page language="java" import="java.util.*" 
pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<ImgInfo> list = (List)request.getAttribute("imgList");
if(list==null){
	response.sendRedirect("img/getImgs1.action");
	return;
}
%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'admin.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style>
        th{
        	background: gray;
        	color:white;
        }
    	td{
    		text-align:center;
    	}
    </style>
  </head>
  <body>
  <center>
  		 
  		<table border="1" cellspacing="0" style="width:100%">
  		<caption><h1>图片信息管理</h1></caption>
  			<tr>
  				<th>编号</th>
  				<th>位置</th>
  				<th>板块</th>
  				<th>图片路径</th>
  				<th>图片说明</th>
  				<th>上传日期</th>
  				<th>修改日期</th>
  				<th>上传图片</th>
  		    </tr>
	  		<%for(int i=0;i<list.size();i++){
	  			ImgInfo imgInfo = list.get(i);
	  		%>
	   		 <tr>
	   		 	<td><%=imgInfo.getId()%></td>
	   		 	<td><%=imgInfo.getDesc() %></td>
	   		 	<td><%=imgInfo.getPart() %></td>
	   		 	<td>
	   		 		<a href="<%=imgInfo.getImgUrl()%>" target="_block">
	   		 			<%=imgInfo.getImgUrl() %>
	   		 		</a>
	   		 	</td>
	   		 	<td><%=imgInfo.getImgDesc() %></td>
	   		 	<td><%=imgInfo.getUploadDate() %></td>
	   		 	<td><%=imgInfo.getUpdateDate() %></td>
	   		 	<td>
	   		 		<form action="img/upload.action" method="post"  
	   		 		       enctype="multipart/form-data">
	   		 		    <input type="hidden" name="id" value="<%=imgInfo.getId()%>">   
	   		 			<input type="file"   name="file">
	   		 			<input type="text"   name="imgDesc">
	   		 			<input type="submit">
	   		 		</form>
	   		 	</td>
	   		 </tr>
	   		<%}%>
  		</table>
   	</center>
  </body>
</html>









