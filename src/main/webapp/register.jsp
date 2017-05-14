<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/5
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        body{
            background: url('img/bg.jpg');
        }
        #regist_wrapper{
            width: 800px;
            height:600px;
            margin: -150px auto;
            position:relative;
        }
        #re_content{
            width: 300px;
            height:300px;
            /*background: #8AC763;*/
            position: absolute;
            left:50%;
            top:50%;
            margin-left: -150px;
            margin-top: -150px;
        }
        #uname{
            background:yellowgreen;
        }
        #pass{
            background:pink;
        }
        #repass{
            background:orange;
        }
        #email{
            background:grey;
        }
    </style>
</head>
<body>
<div id="regist_wrapper">
    <div id="re_content">
        <h3>注册用户信息</h3>
        <form action="/user/register" method="post">
        用户名：<br><input type="text" id="uname"  name="userName"><br><br>
        密码：<br><input type="password" id="pass" name="pwd"><br><br>
        确认密码：<br><input type="password" id="repass" name="rePwd"><br><br>
        邮箱：<br><input type="email" id="email"><br>
        <h4>是否加入组织或社团</h4>
        <input type="radio" name="accept" value="1" checked/>是
        <input type="radio" name="accept"  value="0"/>否<br><br>
        姓名：<br><input type="text" name="stuName"><br><br>
        学号：<br><input type="text" name="stuNum"><br><br>
            <input type="submit" value="提交">
            <input type="reset" value="重置">
            <a href="/jsp/fontIndex.jsp"><input type="button" value="返回"></a>
        </form>
    </div>
</div>
</body>
</html>
