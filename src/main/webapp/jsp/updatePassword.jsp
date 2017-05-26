<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/26
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>修改密码</title>


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
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">社团组织管理系统</a>
        </div>

        <div class="header-right">

            <a href="message-task.html" class="btn btn-info" title="New Message"><b>30 </b><i class="fa fa-envelope-o fa-2x"></i></a>
            <a href="message-task.html" class="btn btn-primary" title="New Task"><b>40 </b><i class="fa fa-bars fa-2x"></i></a>
            <a href="../index.jsp" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>

        </div>
    </nav>
    <!-- /. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <div class="user-img-div">
                        <img src="../assets/img/user.png" class="img-thumbnail" />

                        <div class="inner-text" align="center">
                            <font style="font-size: 21px;font-family: '华文楷体'">早上好，张三</font>
                            <br />
                            <small>上次登录 : 昨天晚上 </small>
                        </div>
                    </div>

                </li>


                <li>
                    <a class="active-menu" href="#"><i class="fa fa-dashboard "></i>选项卡</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-desktop "></i>个人中心 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="/stu/findOneStuByUserName"><i class="fa fa-toggle-on"></i>查看个人信息</a>
                        </li>
                        <li>
                            <a href="updatePassword.jsp"><i class="fa fa-bell "></i>修改密码</a>
                        </li>


                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-yelp "></i>系统管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="index.html"><i class="fa fa-coffee"></i>用户管理</a>
                        </li>
                        <li>
                            <a href="role.html"><i class="fa fa-flash "></i>角色管理</a>
                        </li>
                        <li>
                            <a href="permission.html"><i class="fa fa-key "></i>权限管理</a>
                        </li>


                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap "></i>常务管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="invoice.html"><i class="fa fa-coffee"></i>资讯管理</a>
                        </li>
                        <li>
                            <a href="newsPublish.html"><i class="fa fa-anchor"></i>发布资讯</a>
                        </li>
                        <li>
                            <a href="pricing.html"><i class="fa fa-flash "></i>资产管理</a>
                        </li>
                        <li>
                            <a href="shenqing.html"><i class="fa fa-key "></i>我的申请</a>
                        </li>
                        <li>
                            <a href="component.html"><i class="fa fa-anchor "></i>我的审批</a>
                        </li>


                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bicycle "></i>机构管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">

                        <li>
                            <a href="form.html"><i class="fa fa-desktop "></i>组织管理 </a>
                        </li>
                        <li>
                            <a href="form-advance.html"><i class="fa fa-code "></i>部门管理</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bicycle "></i>招新</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-flask "></i>人事管理</a>
                        </li>


                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap "></i>排班管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#"><i class="fa fa-bicycle "></i>课表管理</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-flash"></i>
                                值班表管理</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-comments-o "></i>调班审批</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap "></i>调班申请</a>
                        </li>

                    </ul>
                </li>

            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-head-line">修改密码</h1>
                    <h1 class="page-subhead-line">输入新的密码信息进行修改</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="panel panel-info" style="border: 0">
                        <div class="panel-body">
                            <form role="form">
                                <div class="form-group">
                                    <label>新密码</label>
                                    <input class="form-control" type="password">
                                    <p class="help-block">6-8位字母、数字、组合</p>
                                </div>
                                <div class="form-group">
                                    <label>确认新密码</label>
                                    <input class="form-control" type="password">
                                    <p class="help-block">6-8位字母、数字、组合</p>
                                </div>

                                <button type="submit" class="form-control btn btn-info">确认修改</button>


                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <br>



            <!-- 模态框开始 -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog"    aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close"
                                    data-dismiss="modal" aria-hidden="true">
                                &times;            </button>
                            <h4 class="modal-title" id="myModalLabel">
                                给用户分配角色            </h4>
                        </div>
                        <div class="modal-body">

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



</body>
</html>

