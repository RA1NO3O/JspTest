<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>录入表单信息</title>
</head>
<body>
<form action="do_register.jsp" method="post">
用户名<input type="text" name="userName"/><br/>
技能:
<input type="checkbox" name="skills"  value="java"/>java
<input type="checkbox" name="skills"  value="python"/>python
<input type="checkbox" name="skills"  value="ruby"/>ruby
<input type="checkbox" name="skills"  value="go"/>go
<br/>
<input type="submit" value="提交"/>
<input type="reset" value="重置"/>
</form>
</body>
</html>