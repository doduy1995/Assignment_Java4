<%--
  Created by IntelliJ IDEA.
  User: Duy
  Date: 7/24/2021
  Time: 8:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" contentType="text/html; UTF-8" language="java" %>
<div class="content-page">

    <!-- Start content -->
    <div class="content">

        <div class="container-fluid">

            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb-holder">
                        <h1 class="main-title float-left">Tổng Quát</h1>
                        <div class="clearfix"></div>
                    </div>

                    <div class="alert alert-warning">
                        <h5>Tổng Quát Về Shop :</h5>

                        <h6 class="mb-3 text-success">
                            - Kết Quả Tổng quát dựa trên những thông số của shop <br>
                            - Bạn không thể thay đổi giá trị ở chức năng này
                            <br>
                            - Qua chức năng này bạn có thể đánh giá được hệ thống đang hoạt động thế nào.
                        </h6>
                    </div>

                </div>
            </div>
            <!-- end row -->


            <div class="row">
                <div class="col-xs-12 col-md-6 col-lg-6 col-xl-3">
                    <div class="card-box noradius noborder bg-danger" onclick="toCart()">
                        <i class="far fa-user float-right text-white"></i>
                        <h6 class="text-white text-uppercase m-b-20">Nhân Viên</h6>
                        <h1 class="m-b-20 text-white counter">12</h1>
                        <span class="text-white">Hiện Tại</span>
                    </div>
                </div>

                <div class="col-xs-12 col-md-6 col-lg-6 col-xl-3">
                    <div class="card-box noradius noborder bg-purple">
                        <i class="fas fa-download float-right text-white"></i>
                        <h6 class="text-white text-uppercase m-b-20">Số người truy cập</h6>
                        <h1 class="m-b-20 text-white counter">${applicationScope.visitors}</h1>
                        <span class="text-white">Hiện Tại</span>
                    </div>
                </div>

                <div class="col-xs-12 col-md-6 col-lg-6 col-xl-3">
                    <div class="card-box noradius noborder bg-warning">
                        <i class="fas fa-shopping-cart float-right text-white"></i>
                        <h6 class="text-white text-uppercase m-b-20">Hóa Đơn</h6>
                        <h1 class="m-b-20 text-white counter">${order}</h1>
                        <span class="text-white">Hiện Tại</span>
                    </div>
                </div>

                <div class="col-xs-12 col-md-6 col-lg-6 col-xl-3">
                    <div class="card-box noradius noborder bg-info">
                        <i class="far fa-envelope float-right text-white"></i>
                        <h6 class="text-white text-uppercase m-b-20">Tin Nhắn Đến</h6>
                        <h1 class="m-b-20 text-white counter">${sumReply}</h1>
                        <span class="text-white">Hiện Tại</span>
                    </div>
                </div>
            </div>
            <!-- end row -->
            <div class="row">
                <div class="col-12">
                    <div class="card mb-3">
                        <div class="card-header">
                            <h3>Bảng Top 10 Sản Phẩm Bán Chạy Nhất</h3>
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover display" style="width:100%">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Mã Sản Phẩm</th>
                                        <th>Tên Sản Phẩm</th>
                                        <th>Số Lượng Bán Gia</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="item" items="${listTop10}" varStatus="index">
                                        <tr>
                                            <td>${index.index +1}</td>
                                            <td>${item.id}</td>
                                            <td>${item.name}</td>
                                            <td>${item.sumtotal}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- end table-responsive-->

                        </div>
                        <!-- end card-body-->
                    </div>
                    <!-- end card-->
                </div>

            </div>
            <div class="row">
                <div id="columnchart_values" class="col" ></div>
            </div>
        </div>
        <!-- end row -->


        <div class="row">

            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                <div class="card mb-3">
                    <div class="card-header">
                        <h3><i class="fas fa-history"></i> Tasks progress</h3>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    </div>

                    <div class="card-body">
                        <p class="font-600 mb-1">Task completed <span class="text-info pull-right"><b>100%</b></span>
                        </p>
                        <div class="progress">
                            <div class="progress-bar progress-xs bg-success" role="progressbar" style="width: 100%"
                                 aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>

                        <div class="mb-3"></div>

                        <p class="font-600 mb-1">Task 1 <span class="text-primary pull-right"><b>95%</b></span></p>
                        <div class="progress">
                            <div class="progress-bar progress-xs bg-primary" role="progressbar" style="width: 95%"
                                 aria-valuenow="95" aria-valuemin="0" aria-valuemax="95">
                            </div>
                        </div>

                        <div class="mb-3"></div>

                        <p class="font-600 mb-1">Task 2 <span class="text-primary pull-right"><b>88%</b></span></p>
                        <div class="progress">
                            <div class="progress-bar progress-xs bg-primary" role="progressbar" style="width: 88%"
                                 aria-valuenow="88" aria-valuemin="0" aria-valuemax="88">
                            </div>
                        </div>

                        <div class="mb-3"></div>

                        <p class="font-600 mb-1">Task 3 <span class="text-info pull-right"><b>75%</b></span>
                        </p>
                        <div class="progress">
                            <div class="progress-bar progress-xs bg-info" role="progressbar" style="width: 78%"
                                 aria-valuenow="75" aria-valuemin="0" aria-valuemax="75">
                            </div>
                        </div>

                        <div class="mb-3"></div>

                        <p class="font-600 mb-1">Task 4 <span class="text-info pull-right"><b>70%</b></span>
                        </p>
                        <div class="progress">
                            <div class="progress-bar progress-xs bg-info" role="progressbar" style="width: 70%"
                                 aria-valuenow="70" aria-valuemin="0" aria-valuemax="70">
                            </div>
                        </div>

                        <div class="mb-3"></div>

                        <p class="font-600 mb-1">Task 5 <span class="text-warning pull-right"><b>68%</b></span></p>
                        <div class="progress">
                            <div class="progress-bar progress-xs bg-warning" role="progressbar" style="width: 68%"
                                 aria-valuenow="68" aria-valuemin="0" aria-valuemax="68">
                            </div>
                        </div>

                        <div class="mb-3"></div>

                        <p class="font-600 mb-1">Task 6 <span class="text-warning pull-right"><b>65%</b></span></p>
                        <div class="progress">
                            <div class="progress-bar progress-xs bg-warning" role="progressbar" style="width: 65%"
                                 aria-valuenow="65" aria-valuemin="0" aria-valuemax="65">
                            </div>
                        </div>

                        <div class="mb-3"></div>

                        <p class="font-600 mb-1">Task 7 <span class="text-danger pull-right"><b>55%</b></span></p>
                        <div class="progress">
                            <div class="progress-bar progress-xs bg-danger" role="progressbar" style="width: 55%"
                                 aria-valuenow="55" aria-valuemin="0" aria-valuemax="55">
                            </div>
                        </div>

                        <div class="mb-3"></div>

                        <p class="font-600 mb-1">Task 8 <span class="text-danger pull-right"><b>40%</b></span></p>
                        <div class="progress">
                            <div class="progress-bar progress-xs bg-danger" role="progressbar" style="width: 40%"
                                 aria-valuenow="40" aria-valuemin="0" aria-valuemax="40">
                            </div>
                        </div>

                        <div class="mb-3"></div>

                        <p class="font-600 mb-1">Task 9 <span class="text-danger pull-right"><b>20%</b></span></p>
                        <div class="progress">
                            <div class="progress-bar progress-xs bg-danger" role="progressbar" style="width: 20%"
                                 aria-valuenow="20" aria-valuemin="0" aria-valuemax="20">
                            </div>
                        </div>
                    </div>
                    <div class="card-footer small text-muted">Updated today at 11:59 PM</div>
                </div>
                <!-- end card-->
            </div>


            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                <div class="card mb-3">
                    <div class="card-header">
                        <h3><i class="fas fa-envelope"></i> Latest messages</h3>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    </div>

                    <div class="card-body">

                        <div class="widget-messages nicescroll" style="height: 550px;">
                            <a href="#">
                                <div class="message-item">
                                    <p class="message-item-user">John Doe</p>
                                    <p class="message-item-msg">Hello. I want to buy your product</p>
                                    <p class="message-item-date">11:50 PM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="message-item">
                                    <p class="message-item-user">Ashton Cox</p>
                                    <p class="message-item-msg">Great job for this task</p>
                                    <p class="message-item-date">14:25 PM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="message-item">
                                    <p class="message-item-user">Colleen Hurst</p>
                                    <p class="message-item-msg">I have a new project for you</p>
                                    <p class="message-item-date">13:20 PM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="message-item">
                                    <p class="message-item-user">Fiona Green</p>
                                    <p class="message-item-msg">Nice to meet you</p>
                                    <p class="message-item-date">15:45 PM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="message-item">
                                    <p class="message-item-user">Donna Snider</p>
                                    <p class="message-item-msg">I have a new project for you</p>
                                    <p class="message-item-date">15:45 AM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="message-item">
                                    <p class="message-item-user">Garrett Winters</p>
                                    <p class="message-item-msg">I have a new project for you</p>
                                    <p class="message-item-date">15:45 AM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="message-item">
                                    <p class="message-item-user">Herrod Chandler</p>
                                    <p class="message-item-msg">Hello! I'm available for this job</p>
                                    <p class="message-item-date">15:45 AM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="message-item">
                                    <p class="message-item-user">Jena Gaines</p>
                                    <p class="message-item-msg">I have a new project for you</p>
                                    <p class="message-item-date">15:45 AM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="message-item">
                                    <p class="message-item-user">Airi Satou</p>
                                    <p class="message-item-msg">I have a new project for you</p>
                                    <p class="message-item-date">15:45 AM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="message-item">
                                    <p class="message-item-user">Brielle Williamson</p>
                                    <p class="message-item-msg">I have a new project for you</p>
                                    <p class="message-item-date">15:45 AM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="message-item">
                                    <p class="message-item-user">Jena Gaines</p>
                                    <p class="message-item-msg">I have a new project for you</p>
                                    <p class="message-item-date">16:30 AM</p>
                                </div>
                            </a>
                            <a href="#">
                                <div class="message-item">
                                    <p class="message-item-user">Airi Satou</p>
                                    <p class="message-item-msg">I have a new project for you</p>
                                    <p class="message-item-date">18:55 AM</p>
                                </div>
                            </a>
                        </div>

                    </div>
                    <div class="card-footer small text-muted">Updated today at 11:59 PM</div>
                </div>
                <!-- end card-->
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    google.charts.load("current", {packages: ['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ["Element", "Density", {role: "style"}],
            <c:forEach var="item" items="${listTop10}" >
            ["${item.name}", ${item.sumtotal}, "#b87333"],
            </c:forEach>
        ]);

        var view = new google.visualization.DataView(data);
        view.setColumns([0, 1,
            {
                calc: "stringify",
                sourceColumn: 1,
                type: "string",
                role: "annotation"
            },
            2]);

        var options = {
            title: "Top 10 Sản Phẩm Bán Chạy Nhất",
            width: 1232,
            height: 400,
            bar: {groupWidth: "95%"},
            legend: {position: "none"},
        };
        var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
        chart.draw(view, options);
    }
</script>

