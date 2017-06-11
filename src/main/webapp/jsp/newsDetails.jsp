<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/6/8
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>发布资讯</title>

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
    <link href="../assets/myjs/summernote.css" rel="stylesheet">
    <link rel="icon" sizes="192x192" href="../images/i/app.png">
    <!--Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="apple-touch-icon-precomposed" href="images/i/app.png">
    <!--Win8 or 10 -->
    <meta name="msapplication-TileImage" content="images/i/app.png">
    <meta name="msapplication-TileColor" content="#e1652f">

    <link rel="icon" type="image/png" href="../images/i/favicon.png">
    <link rel="stylesheet" href="../assets/css/amazeui.min.css">
    <link rel="stylesheet" href="../css/public.css">

    <!--[if (gte IE 9)|!(IE)]><!-->
    <script src="../assets/js/jquery.min.js"></script>
    <!--<![endif]-->
    <!--[if lte IE 8 ]>
    <script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
    <script src="../assets/js/amazeui.ie8polyfill.min.js"></script>
    <![endif]-->
    <script src="../assets/js/amazeui.min.js"></script>
    <script src="../js/public.js"></script>

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
                    <h1 class="page-head-line">资讯详情</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 col-md-offset-1" >
                    <div class="newstitles">
                        <h2>${news.title}</h2>
                        <img src="../Temp-images/face.jpg" class="face">
                        <span>${sessionScope.user.userName}</span>
                        时间：${news.createTime}   阅读：322
                    </div>
                    <a href="#"><img src="../Temp-images/ad2.png" class="am-img-responsive" width="100%"/></a>

                    <div class="contents">
                        ${news.article}
                            <p dir="ltr" style="text-align: justify;"><font color="#585858" face="arial, microsoft yahei, 宋体">本文转自XXX</font></p>
                      </div>
                  <%--  <div class="shang">
                        <img src="../images/shang.png" >
                    </div>--%>
                     <hr>
                    <c:choose>
                        <c:when test="${news.status==0}">
                            <div id="check">
                               <%-- <div data-am-widget="titlebar" class="am-titlebar am-titlebar-default" style="margin-bottom: 20px" >
                                    <h2 class="am-titlebar-title ">
                                        资讯审核
                                    </h2>
                                </div>--%>
                                <form class="am-form" action="/news/addNews" method="post" enctype="multipart/form-data">
                                    <fieldset>
                                        <div class="am-form-group">
                                            <input type="hidden" name="news_id" value="${news.news_id}">
                                            <label for="doc-select-1">审核资讯</label>
                                            <select id="doc-select-1" name="status">
                                                <option value="0">未审核</option>
                                                <option value="1">审核通过</option>
                                                <option value="2">驳回</option>
                                            </select>
                                            <span class="am-form-caret"></span>
                                        </div>

                                        <div class="am-form-group">
                                            <label for="doc-ta-1">审核意见</label>
                                            <input type="text" name="status_info"/>
                                        </div>

                                        <p><button type="submit" class="am-btn am-btn-default">提交</button></p>
                                    </fieldset>
                                </form>
                            </div>
                        </c:when>
                    </c:choose>

                </div>


            </div>
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
<!--  <script src="http://www.jq22.com/jquery/2.1.1/jquery.min.js"></script>
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>  -->
<script src="${pageContext.request.contextPath}/assets/myjs/summernote.js"></script>
<script >
    $(document).ready(function() {
        // $('#summernote').summernote();
        $('#summernote').each(function() {
            var $this = $(this);
            // var url = $this.attr("action") || '';
            $this.summernote({
                // lang : 'zh-CN',
                minHeight : 300,
                dialogsFade : true,// Add fade effect on dialogs
                dialogsInBody : true,// Dialogs can be placed in body, not in
                // summernote.
                disableDragAndDrop : false,// default false You can disable drag
                // and drop
            });
        });
    });
</script>



</body>
</html>

