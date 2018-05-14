<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
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
    &lt;%&ndash;<div id="left" position="absolute" style="top: 200px;"><img src="img/1.jpg" style="width:200px;height:200px"></div>&ndash;%&gt;
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
--%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>登录页面</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="../assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="../assets/css/font-awesome.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body style="background-image:url(../assets/img/bg.jpg);">
<div class="container">
    <div class="row text-center " style="padding-top:100px;">
        <div class="col-md-12">
            <h2 class="form-heading">助学贷款管理系统</h2>
        </div>
    </div>
    <div class="row ">

        <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">

            <div class="panel-body">
                <form role="form"  action="/user/login" method="post">
                    <hr />
                    <h5>输入账号信息登录</h5>
                    <h4>${result}</h4>
                    <br />
                    <div class="form-group input-group">
                        <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                        <input type="text" class="form-control" placeholder="用户名 " name="userName" />
                    </div>
                    <div class="form-group input-group">
                        <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                        <input type="password" class="form-control"  placeholder="密码"  name="userPwd" />
                    </div>
                    <div class="form-group">

                                            <span class="pull-right">
                                                   <a href="../html/index.html" >忘记密码? </a>
                                            </span>
                    </div>

                    <button type="submit" class="btn btn-success ">登录</button>
                    <hr />
                    还没注册 ? <a href="../jsp/register.jsp" >点击这里</a> 或回到 <a href="../jsp/fontIndex.jsp">首页</a>
                </form>
            </div>

        </div>


    </div>
</div>

</body>
</html>

