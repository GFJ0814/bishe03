<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/9
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>
<head>
    <title>所有用户</title>
</head>
<body>
<h2>展示所有用户</h2>
<table>
</table>
</body>
</html>--%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>角色管理</title>

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
                    <h1 class="page-head-line">角色管理</h1>
                </div>
            </div>
            <br>
            <div class="row ">
                <div class="form-group input-group col-md-6 col-md-offset-5">
                    <input type="text" class="form-control" placeholder="输入用户名进行查询" />
                    <span class="input-group-btn">
                    <button class="btn btn-primary"><i class="glyphicon glyphicon-search"></i>查询</button>
                </span>
                </div>
                <br>

            </div>
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
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th style="width: 10%">角色编号</th>
                                        <th style="width: 20%">角色名</th>
                                        <th style="width: 25%">
                                            权限概览
                                        </th>
                                        <th style="width: 20%">创建时间</th>

                                        <th style="width: 25%">角色操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="role" items="${pageResult.list}">
                                    <tr>
                                        <td>ROLE${role.roleId}</td>
                                        <td>
                                          ${role.roleName}
                                        </td>
                                        <td>所有权限</td>


                                        <td>${role.createTime}</td>
                                        <td>

                                            <button class="btn btn-danger"><i class="glyphicon glyphicon-home"></i>删除</button>
                                            <button class="btn btn-success"><i class="glyphicon glyphicon-edit"></i>修改角色</button>
                                        </td>
                                    </tr>
                                    </c:forEach>

                                </table>
                            </div>

                        </div>
                        <hr/>

                    </div>
                    <!-- 表格结束 -->
                </div>
            </div>
            <!-- row结束 -->
            <div class="row">
                <div class="col-md-2" >
                    <button class="btn btn-primary" data-toggle="modal"
                            data-target="#addModal">新增角色</button>
                </div>
            </div>
            <!-- row开始 -->
            <div class="row">
                <div class="col-md-offset-8">

                    <ul class="pagination">
                        <li><a href="/role/findAllRoles?pageNo=1">首页</a></li>
                        <li><a href="/role/findAllRoles?pageNo=${pageResult.currentPage-1}">上一页</a></li>
                        <li><a href="/role/findAllRoles?pageNo=${pageResult.currentPage+1}">下一页</a></li>
                        <li><a href="/role/findAllRoles?pageNo=${pageResult.pageNum}">尾页</a></li>

                    </ul>
                </div>

            </div>
            <!-- row结束 -->

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



</body>
</html>


