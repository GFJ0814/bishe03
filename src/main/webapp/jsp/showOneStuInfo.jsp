<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/10
  Time: 18:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        #i_container{
            width: 1180px;
            height:600px;
            margin: 0 auto;
            /*background: red;*/
            position: relative;
        }
        #i_header{
            width: 100%;
            height:50px;
            border:1px solid #000000;
        }
        #i_parent{
            width: 100%;
            height:50px;
            position: absolute;
            left:50px;
            top:0px;
        }
        #i_parent h3{
            position: absolute;
            left:0px;
            line-height: 50px;
        }
        #i_font{
            position: absolute;
            right:100px;
            top:0px;
            line-height: 50px;
        }
        #i_font span{
            margin-left: 25px;
        }
        #i_left{
            width: 30%;
            height:550px;
            /*background: orange;*/
            border:1px solid #000000;
            position: absolute;
            left:0px;
            top:50px;
            opacity:0.8;
        }
        #i_info{
            width: 100%;
            height:150px;
            border:1px solid #000000;
            /*background:red;*/
        }
        #i_info img{
            position: absolute;
            left:100px;
            top:20px;
        }
        #i_say{
            position: absolute;
            left:250px;
            top:20px;

        }
        #i_say p{
            margin-top: 20px;
        }
        #i_right{
            width: 70%;
            height:550px;
            background:paleturquoise;
            float: left;
            position: absolute;
            right:0px;
            top:50px;
            opacity:0.8
        }
        #i_right img{
            position: absolute;
            left:200px;
            top:100px;
        }
        #i_contact{
            position: absolute;
            left:420px;
            top:100px;
        }
        #i_update{
            width: 50px;
            position: absolute;
            left:320px;
            top:-30px;
        }
        #i_save{
            width: 50px;
            position: absolute;
            left:320px;
            top:350px;
        }
        input{
            display: none;
        }
        table{
            border-collapse: collapse;
            margin-top: 50px;
            margin-left: 50px;
        }
        td{
            width: 250px;
            text-align: center;
        }
    </style>
</head>
<body>
<div id="i_container">
    <div id="i_header">
        <img src="../img/1.jpg" style="width:50px;height:50px">
        <div id="i_parent">
            <h3>组织社团管理系统</h3>
            <div id="i_font">
                <span><a href="#">通讯录</a></span>
                <span><a href="#">通知</a></span>
                <span><a href="/user/logOut">退出</a></span>
            </div>

        </div>

    </div>
    <div id="i_left">
        <div id="i_info">
            <img src="../img/2.jpg" style="width:100px;height:100px">
            <div id="i_say">
                <p>早上好</p>
                <p>${student.stuName}</p>
            </div>
        </div>
        <table border="1">
            <thead>
            <th>个人信息管理</th>
            </thead>
            <tbody>
            <tr><td><a href="/stu/findOneStuByUserName">查看个人信息</a></td></tr>
            <tr><td><a href="#">修改密码</a> </td></tr>
            </tbody>
        </table>
        <table border="1">
            <thead>
            <th>排班管理</th>
            </thead>
            <tbody>
            <tr><td><a href="#">我的课表</a></td></tr>
            <tr><td><a href="#">申请调班</a></td></tr>
            </tbody>
        </table>
        <table border="1">
            <thead>
            <th>日常管理</th>
            </thead>
            <tbody>
            <tr><td><a href="#">资讯管理</a></td></tr></tr>
            <tr><td><a href="#">资产管理</a></td></tr>
            <tr><td><a href="#">申请管理</a></td></tr>
            </tbody>
        </table>
    </div>

    <div id="i_right">
        <c:choose>
            <c:when test="${student.stuPhoto!=null}">
                <img src="${pageContext.request.contextPath}${student.stuPhoto}" style="width:80px;height:120px">
            </c:when>
        </c:choose>

        <div id="i_contact">
            <button id="i_update">修改</button>
            <a href="../jsp/addOrUpdateStuInfo.jsp"><input type="button">无样式修改</a>
            <form id="i_form" action="" method="post">
                姓名：<input type="text" id="uname" name="" value="${student.stuName}" ><span>${student.stuName}</span><br><br>
                学号：<input type="text" id="num" name="" value="${student.stuNum}"><span>${student.stuNum}</span><br><br>
                学院：<%--<select type="text" id="colleage" name="" value="${student.stuCollege}">
                            <option value=""></option>
                            <option value=""></option>
                            <option value=""></option>
                      </select>--%>
                     <span>${student.stuCollege}</span><br><br>
                专业：<input type="text" id="major" value="${student.stuProfession}"><span>${student.stuProfession}</span><br><br>
                邮箱：<input type="text" id="mail" value="${student.stuEmail}"><span>${student.stuEmail}</span><br><br>
                电话：<input type="text" id="phone" value="${student.stuPhone}"><span>${student.stuPhone}</span><br><br>
                QQ号：<input type="text" id="qq" value="${student.stuQQ}"><span>1724404960</span><br><br>
                籍贯：<input type="text" id="province" value="陕西"><span>陕西</span><br><br>
                自我介绍：<input type="text" id="introduce" value="萌妹纸"><span>萌妹纸</span><br><br>
                <input type="submit" id="i_save">保存</input>
            </form>

        </div>
    </div>
</div>
<script src="../js/jquery-1.12.4.js"></script>
<script>
    $('#i_update').on('click',function () {
        $('#uname').css("display","inline-block");
        $('#uname').next().html('');
        $('#num').css("display","inline-block");
        $('#num').next().html('');
        $('#colleage').css("display","inline-block");
        $('#colleage').next().html('');
        $('#major').css("display","inline-block");
        $('#major').next().html('');
        $('#mail').css("display","inline-block");
        $('#mail').next().html('');
        $('#phone').css("display","inline-block");
        $('#phone').next().html('');
        $('#qq').css("display","inline-block");
        $('#qq').next().html('');
        $('#province').css("display","inline-block");
        $('#province').next().html('');
        $('#introduce').css("display","inline-block");
        $('#introduce').next().html('');

    })
</script>
</body>
</html>
