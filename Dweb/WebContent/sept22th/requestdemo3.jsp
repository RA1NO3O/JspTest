<%@ page contentType="text/html; charset=UTF-8" 
		 pageEncoding="UTF-8"
%>
<html>
    <body bgcolor="white"><font size=4>
        <p>获取文本框提交的信息:
        <%String strContent=request.getParameter("boy");%>
        <%=strContent%>
        <p>获取按钮的名字:
                    <%String strButtonName=request.getParameter("submit");
                    byte c[]=strButtonName.getBytes("UTF-8");
                    strButtonName=new String(c);%>
                    <%=strButtonName%>
    </font></body>
</html>