<%@page import="com.jredu.ssm.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<User> list =(List)request.getAttribute("userList");
%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
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
        <%for(int i=list.size()-1;i>=0;i--){
        	User user = list.get(i);
        %>
        <h2>        	
         	编号:<%=user.getId()%>
        	姓名:<%=user.getUserName()%>
        	年龄:<%=user.getAge() %>
        	性别:<%=user.getSex()=='1'?"男":"女" %>
         </h2>
        <%}%>
  </body>
</html>







