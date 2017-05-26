<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/9
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
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
--%>
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
            <a href="login.html" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>

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
                            <a href="panel-tabs.html"><i class="fa fa-toggle-on"></i>查看个人信息</a>
                        </li>
                        <li>
                            <a href="notification.html"><i class="fa fa-bell "></i>修改密码</a>
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
                    <h1 class="page-head-line">个人信息</h1>
                </div>
            </div>
            <br>
            <form role="form" action="#" method="">
                <div class="row">
                    <div class="col-md-offset-10 col-md-2"><button name="update" class="btn btn-warning" ><i class="fa fa-edit"></i>编辑</button></div>

                </div>
                <div class="row">

                    <div class="col-md-3 ">
                        <div id="stuPhotoDiv"></div><br>
                        <img src="../assets/img/portfolio/e.jpg" style="width: 150px;height: 150px"/>
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
                                            <td><strong>姓名:</strong><span>张三</span></td>
                                        </tr>

                                        <tr >
                                            <td><strong>年龄：</strong><span>19</span></td>
                                        </tr>

                                        <tr>
                                            <td><strong>性别：</strong><span>男</span></td>
                                        </tr>
                                        <tr>
                                            <td><strong>学号：</strong><span>20134467</span></td>
                                        </tr>

                                        <tr >
                                            <td><strong>学院：</strong><span>信息与计算机学院</span></td>

                                        </tr>

                                        <tr>
                                            <td><strong>专业：</strong><span>信息管理与信息系统</span></td>
                                        </tr>

                                        <tr >
                                            <td><strong>籍贯：</strong><span>地球</span></td>

                                        </tr>
                                        <tr>
                                            <td><strong>邮箱：</strong><span>1805648841@qq.com</span></td>
                                        </tr>
                                        <tr >
                                            <td><strong>电话：</strong><span>18249101882</span></td>

                                        </tr>
                                        <tr>
                                            <td><strong>QQ：</strong><span>1805648841</span></td>
                                        </tr>
                                        <tr>
                                            <td><strong>个人评价：</strong>
                                                <span>哈哈哈哈哈，加我Q啊，咱们细聊哈哈哈哈哈，加我Q啊，咱们细聊哈哈哈哈哈，加我Q啊，咱们细聊哈哈哈哈哈，加我Q啊，咱们细聊哈哈哈哈哈，加我Q啊，咱们细聊哈哈哈哈哈，加我Q啊，咱们细聊哈哈哈哈哈，加我Q啊，咱们细聊哈哈哈哈哈，加我Q啊，咱们细聊</span>
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



</body>
</html>
