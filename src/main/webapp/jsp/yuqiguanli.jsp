<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2018/6/4
  Time: 23:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>组织管理</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href=${pageContext.request.contextPath}/assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="${pageContext.request.contextPath}/assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="${pageContext.request.contextPath}/assets/css/custom.css" rel="stylesheet" />
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
                    <h1 class="page-head-line">逾期管理</h1>
                    <h1 class="page-subhead-line">展示所有逾期贷款订单信息</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">

                    <form role="form" action="#" method="">
                        <div class="row">

                            <div class="col-md-10">

                                <!-- 表格开始 -->
                                <div class="panel panel-default" style="border: 0">
                                    <div class="panel-body">

                                        <div class="table-responsive">

                                            <table class="table table-striped table-bordered table-hover">
                                                <thead>
                                                <tr>
                                                    <th>姓名</th>
                                                    <th>申请贷款金额</th>
                                                    <th>申请时间</th>
                                                    <th>应还时间</th>
                                                    <th>逾期天数</th>
                                                    <th>通知次数</th>
                                                    <th>电话号码</th>
                                                    <th>操作</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>王璇</td>
                                                    <td>6000</td>
                                                    <td>2017-9-10</td>
                                                    <td>2018-2-10</td>
                                                    <td>34天</td>
                                                    <td>10次</td>
                                                    <td>13567843214</td>
                                                    <td>
                                                        <button type="button" class="btn btn-xs btn-info" data-toggle="modal" data-target="#myModal2">加入黑名单</button>
                                                        <button type="button" class="btn btn-xs btn-info" data-toggle="modal" data-target="#myModal2">删除</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>刘峰</td>
                                                    <td>6000</td>
                                                    <td>2017-9-12</td>
                                                    <td>2018-5-12</td>
                                                    <td>20天</td>
                                                    <td>3次</td>
                                                    <td>13657843214</td>
                                                    <td>
                                                        <button type="button" class="btn btn-xs btn-info" data-toggle="modal" data-target="#myModal2">加入黑名单</button>
                                                        <button type="button" class="btn btn-xs btn-info" data-toggle="modal" data-target="#myModal2">删除</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>张青</td>
                                                    <td>13000</td>
                                                    <td>2017-10-10</td>
                                                    <td>2018-6-10</td>
                                                    <td>1天</td>
                                                    <td>1次</td>
                                                    <td>18537846216</td>
                                                    <td>
                                                        <button type="button" class="btn btn-xs btn-info" data-toggle="modal" data-target="#myModal2">加入黑名单</button>
                                                        <button type="button" class="btn btn-xs btn-info" data-toggle="modal" data-target="#myModal2">删除</button>
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
                </div>
            </div>

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
            <!-- 模态框开始 -->
            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog"    aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close"
                                    data-dismiss="modal" aria-hidden="true">
                                &times;            </button>
                            <h4 class="modal-title" id="myModalLabel">
                                修改银行卡号            </h4>
                        </div>
                        <div class="modal-body">
                            <div class="panel panel-info" style="border: 0">

                                <div class="panel-body">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>银行卡号：</label>
                                            <input class="form-control" type="text" >
                                            <p class="help-block"></p>
                                        </div>


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

            <!-- 模态框开始发起还款申请 -->
            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog"    aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close"
                                    data-dismiss="modal" aria-hidden="true">
                                &times;            </button>
                            <h4 class="modal-title" id="myModalLabel">
                                我要还款            </h4>
                        </div>
                        <div class="modal-body">
                            <div class="panel panel-info" style="border: 0">

                                <div class="panel-body">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>还款金额：</label>
                                            <input class="form-control" type="text" >
                                            <p class="help-block"></p>
                                        </div>
                                        <div class="form-group">
                                            <label>银行卡号：</label>
                                            <input class="form-control" type="text" >
                                            <p class="help-block"></p>
                                        </div>


                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default"
                                    data-dismiss="modal">关闭            </button>
                            <button type="button" class="btn btn-primary">
                                确认            </button>
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

<div id="footer-sec">
    &copy; 2018 高校助学贷款管理系统
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

</body>
</html>