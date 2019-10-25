<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <body bgcolor="cyan"><font size=5>
        <form action="" method="POST" name="form">
            <input type="text" name="num">
            <input type="submit" value="enter" name="submit">
        </form>
    <%
        String strContent=request.getParameter("num");
        double number=0,r=0;
        if(strContent==null)
        {
            strContent="";
        }
        try{
            number=Double.parseDouble(strContent);
            if(number>=0){
                r=Math.sqrt(number);
                out.print("<br>"+String.valueOf(number)+"的平方根:");
                out.print("<br>"+String.valueOf(r));
            }else{
                out.print("<br>"+"请输入一个正数");
            }
        }catch(NumberFormatException e){
            out.print("<br>"+"请输入数字字符");
        }
    %>
    </font></body>
</html>