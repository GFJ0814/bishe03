<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/6/2
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>资讯管理</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
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
                    <h1 class="page-head-line">资讯管理</h1>
                </div>
            </div>
            <br>
            <div class="row ">
                <div class="col-md-2">
                    <select class="form-control">
                        <option>-请选择类别-</option>
                        <option>新闻</option>
                        <option>活动</option>
                        <option>其他</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <select class="form-control">
                        <option>-请选择状态-</option>
                        <option>已发布</option>
                        <option>待审核</option>
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

                                        <th style="width: 40%">标题</th>
                                        <th style="width:5%;">类别</th>
                                        <th style="width: 10%">状态</th>
                                        <th style="width:10%;">发稿人</th>
                                        <th style="width:10%;">审批意见</th>
                                        <th style="width: 25%">操作</th>
                                    </tr>
                                    </tbody>
                                    <tbody>
                                    <c:forEach var="news" items="${pageResult.list}">
                                        <tr>

                                            <td>${news.title}</td>
                                            <td>${news.text_type}</td>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${news.status==0}">
                                                        未审核
                                                    </c:when>
                                                    <c:when test="${news.status==1}">
                                                        已审核
                                                    </c:when>
                                                    <c:when test="${news.status==2}">
                                                        被驳回
                                                    </c:when>
                                                </c:choose>
                                            </td>
                                            <td>${news.publisher}</td>
                                            <td>${news.status_info}</td>

                                            <td>
                                                <a href="/news/findOneByNewsId?news_id=${news.news_id}" class="btn btn-primary"><i class="glyphicon glyphicon-headphones">查阅</i></a>
                                                <a href="/news/toUpdateOneNewsByNewsId?news_id=${news.news_id}" class="btn btn-success"><i class="fa fa-edit"></i>编辑</a>
                                                <a href="/news/delOneNewsByNewsId?news_id=${news.news_id}" class="btn btn-danger"><i class="glyphicon glyphicon-home"></i>删除</a>
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
<script src="assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="assets/js/bootstrap.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="assets/js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="assets/js/custom.js"></script>
<!-- myjs -->
<script type="text/javascript">
    $(function(){
        $("th").css("text-align","center");
       // $("td").css("text-align","center");

    })
</script>



</body>
</html>

