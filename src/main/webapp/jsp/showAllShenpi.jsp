<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/6/6
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>我的审批</title>

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
                    <h1 class="page-head-line">我的审批</h1>
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
                                        <td>90 Orders To Process</td>

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
                                        <td>100$ Pending Payment</td>

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
                                        <td>200 Messages To Reply</td>

                                        <td><a href="" class="btn btn-info"><i class="fa fa-edit"></i>修改</a>
                                            <a href="" class="btn btn-danger"><i class="glyphicon glyphicon-home"></i>删除</a>
                                        </td>
                                    </tr>
                                    <tr >
                                        <td>6</td>
                                        <td>张三</td>
                                        <td>评优加分</td>
                                        <td><a href="#" class="btn btn-warning">被驳回</a></td>
                                        <td>名额有限，再努力</td>
                                        <td>90 Orders To Process</td>

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
            <!--  <div class="row">
                   <div class="col-md-2" >
                    <button class="btn btn-primary" data-toggle="modal"
                                               data-target="#addModal">我要申请</button>
                   </div>
             </div> -->
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
                            <h4 class="modal-title" id="myModalLabe2">
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
