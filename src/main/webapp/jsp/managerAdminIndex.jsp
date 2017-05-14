<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/6
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>工作人员登录首页</title>
</head>
<body>
<h1>欢迎您，${user.userName}</h1>
<h2>个人信息管理</h2>
<p>
    <a href="/stu/findOneStuByUserName">查看个人信息</a><br>
    <a href="#">修改个人信息</a><br>
</p>
<div style="height: 20px"></div>
<h2>排班管理</h2>
<p>
    <a href="#">值班表管理</a><br>
    <a href="#">调班审批</a><br>
</p>
<div style="height: 20px"></div>
<h2>日常管理</h2>
<p>
    <a href="#">资讯管理</a><br>
    <a href="#">资产管理</a><br>
    <a href="#">我的申请</a><br>
    <a href="#">我的审批</a><br>
</p>
<div style="height: 20px"></div>
<h2>人事管理</h2>
<p>
    <a href="#">部门管理</a><br>
    <a href="#">招新管理</a><br>
    <a href="#">人员管理</a><br>
</p>
<div style="height: 20px"></div>
<p>
    <a href="../../jsp/superAdminIndex.jsp">超级管理员</a>
</p>

</body>
</html>
