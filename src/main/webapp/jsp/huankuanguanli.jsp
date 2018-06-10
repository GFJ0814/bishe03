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
                    <h1 class="page-head-line">还款管理</h1>
                    <h1 class="page-subhead-line">查询还款信息</h1>
                </div>
            </div>
            <div class="row ">
                <div class="col-md-2">
                    <select class="form-control">
                        <option>-最后审批结果-</option>
                        <option>通过</option>
                        <option>不通过</option>
                        <option>驳回</option>
                        <option>申请</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <select class="form-control">
                        <option>-流程状态-</option>
                        <option>流程结束（通过）</option>
                        <option>审批中</option>
                        <option>驳回,待修改</option>
                        <option>流程结束(不通过)</option>
                        <option>流程结束(终止)</option>
                    </select>
                </div>
                <div class="col-md-2 ">
                    <input type="date" class="form-control" placeholder="起始时间" />

                </div>
                <div class="col-md-2">
                    <input type="date" class="form-control" placeholder="结束时间" />

                </div>


                <div class="col-md-2">
                    <select class="form-control">
                        <option>-当前节点-</option>
                        <option>学生审批</option>
                        <option>辅导员审批</option>
                        <option>院系审批</option>
                        <option>贷款管理科审批</option>
                    </select>
                </div>
            </div>
            <br>
            <div class="row ">
                <div class="col-md-8">
                </div>

                <div class="col-md-2">
                    <button class="btn btn-primary"><i class="glyphicon glyphicon-search"></i>查询</button>
                    <button name="update" class="btn btn-warning" ><i class="fa fa-edit"></i>取消</button>

                </div>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-subhead-line"></h1>

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
                                                    <th>当前还款本金</th>
                                                    <th>当前还款利息</th>
                                                    <th>当前还款总金额</th>
                                                    <th>剩余应还还款本金</th>
                                                    <th>当前剩余应还利息</th>
                                                    <th>还款状态</th>
                                                    <th>操作</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>杨璐</td>
                                                    <td>1000元</td>
                                                    <td>0元</td>
                                                    <td>1000元</td>
                                                    <td>5000元</td>
                                                    <td>0元</td>
                                                    <td>还款处理中</td>
                                                    <td>
                                                        <button type="button" class="btn btn-xs btn-default">查看详细</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>黄家俊</td>
                                                    <td>3000元</td>
                                                    <td>55元</td>
                                                    <td>3055元</td>
                                                    <td>3000</td>
                                                    <td>55元</td>
                                                    <td>还款成功</td>
                                                    <td>
                                                        <button type="button" class="btn btn-xs btn-default">查看详细</button>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>郑玉昆</td>
                                                    <td>10000元</td>
                                                    <td>0元</td>
                                                    <td>2000元</td>
                                                    <td>10000元</td>
                                                    <td>0元</td>
                                                    <td>还款处理中</td>
                                                    <td>
                                                        <button type="button" class="btn btn-xs btn-default">查看详细</button>
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