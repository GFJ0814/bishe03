<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/27
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
<div class="sidebar-collapse">
    <ul class="nav" id="main-menu">
        <li>
            <div class="user-img-div">
                <img src="../assets/img/user.jpg" class="img-thumbnail" />

                <div class="inner-text" align="center">
                    <font style="font-size: 21px;font-family: '华文楷体'">早上好，${sessionScope.user.userName}</font>
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
                    <a href="../jsp/updatePassword.jsp"><i class="fa fa-bell "></i>修改密码</a>
                </li>


            </ul>
        </li>
        <li>
            <a href="#"><i class="fa fa-yelp "></i>系统管理<span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
                <li>
                    <a href="/user/findAllUsers"><i class="fa fa-coffee"></i>用户管理</a>
                </li>
                <li>
                    <a href="/role/findAllRoles"><i class="fa fa-flash "></i>角色管理</a>
                </li>
                <li>
                    <a href="/permission/findAllPermissionsByPage"><i class="fa fa-key "></i>权限管理</a>
                </li>


            </ul>
        </li>
        <li>
            <a href="#"><i class="fa fa-sitemap "></i>常务管理<span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
                <li>
                    <a href="/news/findAllNewsByPage"><i class="fa fa-coffee"></i>资讯管理</a>
                </li>
                <li>
                    <a href="../jsp/newsPublish.jsp"><i class="fa fa-anchor"></i>发布资讯</a>
                </li>
                <li>
                    <a href="/apply/showAllApplysByPage"><i class="fa fa-key "></i>我的申请</a>
                </li>
                <li>
                    <a href="/shenpi/findAllShenpi"><i class="fa fa-anchor "></i>我的审批</a>
                </li>


            </ul>
        </li>
        <li>
            <a href="#"><i class="fa fa-bicycle "></i>助贷管理<span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">

                <li>
                    <a href="/loan/findAllLoansByPage"><i class="fa fa-desktop "></i>贷款管理 </a>
                </li>
                <li>
                    <a href="../jsp/daikuanshenqing.jsp"><i class="fa fa-comments-o "></i>贷款申请</a>
                </li>
                <li>
                    <a href="/repayment/findAllRepayment"><i class="fa fa-code "></i>还款管理</a>
                </li>

                <li>
                    <a href="/yuqiguanli/findAllYuqiguanliInfo"><i class="fa fa-anchor "></i>逾期管理</a>
                </li>
                <li>
                    <a href="/blacklist/findAllBlacklist"><i class="fa fa-coffee"></i>黑名单管理</a>
                </li>


            </ul>
        </li>
        <li>
            <a href="#"><i class="fa fa-sitemap "></i>后台管理 <span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
                <li>
                    <a href="/tongji/getAllTongjiData"><i class="fa fa-flash"></i>
                        统计报表</a>
                </li>
                <li>
                    <a href="/log/getLogInfo"><i class="fa fa-comments-o "></i>日志监控</a>
                </li>

            </ul>
        </li>

    </ul>

</div>
<script src="../assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="../assets/js/bootstrap.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="../assets/js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="../assets/js/custom.js"></script>


</body>
</html>
