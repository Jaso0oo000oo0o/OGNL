<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/10/13
  Time: 下午2:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<h1>LOGIN IN</h1>
<form action="login.action" method="post">
    user:
    <input type="text" name="username">
    <br>
    pwd:
    <input type="password" name="password">
    <br>
    <br>
    <br>
    <input type="submit" value="login">
    <input type="reset" value="reset">
</form>
</body>
</html>
