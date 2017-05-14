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
        #login_wrapper{
            width: 800px;
            height:600px;
            margin: -100px auto;
            position:relative;
        }
        #right{
            width: 300px;
            height:300px;
            /*background: #8AC763;*/
            position: absolute;
            left:50%;
            top:50%;
            margin-left: -100px;
            margin-top: -100px;
        }
    </style>
</head>
<body>
<div id="login_wrapper">
    <%--<div id="left" position="absolute" style="top: 200px;"><img src="img/1.jpg" style="width:200px;height:200px"></div>--%>
    <div id="right">
        <h3>组织社团管理系统</h3>
        <form action="/user/login" method="post">
            ${result}
            账号：<input type="text" id="uname" name="userName"><br><br>
            密码：<input type="password" id="pass" name="userPwd" ><br>
            <div style="margin-top: 20px">
                <input type="checkbox" id="rem">
                记住密码
                <a href="#"><span id="forget" style="margin-left: 60px">
                        忘记密码？
                    </span></a>
            </div>
            <br>
            <input type="submit" value="登录">
            <button style="margin-left: 130px"><a href="../register.jsp">注册</a></button>
        </form>
    </div>
</div>
</body>
</html>
