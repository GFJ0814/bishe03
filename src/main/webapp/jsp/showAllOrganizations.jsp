<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2017/5/6
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
<html>
<head>
    <title>组织部门管理 </title>
</head>
<body>
<h2>展示所有</h2>
<table border="1">
    <tr>
        <td>选项</td>
        <td>图标</td>
        <td>组织名称</td>
        <td>所属类别</td>
        <td>指导老师</td>
        <td>负责人</td>
        <td>操作</td>
    </tr>
    <c:forEach var="org" items="${orgList}">
        <tr>
            <td><input type="checkbox" name="orgCheck"></td>
            <td><img src="${pageContext.request.contextPath}${org.orgLogo}" width="100px" height="100px"></td>
            <td>${org.orgName}</td>
            <td><c:choose>
                    <c:when test="${org.orgSuperId==0}">组织或社团</c:when>
                    <c:otherwise>部门</c:otherwise>
                 </c:choose>
            </td>
            <td>${org.orgAdminTeacher}</td>
            <td>${org.orgAdmin}</td>
            <td>
                <a href="#">查看详细</a>|
                <a href="/organization/toUpdateOneByOrgId?orgId=${org.orgId}">修改</a>|
                <a href="/organization/delOrgInfoById?orgId=${org.orgId}">删除 </a>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="7">
            <a href="../jsp/addOrganization.jsp"><input type="button" value="新增"></a>
        </td>
    </tr>
</table>
</body>
</html>
--%>
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
                    <h1 class="page-head-line">组织管理</h1>
                </div>
            </div>
            <br>
            <div class="row ">

               <form action="" m>
                    <div class="col-md-6 col-md-offset-3">
                        <input class="form-control" type="text" name="name" placeholder="输入组织名称">
                    </div>

                    <div class="col-md-3">
                        <button class="btn btn-primary" type="submit"><i class="glyphicon glyphicon-search"></i>查询</button>
                    </div>
               </form>
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
                                        <th>图像</th>
                                        <th>全称</th>
                                        <th>简称</th>
                                        <th>指导老师</th>
                                        <th>负责人</th>
                                        <th>办公地点</th>
                                        <th>操作</th>
                                    </tr>
                                    </tbody>
                                    <tbody>
                                     <c:choose>
                                         <c:when test="${orgList==null||orgList.size()==0}">
                                             <tr><td colspan="7" align="center">无数据，请点击新增添加数据</td></tr>
                                         </c:when>
                                         <c:otherwise>
                                             <c:forEach var="org" items="${orgList}">
                                                 <tr >
                                                     <td><img src="${pageContext.request.contextPath}${org.orgLogo}" style="width: 100px;height: 100px;"></td>
                                                     <td>${org.orgFullName}</td>
                                                     <td align="center" valign="center">${org.orgSimpleName}</td>
                                                     <td>${org.orgAdminTeacher}</td>
                                                     <td>${org.orgAdmin}</td>
                                                     <td>${org.orgLocation}</td>
                                                     <td><a href="" class="btn btn-info"><i class="fa fa-edit"></i>修改</a>
                                                         <a href="" class="btn btn-danger"><i class="glyphicon glyphicon-home"></i>删除</a>
                                                     </td>
                                                 </tr>
                                             </c:forEach>
                                         </c:otherwise>
                                     </c:choose>

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
                    <button class="btn btn-primary" data-toggle="modal"
                            data-target="#addModal">新增组织</button>
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
<script type="text/javascript">
    $(function(){
        $("th").css("text-align","center");
        $("td").css("text-align","center");
        $("td").css("line-height","100px");
    })
</script>


</body>
</html>


