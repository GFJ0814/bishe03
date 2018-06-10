<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2018/6/4
  Time: 23:05
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
    <script src="${pageContext.request.contextPath}/js/Chart.js"></script>
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
        <div class="row">
            <div class="col-md-12">
                <h1 class="page-head-line">数据监控</h1>
                <h1 class="page-subhead-line">展示系统级的数据监控信息</h1>
            </div>
        </div>
        <div class="graphs">
            <div class="graph_box">
                <div class="col-md-offset-0 grid_2"><div class="grid_1">
                    <h3 align="center">当天24小时内请求量统计</h3>
                    <canvas id="line" height="300" width="1000" style="width: 50px; height: 300px;"></canvas>
                </div></div>
                <div class="col-md-4 grid_2"><div class="grid_1">
                    <!-- <h3>圆环</h3> -->
                    <canvas id="doughnut" height="300" width="400" style="width: 400px; height: 300px;"></canvas>
                </div></div>

                <div class="col-md-4 grid_2"><div class="grid_1">
                    <!-- <h3>PolarArea</h3> -->
                    <canvas id="polarArea1" height="300" width="400" style="width: 400px; height: 300px;"></canvas>
                </div></div>
                <div class="clearfix"> </div>
            </div>
            <div class="graph_box1">
                <div class="col-md-4 grid_2"><div class="grid_1">
                    <!-- <h3>Bar</h3> -->
                    <canvas id="bar" height="300" width="400" style="width: 400px; height: 300px;"></canvas>
                </div></div>
                <div class="col-md-4 grid_2"><div class="grid_1">
                    <!-- <h3>Pie</h3> -->
                    <canvas id="pie" height="300" width="400" style="width: 400px; height: 300px;"></canvas>
                </div></div>
                <div class="col-md-4 grid_2"><div class="grid_1">
                    <!-- <h3>Radar</h3><canvas id="radar" height="300" width="400" style="width: 400px; height: 300px;"></canvas> -->
                </div></div>
                <div class="clearfix"> </div>
            </div>

            <script>

                var doughnutData = [
                    {
                        value: 30,
                        color:"#ef553a"
                    },
                    {
                        value : 50,
                        color : "#9358ac"
                    },
                    {
                        value : 100,
                        color : "#3b5998"
                    },
                    {
                        value : 40,
                        color : "#00aced"
                    },
                    {
                        value : 120,
                        color : "#4D5360"
                    }

                ];
                var lineChartData = {
                    labels : ["0:00","1:00","2:00","3:00","4:00","5:00","6:00","7:00","8:00","9:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00","24:00"],
                    datasets : [
                        {
                            fillColor : "#00aced",
                            strokeColor : "#00aced",
                            pointColor : "#00aced",
                            pointStrokeColor : "#fff",
                            data : [0,0,0,0,0,0,0,5,11,7,2,15,3,0,0,1,3,6,7,3,5,1,0,0]
                        },
                        // {
                        //     fillColor : "#3b5998",
                        //     strokeColor : "#3b5998",
                        //     pointColor : "#3b5998",
                        //     pointStrokeColor : "#fff",
                        //     data : [28,48,40,19,96,27,100]
                        // }
                    ]

                };
                var pieData = [
                    {
                        value: 30,
                        color:"#ef553a"
                    },
                    {
                        value : 50,
                        color : "#00aced"
                    },
                    {
                        value : 100,
                        color : "#69D2E7"
                    }

                ];
                var barChartData = {
                    labels : ["January","February","March","April","May","June","July"],
                    datasets : [
                        {
                            fillColor : "#ef553a",
                            strokeColor : "#ef553a",
                            data : [65,59,90,81,56,55,40]
                        },
                        {
                            fillColor : "#00aced",
                            strokeColor : "#00aced",
                            data : [28,48,40,19,96,27,100]
                        }
                    ]

                };
                var chartData = [
                    {
                        value : Math.random(),
                        color: "#D97041"
                    },
                    {
                        value : Math.random(),
                        color: "#C7604C"
                    },
                    {
                        value : Math.random(),
                        color: "#21323D"
                    },
                    {
                        value : Math.random(),
                        color: "#9D9B7F"
                    },
                    {
                        value : Math.random(),
                        color: "#7D4F6D"
                    },
                    {
                        value : Math.random(),
                        color: "#9358ac"
                    }
                ];
                var radarChartData = {
                    labels : ["","","","","","",""],
                    datasets : [
                        {
                            fillColor : "#3b5998",
                            strokeColor : "#3b5998",
                            pointColor : "#3b5998",
                            pointStrokeColor : "#fff",
                            data : [65,59,90,81,56,55,40]
                        },
                        {
                            fillColor : "#ef553a",
                            strokeColor : "#ef553a",
                            pointColor : "#ef553a",
                            pointStrokeColor : "#fff",
                            data : [28,48,40,19,96,27,100]
                        }
                    ]

                };
                // new Chart(document.getElementById("doughnut").getContext("2d")).Doughnut(doughnutData);
                new Chart(document.getElementById("line").getContext("2d")).Line(lineChartData);
                // new Chart(document.getElementById("radar").getContext("2d")).Radar(radarChartData);
                // new Chart(document.getElementById("polarArea").getContext("2d")).PolarArea(chartData);
                // new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);
                // new Chart(document.getElementById("pie").getContext("2d")).Pie(pieData);

            </script>

        </div>
    </div>
    <!-- /#page-wrapper -->
</div>

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

</body>
</html>