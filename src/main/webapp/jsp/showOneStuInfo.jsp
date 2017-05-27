<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/10
  Time: 18:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<!DOCTYPE html>
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
                学院：&lt;%&ndash;<select type="text" id="colleage" name="" value="${student.stuCollege}">
                            <option value=""></option>
                            <option value=""></option>
                            <option value=""></option>
                      </select>&ndash;%&gt;
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
</html>--%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>个人信息</title>


    <!-- BOOTSTRAP STYLES-->
    <link href="../assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="../assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="../assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="../assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0" id="header">
        <%@include file="left.jsp"%>
    </nav>
    <!-- /. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation" id="left">
        <%@include file="menue.jsp"%>
    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-head-line">个人信息</h1>
                </div>
            </div>
            <br>
            <form role="form" action="/stu/addOrUpdateStuInfo" method="post" enctype="multipart/form-data">
                <input type="hidden" value="${student.stuId}">
                <div class="row">
                    <div class="col-md-offset-10 col-md-2"><button name="update" class="btn btn-warning" ><i class="fa fa-edit"></i>编辑</button></div>

                </div>
                <div class="row">

                    <div class="col-md-3 ">
                        <div id="stuPhotoDiv"></div><br>
                        <c:choose>
                            <c:when test="${student.stuPhoto!=null}">
                                <img src="${pageContext.request.contextPath}${student.stuPhoto}"style="width: 180px;height: 250px">
                            </c:when>
                            <c:otherwise>
                                <img src="../assets/img/demoUpload.jpg"style="width: 200px;height: 150px">
                            </c:otherwise>
                        </c:choose>

                        <br>
                    </div>
                    <div class="col-md-9">

                        <!-- 表格开始 -->
                        <div class="panel panel-default" style="border: 0">
                            <div class="panel-body">

                                <div class="table-responsive">

                                    <table class="table">

                                        <tbody>

                                        <tr >
                                            <td><strong>姓名:</strong><span>${student.stuName}</span></td>
                                        </tr>

                                        <tr >
                                            <td><strong>年龄：</strong><span>${student.stuAge}</span></td>
                                        </tr>

                                        <tr>
                                            <td><strong>性别：</strong><span>${student.stuSex}</span></td>
                                        </tr>
                                        <tr>
                                            <td><strong>学号：</strong><span>${student.stuNum}</span></td>
                                        </tr>

                                        <tr >
                                            <td><strong>学院：</strong><span>${student.stuCollege}</span></td>

                                        </tr>

                                        <tr>
                                            <td><strong>专业：</strong><span>${student.stuProfession}</span></td>
                                        </tr>

                                        <tr >
                                            <td><strong>籍贯：</strong><span></span>${student.stuAddress}</td>

                                        </tr>
                                        <tr>
                                            <td><strong>邮箱：</strong><span>${student.stuEmail}</span></td>
                                        </tr>
                                        <tr >
                                            <td><strong>电话：</strong><span>${student.stuPhone}</span></td>

                                        </tr>
                                        <tr>
                                            <td><strong>QQ：</strong><span>${student.stuQQ}</span></td>
                                        </tr>
                                        <tr>
                                            <td><strong>个人评价：</strong>
                                                <span>${student.stuRecommend}</span>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>


                                </div>

                            </div>

                        </div>
                        <!-- 表格结束 -->
                    </div>
                </div>
            </form>
            <!-- 模态框开始 -->
            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog"    aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close"
                                    data-dismiss="modal" aria-hidden="true">
                                &times;            </button>
                            <h4 class="modal-title" id="myModalLabel">
                                修改权限信息            </h4>
                        </div>
                        <div class="modal-body">
                            <div class="panel panel-info" style="border: 0">

                                <div class="panel-body">
                                    <form class="form-control">
                                        <div class="form-group">
                                            <label>姓名</label>
                                            <input class="form-control" type="text" name="stuName">
                                            <p class="help-block">Help text here.</p>
                                        </div>

                                        <!-- <div class="form-group">
                                               <label>性别</label>
                                               <input type="radio" name="stuSex" value="男">男
                                                <input type="radio" name="stuSex" value="女">女
                                        </div>
                                        <div class="form-group">
                                               <label>学院</label>
                                               <select class="form-control">
                                                   <option value="">-请选择-</option>
                                                   <option value="信息与计算机工程学院">信息与计算机工程学院</option>
                                                   <option value="机电学院">机电学院</option>
                                               </select>

                                        </div> -->
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default"
                                    data-dismiss="modal">关闭            </button>
                            <button type="button" class="btn btn-primary">
                                提交更改            </button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal -->
            </div>
            <!-- 模态框结束 -->


        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->

<div id="footer-sec">
    &copy; 2017 高校社团组织管理系统
</div>
<!-- /. FOOTER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="../assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="../assets/js/bootstrap.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="../assets/js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="../assets/js/custom.js"></script>
<!-- myjs -->
<script src="../assets/myjs/page.js"></script>
<%--<script src="../assets/myjs/reference.js"></script>--%>


</body>
</html>

