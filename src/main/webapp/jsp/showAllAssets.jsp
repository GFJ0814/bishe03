<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/6/6
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>资产管理</title>

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
                    <h1 class="page-head-line">资产管理</h1>
                </div>
            </div>
            <br>
            <div class="row ">
                <form action="/asset/showAllAssets" method="post">
                    <div class="col-md-6 col-md-offset-3">
                        <input class="form-control" type="text" name="name" placeholder="输入资产名称">
                    </div>
                    <div class="col-md-3">
                        <button class="btn btn-primary" type="submit"><i class="glyphicon glyphicon-search"></i>查询</button>
                    </div>
                </form>

                <br>

            </div>
            <hr class="color:red">
            <div class="row">
                <div class="col-md-12">
                    <!-- 表格开始 -->
                    <div class="panel panel-default" style="border: 0">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <tbody>
                                    <tr>
                                        <th>编号</th>
                                        <th>名称</th>
                                        <th>图像</th>
                                        <th>数量</th>
                                        <th>放置位置</th>
                                        <th>登记人</th>
                                        <th>操作</th>
                                    </tr>
                                    </tbody>
                                    <tbody>

                                        <c:forEach var="asset" items="${pageResult.list}">
                                            <tr >
                                                <td>${asset.assets_id}</td>
                                                <td align="center" valign="center">${asset.assets_name}</td>
                                                <td><img src="${pageContext.request.contextPath}${asset.assets_logo}" style="width: 100px;height: 100px;"></td>
                                                <td>${asset.amount}台</td>
                                                <td>${asset.location}</td>
                                                <td>${asset.register_name}</td>
                                                <td><button id="update" class="btn btn-info" onclick="update(${asset.assets_id},this)"><i class="fa fa-edit"></i>修改</button>
                                                    <a href="/asset/delAsset?asset_id=${asset.assets_id}" class="btn btn-danger"><i class="glyphicon glyphicon-home"></i>删除</a>
                                                </td>
                                            </tr>
                                        </c:forEach>

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
                    <button id="add" onclick="add()" class="btn btn-primary" data-toggle="modal"
                            data-target="#addModal">新增资产</button>
                </div>
            </div>
            <!-- row开始 -->
            <div class="row">
                <div class="col-md-offset-8">

                    <ul class="pagination">
                        <li><a href="/asset/showAllAssets?name=${pageResult.other}">首页</a></li>
                        <li><a href="/asset/showAllAssets?pageNo=${pageResult.currentPage-1}&name=${pageResult.other}">上一页</a></li>
                        <li><a href="/asset/showAllAssets?pageNo=${pageResult.currentPage+1}&name=${pageResult.other}">下一页</a></li>
                        <li><a href="/asset/showAllAssets?pageNo=${pageResult.pageNum}&name=${pageResult.other}">尾页</a></li>

                    </ul>
                </div>

            </div>
            <!-- row结束 -->

            <!-- 新增模态框开始 -->
            <div class="modal fade" id="addModal" tabindex="-1" role="dialog"    aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close"
                                    data-dismiss="modal" aria-hidden="true">
                                &times;            </button>
                            <h4 class="modal-title" id="myModalLabe2">
                                添加资产            </h4>
                        </div>
                        <div class="modal-body">

                            <form role="form" action="/asset/addAssets" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="assets_id" id="assets_id">
                                <div class="form-group">
                                    <label>名称</label>
                                    <input type="text" class="form-control" name="assets_name" id="assets_name">
                                </div>
                                <div class="form-group">
                                    <label>图像</label>
                                    <input type="file" class="form-control" name="file">
                                </div>
                                <div class="form-group">
                                    <label>数量</label>
                                    <input type="text" class="form-control" name="amount" id="amount">
                                </div>
                                <div class="form-group">
                                    <label>放置位置</label>
                                    <input class="form-control" type="text" name="location" id="location">

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
<!-- myjs -->
<script src="${pageContext.request.contextPath}/assets/myjs/page.js"></script>
<script type="text/javascript">
    $(function(){
        $("th").css("text-align","center");
        $("td").css("text-align","center");
        $("td").css("line-height","100px");

    })

    function update(asset_id,element){

        $("#myModalLabe2").text("修改资产");
        //获取值填入：
        var otr = $(element).parents("tr");
        var asset_name = otr.find("td:eq(1)").text();
        var asset_account = otr.find("td:eq(3)").text();
        var account = asset_account.substring(0,asset_account.length-1);
        var location = otr.find("td:eq(4)").text();

        $("#assets_id").val(asset_id);
        $("#assets_name").val(asset_name);
        $("#amount").val(account);
        $("#location").val(location);

        $("#addModal").modal("show");



    }

    function  add() {
        $("#asset_id").val("");
        $("#assets_name").val("");
        $("#amount").val("");
        $("#location").val("");
    }
</script>


</body>
</html>
