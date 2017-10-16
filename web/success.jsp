<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/10/13
  Time: 上午9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成功</title>
</head>
<body>
<h1>Success!</h1>

<h3>user:${username}</h3>
<h3>pwd:${password}</h3>
<hr>
<h2>@取Action属性, 直接按属性名获取</h2>
user:<s:property value="username"/>

<h2>@取Request中的属性集合的某个key</h2>
<s:property value="#attr.request_username"/>

<h2>@取application中的map的某个key值, 需要加application的前缀</h2>
<s:property value="#application.application_username"/>

<h2>@取session中的map的某个key值, 需要加session的前缀</h2>
<s:property value="#session.session_username"/>

<h2>@取parameters中的map的某个key值, 需要加parameters的前缀</h2>
<s:property value="#parameters.username"/>

<h2>@先通过set标签更改username变量的值, 在调用proerty获取一下他的值
    没有定义scope时,磨人认为request域
</h2>
<s:set var="username" value="'aaa'"/>
<s:property value="#username"/>

<h2>@通过set标签在session域中添加一个username属性</h2>
<s:set var="username" value="'bbb'" scope="session"/>
<s:property value="#session.username"/>

<h2>@通过set标签在applicaiton域添加一个username属性, 取值用username;
    如果value的值没有用单引号包裹,则默认是一个变量,去action属性集合查找有没有定义该变量.
</h2>
<s:set var="username" value="username" scope="application"/>
<s:property value="#application.username"/>

<hr>
<h2>取Request  session  application 中的同名属性</h2>
<s:property value="#attr.name"/>
<br>
<s:property value="#session.name"/>
<br>
<s:property value="#application.name"/>

<hr>
<h2># 构建map对象</h2>
<s:set name="foobar" value="#{'foo1':'eat','foo2':'play','foor3':'sleep'}"/>
<s:property value="#foobar['foo1']"/>

<hr>
<h2>%{}将大括号中的内容认为是ognl表达式</h2>
<s:property value="%{name}"/>
<hr>
<h2>输出一个list集合</h2>
<s:property value="{'eat','sleep','play'}"/>
</body>
</html>
