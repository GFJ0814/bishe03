<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/5
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
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
</html>--%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>注册页面</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body style="background-image:url(assets/img/bg.jpg);">
<div class="container">
    <br/>
    <br/>
    <div class="row ">

        <div class="col-md-8" >

                    <div class="col-xs-12 col-md-offset-3">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <h3 align="center">注册用户信息</h3>
                            </div>
                            <div class="panel-body">
                                <form role="form" action="/user/register" method="post">
                                    <div class="form-group">
                                        <label>账号</label>
                                        <input class="form-control" type="text"  name="userName">
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group">
                                        <label>密码</label>
                                        <input class="form-control" type="password" name="pwd">
                                        <p class="help-block"></p>
                                    </div>
                                    <div class="form-group">
                                        <label>确认密码 </label>
                                        <input class="form-control" type="password" name="rePwd">
                                    </div>
                                    <div class="form-group">
                                        <label class="font">是否已加入社团或组织 </label>
                                        <input type="radio" name="accept" value="1">是
                                        <input type="radio" name="accept" value="0" checked="true">否
                                    </div>
                                    <div id="isAccept">
                                        <div class="form-group" >
                                            <label>学号</label>
                                            <input class="form-control" type="text"  name="stuName">
                                            <p class="help-block"></p>
                                        </div>
                                        <div class="form-group">
                                            <label>姓名</label>
                                            <input class="form-control" type="text" name="stuNum">
                                            <p class="help-block"></p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-danger">注册</button>
                                        <a href="index.jsp" role="button" class="btn btn-primary">返回</a>
                                    </div>
                                </form>
                            </div>
                            <br>
            </div>
        </div>
    </div>
</div>

</div>


</div>
</div>

<!-- /. FOOTER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<!-- <script src="assets/js/bootstrap.js"></script>
METISMENU SCRIPTS
<script src="assets/js/jquery.metisMenu.js"></script>
CUSTOM SCRIPTS
<script src="assets/js/custom.js"></script> -->
<script type="text/javascript">
    $(document).ready(function(){
       $("div#isAccept").hide();
        $(":radio").click(function(){
            if($(this).val()==1){
                $("div#isAccept").show();
            }else{
                $("div#isAccept").hide();
            }
        });
    });
</script>


</body>
</html>

