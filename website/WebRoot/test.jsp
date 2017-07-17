<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'test.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <form action="user/check.action" method="post">
     	 姓名:<input type="text" name="name"> <br>
     	 密码:<input type="text" name="pwd">
     	 <input type="submit">
     </form>
     <form action="user/userInfo.action" method="post">
     	<table>
     		<tr>
     			<td>姓名</td>
     			<td><input type="text" name="userName"> </td>
     		</tr>
     		<tr>
     			<td>密码</td>
     			<td><input type="password" name="userPwd"> </td>
     		</tr>
     		<tr>
     			<td>年龄</td>
     			<td><input type="text" name="age"> </td>
     		</tr>
     		<tr>
     			<td>性别</td>
     			<td><input type="text" name="sex"> </td>
     		</tr>
     		<tr>
     			<td>
     				<input type="submit">
     			</td>
     			<td>
     				<input type="reset">
     			</td>
     		</tr>
     	</table>
     </form>
  </body>
</html>










