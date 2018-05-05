<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/31
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>权限管理</title>

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
                    <h1 class="page-head-line">权限管理</h1>
                </div>
            </div>
            <br>
            <div class="row ">
                <div class="form-group input-group col-md-6 col-md-offset-5">
                    <input type="text" class="form-control" placeholder="输入权限名称进行查询" />
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
                                        <th>权限名称</th>
                                        <th>权限级别</th>
                                        <th>父级权限</th>
                                        <th>权限链接</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="tbody">
                                    <c:forEach var="permission" items="${pageResult.list}">
                                        <tr>
                                            <td>${permission.permissionName}</td>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${permission.permissionParentId==0}">一级权限</c:when>
                                                    <c:otherwise>二级权限</c:otherwise>
                                                </c:choose>
                                            </td>
                                            <td>${permission.permissionParentName}</td>
                                            <input type="hidden" id="permissionParentId" value="${permission.permissionParentId}">
                                            <td>${permission.permissionLink}</td>
                                            <input type="hidden" value="${permission.permissionId}" id="permissionId" >
                                            <td>
                                                <a href="javascript:void(0);" onclick="updatePermission(this)" class="btn btn-success" ><i class="fa fa-edit "></i><span>修改</span></a>

                                                <a href="javascript:void(0);" onclick="delePermission(${permission.permissionId},this)" class="btn btn-danger" ><i class="glyphicon glyphicon-home"></i><span>删除</span></a>

                                            </td>
                                        </tr>
                                    </c:forEach>

                                    </tbody>
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
                    <button class="btn btn-primary" data-toggle="modal" name="addPermission"
                            data-target="#myModal">添加权限</button>
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
            <!-- 模态框开始 -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog"    aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close"
                                    data-dismiss="modal" aria-hidden="true">
                                &times;            </button>
                            <h4 class="modal-title" id="myModalLabel">
                                新增权限信息            </h4>
                        </div>
                        <div class="modal-body">
                            <div class="panel panel-info" style="border: 0">

                                <div class="panel-body">
                                    <form role="form" action="" method="post" id="mdalForm">
                                        <input type="hidden" name="permissionId" id="permissionIdModal">
                                        <input type="hidden" name="permissionParentId" id="permissionParentIdModal">
                                        <input type="hidden" name="permissionParentName" id="permissionParentNameModal">
                                        <div class="form-group">
                                            <label>权限名称</label>
                                            <input class="form-control" type="text" id="permissionName">
                                            <p class="help-block"></p>
                                        </div>

                                        <div class="form-group">
                                            <label>父级权限</label>
                                            <select class="form-control" name="parentPemission" id="select">
                                                <option>-请选择-</option>

                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>权限连接</label>
                                            <input class="form-control" type="text" id="permissionLink">
                                            <p class="help-block"></p>
                                        </div>



                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default"
                                    data-dismiss="modal">关闭            </button>
                            <button type="button" class="btn btn-primary" id="submit">
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
    &copy; 2017 高校助学贷款管理系统
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

<script src="${pageContext.request.contextPath}/assets/myjs/permission/permission.js"></script>




</body>
</html>

