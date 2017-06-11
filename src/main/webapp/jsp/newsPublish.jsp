<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/6/3
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>发布资讯</title>

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
    <link href="${pageContext.request.contextPath}/assets/myjs/summernote.css" rel="stylesheet">

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
                    <h1 class="page-head-line">发布资讯</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <!-- 表格开始 -->
                    <div class="panel panel-default" style="border: 0">

                        <div class="panel-body">
                            <div class="table-responsive">
                                <form role="form" action="/news/addNews" method="post" enctype="multipart/form-data" >
                                    <table class="table table-bordered">
                                        <tbody>
                                        <div class="form-group">
                                            <tr>
                                                <td style="width: 10%"> <label>资讯标题</label></td>
                                                <td> <input class="form-control" type="text" name="title" value="${news==null?"":news.title}">
                                                </td>
                                            </tr>
                                        </div>
                                        <c:choose>
                                            <c:when test="${news!=null}">
                                                <input type="hidden" name="news_id" value="${news.news_id}" >
                                            </c:when>
                                        </c:choose>

                                        <div class="form-group">
                                            <tr>
                                                <td style="width: 10%"> <label>资讯类别</label></td>
                                                <td><select class="form-control" name="text_type">
                                                      <c:choose>
                                                          <c:when test="${news==null}">
                                                              <option>-选择类别-</option>
                                                              <option value="新闻" >新闻</option>
                                                              <option value="活动">活动</option>
                                                              <option value="通知">通知</option>
                                                          </c:when>
                                                          <c:when test="${news!=null}">
                                                              <option>-选择类别-</option>
                                                              <option value="新闻" ${news.text_type=="新闻"?"selected":""}>新闻</option>
                                                              <option value="活动" ${news.text_type=="活动"?"selected":""}>活动</option>
                                                              <option value="通知" ${news.text_type=="通知"?"selected":""}>通知</option>
                                                          </c:when>
                                                      </c:choose>


                                                </select>
                                                </td>
                                            </tr>
                                        </div>
                                        <div class="form-group" >
                                            <tr>
                                                <td style="width:10%;"> <label>首页图片</label></td>
                                                <td>
                                                    <input type="file" name="file" class="form-control">
                                                </td>
                                            </tr>
                                        </div>
                                        <div class="form-group" >
                                            <tr>
                                                <td style="width: 10%"> <label>摘要</label></td>
                                                <td>
                                                     <textarea name="abArticle" id="" cols="15" rows="4" class="form-control">${news==null?"":news.abArticle}</textarea>
                                                </td>
                                            </tr>
                                        </div>

                                        <div class="form-group" >
                                            <tr >
                                                <td style="width: 10%"><label>正文</label></td>
                                                <td>
                                                    <div id="summernote">${news==null?"":news.article}</div>
                                                </td>

                                            </tr>
                                        </div>
                                        <input type="hidden" name="article" id="article"/>
                                        <div class="form-group">
                                            <tr>
                                                <td colspan="2"><button class="btn btn-success" type="submit" id="submit">发布</button>
                                                    <button class="btn btn-info">返回</button>
                                                </td>
                                            </tr>
                                        </div>

                                        </tbody>
                                    </table>
                                </form>

                            </div>


                        </div>

                    </div>
                    <!-- 表格结束 -->

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

        $("#submit").click(function(){
            var result = $('#summernote').summernote('code');
            $("#article").val(result);
        })

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
                onImageUpload: function(files, editor, $editable) {
                    sendFile(files[0],editor,$editable);
                }
            });
        });
    });

    $.ajax({
        data: data,
        type: "POST",
        url: "/news/uploadImg", //图片上传出来的url，返回的是图片上传后的路径，http格式
        contentType: "json",
        cache: false,
        processData: false,
        success: function(data) {
        //data是返回的hash,key之类的值，key是定义的文件名
            alert(data);
        //把图片放到编辑框中。editor.insertImage 是参数，写死。后面的http是网上的图片资源路径。
        //网上很多就是这一步出错。
            $('#summernote').summernote('editor.insertImage', "${pageContext.request.contextPath}"+data.dada);

            $(".note-alarm").html("上传成功,请等待加载");
            setTimeout(function(){$(".note-alarm").remove();},3000);
        },
        error:function(){
            $(".note-alarm").html("上传失败");
            setTimeout(function(){$(".note-alarm").remove();},3000);
        }
    });





</script>



</body>
</html>

