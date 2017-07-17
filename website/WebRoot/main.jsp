<%@page import="com.jredu.ssm.entity.ImgInfo"%>
<%@ page language="java" import="java.util.*" 
pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<ImgInfo> list =(List)request.getAttribute("imgList");
if(list==null){
	response.sendRedirect("img/getImgs.action");
	return;
}
%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'main.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--链接外部样式 -->
	<link rel="stylesheet" type="text/css" href="css/main.css">
  </head>
<body>
<a name="top"></a>
  <header>
      <div class="logo">
          <img src="image/logo.png" height="45" width="148"/>
      </div>
      <div class="nav">
          <ul>
              <li>人才</li>
              <li>动态</li>
              <li>公司</li>
              <li>服务</li>
              <li>案例</li>
              <li>首页</li>
          </ul>
      </div>
      <div class="headerPro">产品</div>
  </header>
  <aside class="aside">
      <ul>
          <li>
              <a href="#top">
               <img src="image/rtbar_liicon1.png" alt="">
              </a>
          </li>
          <li>
              <img src="image/rtbar_liicon2.png" alt="">
          </li>
          <li>
              <img src="image/rtbar_liicon3.png" alt="">
          </li>
          <li>
              <a href="" id="code">
                  <img src="image/rtbar_liicon4.png" alt="">
                  <div class="codeDiv">
                      <img id="bg" src="image/rtbar_liicon4.png" alt="">
                  </div>
              </a>
          </li>
      </ul>
  </aside>
  <section class="videoStyle">
   <video autoplay>
       <source src="mp4/service_banner.mp4" type="video/mp4">
   </video>
      <div class="cover1"></div>
  </section>
  <section class="title">
      <div>
          <h1>最新案例</h1>
      </div>
  </section>
  <section class="success">
      <ul>
          <li>
              <img src="<%=(list.get(0)).getImgUrl()%>" alt="">
              <div class="cover">
                  <h2>星猴网</h2>
                  <p> 汽车后市场B2C+O2O电商综合服务平台</p>
              </div>
          </li>
          <li>
              <img src="<%=(list.get(1)).getImgUrl()%>" alt="">
              <div class="cover"></div>
          </li>
          <li>
              <img src="<%=(list.get(2)).getImgUrl()%>" alt="">
              <div class="cover"></div>
          </li>
      </ul>
  </section>
  <section class="desc">
      <ul>
          <li>
              <h2>图片说明</h2>
          </li>
          <li>
              <h2>图片说明</h2>
          </li>
          <li>
              <h2>图片说明</h2>
          </li>
      </ul>
  </section>
  <section class="success">
      <ul>
          <li>
              <img src="<%=(list.get(3)).getImgUrl()%>" alt="">
              <div class="cover">
                  <h2>星猴网</h2>
                  <p> 汽车后市场B2C+O2O电商综合服务平台</p>
              </div>
          </li>
          <li>
              <img src="<%=(list.get(4)).getImgUrl()%>" alt="">
              <div class="cover"></div>
          </li>
          <li>
              <img src="<%=(list.get(5)).getImgUrl()%>" alt="">
              <div class="cover"></div>
          </li>
      </ul>
  </section>
  <section class="desc">
      <ul>
          <li>
              <h2>图片说明</h2>
          </li>
          <li>
              <h2>图片说明</h2>
          </li>
          <li>
              <h2>图片说明</h2>
          </li>
      </ul>
  </section>
  <section class="success">
      <ul>
          <li>
              <img src="<%=(list.get(6)).getImgUrl()%>" alt="">
              <div class="cover">
                  <h2>星猴网</h2>
                  <p> 汽车后市场B2C+O2O电商综合服务平台</p>
              </div>
          </li>
          <li>
              <img src="<%=(list.get(7)).getImgUrl()%>" alt="">
              <div class="cover"></div>
          </li>
          <li>
              <img src="<%=(list.get(8)).getImgUrl()%>" alt="">
              <div class="cover"></div>
          </li>
      </ul>
  </section>
  <section class="desc">
      <ul>
          <li>
              <h2>图片说明</h2>
          </li>
          <li>
              <h2>图片说明</h2>
          </li>
          <li>
              <h2>图片说明</h2>
          </li>
      </ul>
  </section>
  <section class="success">
      <ul>
          <li>
              <img src="<%=(list.get(9)).getImgUrl()%>" alt="">
              <div class="cover">
                  <h2>星猴网</h2>
                  <p> 汽车后市场B2C+O2O电商综合服务平台</p>
              </div>
          </li>
          <li>
              <img src="<%=(list.get(10)).getImgUrl()%>" alt="">
              <div class="cover"></div>
          </li>
          <li>
              <img src="<%=(list.get(11)).getImgUrl()%>" alt="">
              <div class="cover"></div>
          </li>
      </ul>
  </section>
  <section class="desc">
      <ul>
          <li>
              <h2>图片说明</h2>
          </li>
          <li>
              <h2>图片说明</h2>
          </li>
          <li>
              <h2>图片说明</h2>
          </li>
      </ul>
  </section>
  <footer class="footerStyle">
       
  </footer>
</body>
</html>
