<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/10
  Time: 18:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>个人信息</title>


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
                    <h1 class="page-head-line">个人信息</h1>
                </div>
            </div>
            <br>
            <form role="form" action="/stu/addOrUpdateStuInfo" method="post" enctype="multipart/form-data">
                <input type="hidden" value="${student.stuId}">
                <div class="row">
                    <div class="col-md-offset-10 col-md-2"><button name="update" class="btn btn-warning" ><i class="fa fa-edit"></i>编辑</button></div>

                </div>
                <div class="row">

                    <div class="col-md-3 ">
                        <div id="stuPhotoDiv"></div><br>
                        <c:choose>
                            <c:when test="${student.stuPhoto!=null}">
                                <img src="${pageContext.request.contextPath}${student.stuPhoto}"style="width: 180px;height: 250px">
                            </c:when>
                            <c:otherwise>
                                <img src="../assets/img/demoUpload.jpg"style="width: 200px;height: 150px">
                            </c:otherwise>
                        </c:choose>

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
                                            <td><strong>姓名:</strong><span>${student.stuName}</span></td>
                                        </tr>

                                        <tr >
                                            <td><strong>年龄：</strong><span>${student.stuAge}</span></td>
                                        </tr>

                                        <tr>
                                            <td><strong>性别：</strong><span>${student.stuSex}</span></td>
                                        </tr>
                                        <tr>
                                            <td><strong>学号：</strong><span>${student.stuNum}</span></td>
                                        </tr>

                                        <tr >
                                            <td><strong>学院：</strong><span>${student.stuCollege}</span></td>

                                        </tr>

                                        <tr>
                                            <td><strong>专业：</strong><span>${student.stuProfession}</span></td>
                                        </tr>

                                        <tr >
                                            <td><strong>籍贯：</strong><span>${student.stuAddress}</span></td>

                                        </tr>
                                        <tr>
                                            <td><strong>邮箱：</strong><span>${student.stuEmail}</span></td>
                                        </tr>
                                        <tr >
                                            <td><strong>电话：</strong><span>${student.stuPhone}</span></td>

                                        </tr>
                                        <tr>
                                            <td><strong>QQ：</strong><span>${student.stuQQ}</span></td>
                                        </tr>
                                        <tr>
                                            <td><strong>个人评价：</strong>
                                                <span>${student.stuRecommend}</span>
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
<!-- myjs -->
<script src="${pageContext.request.contextPath}/assets/myjs/page.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="${pageContext.request.contextPath}/assets/js/custom.js"></script>




</body>
</html>

