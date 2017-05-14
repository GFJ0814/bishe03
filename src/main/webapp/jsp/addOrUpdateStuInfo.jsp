<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/9
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>完善学生信息</title>
</head>
<body>
<div align="center">
    <h2>完善学生信息</h2>
    <div style="height: 10px"></div>
    <c:set var="stu" value="${sessionScope.stuInfo}"></c:set>
    <div id="form">
        <form action="/stu/addOrUpdateStuInfo" method="post" enctype="multipart/form-data">
            <table border="1">
                <tr>
                    <td>姓名</td><td><input type="text" name="stuName" <c:if test="${stu!=null}"> value="${stu.stuName}"</c:if>></td>
                </tr>
                <tr>
                    <td>照片</td><td><input type="file" name="file"></td>
                </tr>
                <tr>
                    <td>学号</td><td><input type="text" name="stuNum" <c:if test="${stu!=null}"> value="${stu.stuNum}"</c:if>></td>
                </tr>
                <tr>
                    <td>年龄</td><td><input type="text" name="stuAge" <c:if test="${stu!=null}"> value="${stu.stuAge}"</c:if>></td>
                </tr>
                <tr>
                    <td>性别</td>
                    <td>
                        <input type="radio" name="stuSex" value="男" <c:if test="${stu.stuSex=='男'}"> checked </c:if>/>男&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="stuSex" value="女" <c:if test="${stu.stuSex=='女'}"> checked </c:if>/>女
                    </td>
                </tr>
                <tr>
                    <td>学院</td>
                    <td>
                        <select name="stuCollege">
                            <option value="">-请选择-</option>
                            <option value="信息与计算机工程学院">信息与计算机工程学院</option>
                            <option value="机电学院">机电学院</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>专业</td>
                        <td>
                            <select name="stuProfession">
                                <option vaue="计算机科学与技术">计算机科学与技术</option>
                                <option value="软件工程">软件工程</option>
                            </select>
                        </td>
                </tr>
                <tr>
                    <td>邮箱</td><td><input type="text" name="stuEmail" <c:if test="${stu!=null}"> value="${stu.stuEmail}"</c:if>></td>
                </tr>
                <tr>
                    <td>电话</td><td><input type="text" name="stuPhone"  <c:if test="${stu!=null}"> value="${stu.stuPhone}"</c:if>></td>
                </tr>
                <tr>
                    <td>QQ</td><td><input type="text" name="stuQQ"  <c:if test="${stu!=null}"> value="${stu.stuQQ}"</c:if>></td>
                </tr>
                <tr>
                    <td>微信</td><td><input type="text" name="stuWeChat"  <c:if test="${stu!=null}"> value="${stu.stuWeChat}"</c:if>></td>
                </tr>
                <tr colspan="2">
                    <td>  <input type="submit" value="提交">&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        <input type="reset" value="重置">&nbsp;&nbsp;&nbsp;
                        <input type="button" value="返回">
                    </td>
                </tr>

            </table>
        </form>
    </div>
</div>
</body>
</html>
