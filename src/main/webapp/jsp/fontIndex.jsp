<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/9
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>前端的首页</title>
</head>
<body>

<c:choose>
    <c:when test="${sessionScope.user!=null&& sessionScope.user.accept!='1' }">
        <c:out value="欢迎您，${sessionScope.user.userName}"></c:out>
        <span style="width: 20px"></span>
        <a href="/user/logOut">注销</a>
    </c:when>
    <c:otherwise>
        <a href="../index.jsp">登录</a>|
        <a href="/register.jsp">注册</a>
    </c:otherwise>
</c:choose>
<div style="height: 20px"></div>
<a href="#">首页</a>
<div style="height: 20px"></div>
<a href="#">我要报名</a>
<div style="height: 20px"></div>
<a href="#">一览无余</a>
<div style="height: 20px"></div>
<a href="#">社区</a>
<div style="height: 20px"></div>
<a href="#">帮助</a>
<div style="height: 10px"></div>
</body>
</html>
