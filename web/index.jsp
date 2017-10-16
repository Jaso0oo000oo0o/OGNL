<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/10/13
  Time: 上午9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <a href="/upload.jsp">upload(单个)</a>
  <a href="/uploads.jsp">upload(多个)</a>
  <%--显示错误信息--%>
  <s:actionerror></s:actionerror>
  <s:fielderror></s:fielderror>
  <hr>
  <a href="download.action?fileName=a5.jpg">download1</a>
  <a href="download.action?fileName=JAVA编程思想第四版.pdf">download2</a>
  <hr>
  <a href="/login.jsp">login</a>
  </body>
</html>
