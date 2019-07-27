<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>微气候监测系统</title>
    <meta name="description" content="微气候监测系统">
    <meta name="keywords" content="微气候监测系统">
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="/statics/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/statics/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/statics/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="/statics/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="/statics/plugins/morris/morris.css">
    <link rel="stylesheet" href="/statics/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="/statics/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="/statics/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="/statics/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="/statics/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="/statics/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="/statics/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="/statics/plugins/select2/select2.css">
    <link rel="stylesheet" href="/statics/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="/statics/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="/statics/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="/statics/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="/statics/css/style.css">
    <link rel="stylesheet" href="/statics/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="/statics/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="/statics/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="/statics/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="header.jsp"/>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="aside.jsp"/>
    <!-- 导航侧栏 /-->


    <!-- 内容区域 /-->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                数据管理
                <small>数据列表</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="/main/toMain.do"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">数据管理</a></li>
                <li class="active">数据列表</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <!-- .box-body -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">列表</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--工具栏-->
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default" title="新建" onclick="location.href='/tbhistory/toAdd.do'"><i
                                            class="fa fa-file-o"></i> 新建
                                    </button>
                                    <button type="button" class="btn btn-default" title="删除"><i
                                            class="fa fa-trash-o"></i> 删除
                                    </button>
                                    <button type="button" class="btn btn-default" title="开启"><i class="fa fa-check"></i>
                                        开启
                                    </button>
                                    <button type="button" class="btn btn-default" title="屏蔽"><i class="fa fa-ban"></i>
                                        屏蔽
                                    </button>
                                    <button type="button" class="btn btn-default" title="刷新"><i
                                            class="fa fa-refresh"></i> 刷新
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="box-tools pull-right">
                            <div class="has-feedback">
                                <input type="text" class="form-control input-sm" placeholder="搜索">
                                <span class="glyphicon glyphicon-search form-control-feedback"></span>
                            </div>
                        </div>
                        <!--工具栏/-->

                        <!--数据列表-->
                        <div class="col-xs-12 table-responsive" >
                            <table id="dataList"
                                   class="table  table-bordered table-striped table-hover dataTable table-condensed ">
                                <thead>
                                <tr>
                                    <th class="" style="padding-right: 0px;"><input
                                            id="selall" type="checkbox" class="icheckbox_square-blue">
                                    </th>
                                    <th class="text-center sorting_asc">数据ID</th>
                                    <th class="text-center sorting_desc">设备编号</th>
                                    <th class="sorting_asc sorting_asc_disabled">设备名称</th>
                                    <th class="sorting_desc sorting_desc_disabled">设备ID</th>
                                    <th class="sorting">节点ID</th>
                                    <th class="text-center sorting">温度</th>
                                    <th class="sorting">湿度</th>
                                    <th class="text-center sorting">Lng</th>
                                    <th class="text-center sorting">Lat</th>
                                    <th class="text-center sorting">坐标类型</th>
                                    <th class="text-center sorting">记录时间</th>
                                    <th class="text-center sorting">警告数据?</th>
                                    <th class="text-center">操作</th>
                                </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${list}" var="tbhistory">

                                    <tr>
                                        <td><input name="ids" type="checkbox"></td>
                                        <td class="text-center">${tbhistory.id }</td>
                                        <td class="text-center">${tbhistory.deviceKey }</td>
                                        <td class="text-center">${tbhistory.deviceName }</td>
                                        <td class="text-center">${tbhistory.deviceID }</td>
                                        <td class="text-center">${tbhistory.nodeID }</td>
                                        <td class="text-center">${tbhistory.tem }</td>
                                        <td class="text-center">${tbhistory.hum }</td>
                                        <td class="text-center">${tbhistory.lng }</td>
                                        <td class="text-center">${tbhistory.lat }</td>
                                        <td class="text-center">${tbhistory.coordinateType }</td>
                                        <td class="text-center">${tbhistory.recordTime }</td>
                                        <td class="text-center">${tbhistory.statues }</td>
                                        <td class="text-center">
                                            <button type="button" class="btn bg-olive btn-xs">详情</button>
                                            <button type="button" class="btn bg-olive btn-xs">编辑</button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!--数据列表/-->

                        <!--工具栏-->
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default" title="新建"><i
                                            class="fa fa-file-o"></i> 新建
                                    </button>
                                    <button type="button" class="btn btn-default" title="删除"><i
                                            class="fa fa-trash-o"></i> 删除
                                    </button>
                                    <button type="button" class="btn btn-default" title="开启"><i class="fa fa-check"></i>
                                        开启
                                    </button>
                                    <button type="button" class="btn btn-default" title="屏蔽"><i class="fa fa-ban"></i>
                                        屏蔽
                                    </button>
                                    <button type="button" class="btn btn-default" title="刷新"><i
                                            class="fa fa-refresh"></i> 刷新
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="box-tools pull-right">
                            <div class="has-feedback">
                                <input type="text" class="form-control input-sm" placeholder="搜索">
                                <span class="glyphicon glyphicon-search form-control-feedback"></span>
                            </div>
                        </div>
                        <!--工具栏/-->

                    </div>
                    <!-- 数据表格 /-->


                </div>
                <!-- /.box-body -->

                <!-- .box-footer-->
                <div class="box-footer">
                    <div class="pull-left">
                        <div class="form-group form-inline">
                            总共2 页，共14 条数据。 每页
                            <select class="form-control">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select> 条
                        </div>
                    </div>

                    <div class="box-tools pull-right">
                        <ul class="pagination">
                            <li>
                                <a href="#" aria-label="Previous">首页</a>
                            </li>
                            <li><a href="#">上一页</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">下一页</a></li>
                            <li>
                                <a href="#" aria-label="Next">尾页</a>
                            </li>
                        </ul>
                    </div>

                </div>
                <!-- /.box-footer-->


            </div>

        </section>
        <!-- 正文区域 /-->

    </div>
    <!-- 内容区域 -->

    <!-- 底部导航 -->
    <jsp:include page="footer.jsp"/>
    <!-- 底部导航 /-->
</div>


<script src="/statics/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="/statics/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="/statics/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="/statics/plugins/raphael/raphael-min.js"></script>
<script src="/statics/plugins/morris/morris.min.js"></script>
<script src="/statics/plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="/statics/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/statics/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="/statics/plugins/knob/jquery.knob.js"></script>
<script src="/statics/plugins/daterangepicker/moment.min.js"></script>
<script src="/statics/plugins/daterangepicker/daterangepicker.js"></script>
<script src="/statics/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="/statics/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="/statics/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="/statics/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="/statics/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="/statics/plugins/fastclick/fastclick.js"></script>
<script src="/statics/plugins/iCheck/icheck.min.js"></script>
<script src="/statics/plugins/adminLTE/js/app.min.js"></script>
<script src="/statics/plugins/treeTable/jquery.treetable.js"></script>
<script src="/statics/plugins/select2/select2.full.min.js"></script>
<script src="/statics/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="/statics/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="/statics/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="/statics/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="/statics/plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="/statics/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="/statics/plugins/ckeditor/ckeditor.js"></script>
<script src="/statics/plugins/input-mask/jquery.inputmask.js"></script>
<script src="/statics/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="/statics/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="/statics/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/statics/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="/statics/plugins/chartjs/Chart.min.js"></script>
<script src="/statics/plugins/flot/jquery.flot.min.js"></script>
<script src="/statics/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="/statics/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="/statics/plugins/flot/jquery.flot.categories.min.js"></script>
<script src="/statics/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="/statics/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script src="/statics/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="/statics/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script>
    $(function() {
        $('#dataList').DataTable({
            "paging": false,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": false,
            "autoWidth": false
        });
    });
    $(document).ready(function () {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });


    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }


    $(document).ready(function () {

        // 激活导航位置
        setSidebarActive("admin-datalist");

        // 列表按钮
        $("#dataList td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
        // 全选操作
        $("#selall").click(function () {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });
    });
</script>
</body>

</html>