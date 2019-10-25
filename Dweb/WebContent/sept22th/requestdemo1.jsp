<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
    <body bgcolor="white"><font size=4>
        <p>获取文本框提交的信息:
            <%String strContent=request.getParameter("boy");%>
            <%=strContent%>
        <p>获取按钮的名字:
            <%String strButtonName=request.getParameter("submit");%>
            <%=strButtonName%>
</font>
</body>
</html>