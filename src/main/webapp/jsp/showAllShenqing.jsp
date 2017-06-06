<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/6/6
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>我的申请</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="${pageContext.request.contextPath}/assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="${pageContext.request.contextPath}/assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="${pageContext.request.contextPath}/assets/css/custom.css" rel="stylesheet" />
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
                        <img src="assets/img/user.png" class="img-thumbnail" />

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
                            <a href="pricing.html"><i class="fa fa-flash "></i>资产管理</a>
                        </li>
                        <li>
                            <a href="component.html"><i class="fa fa-key "></i>我的申请</a>
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
                    <h1 class="page-head-line">我的申请</h1>
                </div>
            </div>
            <br>
            <div class="row ">
                <div class="col-md-2">
                    <select class="form-control">
                        <option>-请选择类别-</option>
                        <option>评优</option>
                        <option>调班</option>
                        <option>请假</option>
                        <option>竞选</option>
                        <option>其他</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <select class="form-control">
                        <option>-请选择状态-</option>
                        <option>审批通过</option>
                        <option>未审批</option>
                        <option>被驳回</option>
                    </select>
                </div>
                <div class="col-md-3 ">
                    <input type="date" class="form-control" placeholder="起始时间" />

                </div>
                <div class="col-md-3">
                    <input type="date" class="form-control" placeholder="结束时间" />

                </div>


                <div class="col-md-2">
                    <button class="btn btn-primary"><i class="glyphicon glyphicon-search"></i>查询</button>
                </div>
                <br>

            </div>
            <hr class="color:red">
            <!-- <div class="row">
                <div class="col-md-offset-9">
                    <button class="btn btn-primary"><i class="glyphicon glyphicon-search"></i>查询</button>
                </div>
            </div> -->
            <!-- row开始 -->
            <div class="row">
                <div class="col-md-12">
                    <!-- 表格开始 -->
                    <div class="panel panel-default" style="border: 0">

                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <tbody>
                                    <tr>
                                        <th>类别</th>
                                        <th>处理人</th>
                                        <th>描述</th>
                                        <th>当前状态</th>
                                        <th>意见</th>
                                        <th>申请时间</th>
                                        <th>操作</th>
                                    </tr>
                                    </tbody>
                                    <tbody>

                                    <tr >
                                        <td>3</td>
                                        <td>张三</td>
                                        <td>评优加分</td>
                                        <td><a href="#" class="btn btn-success">已通过</a></td>
                                        <td>同意</td>
                                        <td>2017-5-19</td>

                                        <td><a href="" class="btn btn-info"><i class="fa fa-edit"></i>修改</a>
                                            <a href="" class="btn btn-danger"><i class="glyphicon glyphicon-home"></i>删除</a>
                                        </td>
                                    </tr>
                                    <tr >
                                        <td>4</td>
                                        <td>张三</td>
                                        <td>评优加分</td>
                                        <td><a href="#" class="btn btn-danger">未审批</a></td>
                                        <td>无</td>
                                        <td>2017-5-19</td>

                                        <td><a href="" class="btn btn-info"><i class="fa fa-edit"></i>修改</a>
                                            <a href="" class="btn btn-danger"><i class="glyphicon glyphicon-home"></i>删除</a>
                                        </td>
                                    </tr>
                                    <tr >
                                        <td>5</td>
                                        <td>张三</td>
                                        <td>评优加分</td>
                                        <td><a href="#" class="btn btn-warning">被驳回</a></td>
                                        <td>名额有限，再努力</td>
                                        <td>2017-5-19</td>

                                        <td><a href="" class="btn btn-info"><i class="fa fa-edit"></i>修改</a>
                                            <a href="" class="btn btn-danger"><i class="glyphicon glyphicon-home"></i>删除</a>
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
            <!-- row结束 -->
            <div class="row">
                <div class="col-md-2" >
                    <button class="btn btn-primary" data-toggle="modal"
                            data-target="#addModal">我要申请</button>
                </div>
            </div>
            <!-- row开始 -->
            <div class="row">
                <div class="col-md-offset-8">

                    <ul class="pagination">
                        <li><a href="#">首页</a></li>
                        <li><a href="#">上一页</a></li>
                        <li><a href="#">下一页</a></li>
                        <li><a href="#">尾页</a></li>

                    </ul>
                </div>

            </div>
            <!-- row结束 -->
            <!-- 修改模态框开始 -->
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
            <!-- 修改模态框结束 -->
            <!-- 新增模态框开始 -->
            <div class="modal fade" id="addModal" tabindex="-1" role="dialog"    aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close"
                                    data-dismiss="modal" aria-hidden="true">
                                &times;            </button>
                            <h4 class="modal-title" id="myModalLabel">
                                添加申请            </h4>
                        </div>
                        <div class="modal-body">
                            <form role="form">

                                <div class="form-group">
                                    <label>申请类别</label>
                                    <select class="form-control">
                                        <option>-请选择-</option>
                                        <option>调班</option>
                                        <option>请假</option>
                                        <option>评优</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>描述</label>
                                    <input class="form-control" type="text">
                                    <p class="help-block">简要描述申请原因</p>
                                </div>


                                <button type="submit" class="btn btn-danger">提交</button>
                                <button type="reset" class="btn btn-info">重置</button>

                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default"
                                    data-dismiss="modal">关闭            </button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal -->
            </div>
            <!-- 新增模态框结束 -->
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
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="${pageContext.request.contextPath}/assets/js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="${pageContext.request.contextPath}/assets/js/custom.js"></script>
<!-- myjs -->
<script src="${pageContext.request.contextPath}/assets/myjs/page.js"></script>



</body>
</html>
