<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/6
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增组织或部门</title>
</head>
<body>
<div align="center">
    <c:set var="org" value="${organization}"></c:set>
    <c:choose>
        <c:when test="${org==null}">
            <c:set var="actionLink" value="/organization/addOrgInfo"></c:set>
        </c:when>
        <c:when test="${org!=null}">
            <c:set var="actionLink" value="/organization/doUpdateOneOrgInfo?orgId=${org.orgId}"></c:set>
        </c:when>
    </c:choose>
    <h2>新增组织 </h2>
    <form action="${actionLink}" method="post"  enctype="multipart/form-data">
        <table border="1">
            <tr>
                <td>组织名称</td>
                <td>
                    <input type="text" name="orgName" value="${org.orgName}">
                </td>
            </tr>
            <tr>
                <td>组织负责人</td>
                <td><input type="text" name="orgAdmin" value="${org.orgAdmin}"></td>
            </tr>
            <tr>
                <td>组织logo</td>
                <td><input type="file" name="file" value="${pageContext.request.contextPath}${org.orgLogo}"></td>
            </tr>
            <tr>
                <td>指导老师</td>
                <td><input type="text" name="orgAdminTeacher" value="${org.orgAdminTeacher}"></td>
            </tr>
            <tr>
                <td>联系电话</td>
                <td><input type="text" name="orgPhone" value="${org.orgPhone}"></td>
            </tr>
            <tr>
                <td>描述</td>
                <td><textarea name="orgDesciption" cols="35" rows="5" >${org.orgDesciption}</textarea></td>
            </tr>
            <tr>
                <td colspan="2">
                           <input type="submit" value="提交" >&nbsp;&nbsp;&nbsp;&nbsp;
                           <input type="reset" value="重置" >&nbsp;&nbsp;&nbsp;&nbsp;
                           <a href="/jsp/superAdminIndex.jsp"><input type="button" value="返回" ></a>&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </form>


</div>
</body>
</html>
