<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/10/13
  Time: 下午5:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>多文件上传</title>
</head>
<body>
<form action="multipleUpload.action" method="post" enctype="multipart/form-data">
    select:
    <input type="file" name="file">
    <input type="file" name="file">
    <input type="file" name="file">
    <br>
    <input type="submit" value="UP ALL">
</form>

</body>
</html>
