<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/6
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>组织部门管理 </title>
</head>
<body>
<h2>展示所有</h2>
<table border="1">
    <tr>
        <td>选项</td>
        <td>图标</td>
        <td>组织名称</td>
        <td>所属类别</td>
        <td>指导老师</td>
        <td>负责人</td>
        <td>操作</td>
    </tr>
    <c:forEach var="org" items="${orgList}">
        <tr>
            <td><input type="checkbox" name="orgCheck"></td>
            <td><img src="${pageContext.request.contextPath}${org.orgLogo}" width="100px" height="100px"></td>
            <td>${org.orgName}</td>
            <td><c:choose>
                    <c:when test="${org.orgSuperId==0}">组织或社团</c:when>
                    <c:otherwise>部门</c:otherwise>
                 </c:choose>
            </td>
            <td>${org.orgAdminTeacher}</td>
            <td>${org.orgAdmin}</td>
            <td>
                <a href="#">查看详细</a>|
                <a href="/organization/toUpdateOneByOrgId?orgId=${org.orgId}">修改</a>|
                <a href="/organization/delOrgInfoById?orgId=${org.orgId}">删除 </a>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="7">
            <a href="../jsp/addOrganization.jsp"><input type="button" value="新增"></a>
        </td>
    </tr>
</table>
</body>
</html>
