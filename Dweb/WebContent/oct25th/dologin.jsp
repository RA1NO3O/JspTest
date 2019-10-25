<%@ page language="java" import="java.util.*,java.net.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//Serverlet Part
try{
    Cookie[] cookies = request.getCookies();
    if(cookies != null){
        for(int i = 0; i < cookies.length; i++){
            if(cookies[i].getName().equals("username")){
                String username=URLDecoder.decode(cookies[i].getValue(), "utf-8");
                request.setAttribute("username",username);
            }
            if(cookies[i].getName().equals("password")){
                String password= URLDecoder.decode(cookies[i].getValue(), "utf-8");
                request.setAttribute("password",password);
            }
        }
    }
}catch(Exception e){
    e.printStackTrace();
}

String[] isUseCookies=request.getParameterValues("isUseCookie");
String username = request.getParameter("username");
String password = request.getParameter("password");
Cookie uname=new Cookie("UserName",username);
Cookie pwd=new Cookie("Password",password);

String a1=request.getParameter("isUseCookie");
if("uname".equals(a1)&&username.equals("张三")&&password.equals("123456")){
  try{
    Cookie cookie1 = new Cookie("username", username);
    Cookie cookie2 = new Cookie("password", URLEncoder.encode(password,"utf-8"));
    cookie1.setMaxAge(60*60*24*10);	//设置10天的Cookie寿命  
    cookie2.setMaxAge(60*60*24*10);	//设置10天的Cookie寿命
    response.addCookie(cookie1);
    response.addCookie(cookie2);
  }catch(Exception ex){
    ex.printStackTrace();
  }
}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dologin.jsp' starting page</title>
    
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
    <h1>登录成功</h1>
    <hr>
    <br>
    <br>
    <br>
    
    <a href="oct25th/users.jsp" target="_blank">查看用户信息</a>
    
  </body>
</html>