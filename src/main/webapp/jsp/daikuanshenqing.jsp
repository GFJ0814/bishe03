<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2018/6/4
  Time: 23:37
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
                    <h1 class="page-head-line">贷款申请</h1>
                    <h1 class="page-subhead-line" style="font-size: 15px">学生个人基础状况</h1>
                </div>

            </div>
            <form role="form" action="/loan/addLoan" method="post">
            <div  class="row pad-top-botm client-info">
                <div class="col-lg-1 col-md-1 col-sm-1" ></div>
                <div class="col-lg-4 col-md-4 col-sm-4" >
                    <b>姓名 :  张安 </b>
                    <br />
                    <b> 学号：201544967845</b>
                    <br />
                    <b>性别：男</b><br />
                    <b>民族：汉族</b><br />
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <b>学院：信息与计算机工程学院 </b>
                    <br />
                    <b> 专业：信息管理与信息系统</b>
                    <br />
                    <b>经济困难等级：困难</b><br />
                    <b>身份证号：623459199708105511</b><br />
                </div>
                <div class="col-lg-1 col-md-1 col-sm-1" ></div>
            </div>
            <h1 class="page-subhead-line" ></h1>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">

                        <div class="panel-heading">
                            家庭基本情况
                        </div>

                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr class="success">
                                        <th >关系</th>
                                        <th >姓名</th>
                                        <th >身份证号</th>
                                        <th >工作单位</th>
                                        <th >年收入（元）</th>
                                        <th >联系电话</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="warning">
                                        <td>父亲</td>
                                        <td><input type="text" name="fatherName"></td>
                                        <td><input type="text" name="fatherIdCarNo"></td>
                                        <td><input type="text" name="fatherWorkAddress"></td>
                                        <td><input type="text" name="faYearSalary"></td>
                                        <td><input type="text" name="fatherPhone"></td>
                                    </tr>
                                    <tr class="warning">
                                        <td>母亲</td>
                                        <td><input type="text" name="motherName"></td>
                                        <td><input type="text" name="matherIdCardNo"></td>
                                        <td><input type="text" name="matherWorkAddress"></td>
                                        <td><input type="text" name="maYearSalary"></td>
                                        <td><input type="text" name="motherPhone"></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <table class="table">
                                    <tr class="warning">
                                        <td>家庭地址：<input type="text" name="homeAddress"></td>
                                        <td>电话：<input type="text" name="homePhone"></td>
                                        <td>邮编：<input type="text" name="youbian"></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <h1 class="page-subhead-line" ></h1>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">

                        <div class="panel-heading">
                            申请贷款信息
                        </div>

                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr class="success">
                                        <th >学年度</th>
                                        <th >学费贷款</th>
                                        <th >住宿费贷款</th>
                                        <th>贷款期限</th>
                                        <th >合计</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="warning">
                                        <td >2017-2018</td>
                                        <td><input type="text" id="xuefei" name="xuefei" value="0" onblur="add()">元</td>
                                        <td><input type="text" id="zhusufei" value="0" name="zhusufei" onblur="add()">元</td>
                                        <td><input type="text" name="loan_term">年</td>
                                        <td id="heji" >0元</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div class="form-group">
                                    <label>家庭经济来源</label>
                                    <textarea class="form-control" rows="5" name="jingjilaiyuan"></textarea>
                                    <p class="help-block">最多200个字</p>
                                </div>
                                <div class="form-group">
                                    <label>申请贷款原因</label>
                                    <textarea class="form-control" rows="5" name="loan_reason"></textarea>
                                    <p class="help-block">最多200个字</p>
                                </div>
                                <div class="form-group">
                                    <label>银行卡号 </label>
                                    <input class="form-control" type="text" name="bankcardNo">
                                </div>
                                <table >
                                    <thead>
                                    <tr >
                                        <th width="20%"> <button type="submit" class="btn btn-info">提交 </button></th>
                                        <th width="20%"> <button type="reset" class="btn btn-warning">取消</button></th>
                                    </tr>
                                    </thead>

                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </form>

        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->

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
<script >
    function add() {
        var xuefei=isNaN($("#xuefei").val())?0:$("#xuefei").val();
        var zhusufei =isNaN($("#zhusufei").val())?0:$("#zhusufei").val();
        var heji = parseInt(xuefei)+parseInt(zhusufei);
        if(isNaN(heji)){
            heji = 0;
        }
        $("#heji").text(heji+"元");

    }


</script>

</body>
</html>
