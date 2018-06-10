<%--
  Created by IntelliJ IDEA.
  User: haopeng
  Date: 2018/6/6
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class = "wrapper">
    <%@include file="../../public/top.jsp"%>
    <%@include file="../../public/menu.jsp"%>
    <%--<div id="page-wrapper">--%>
        <%--<form enctype="multipart/form-data">--%>
            <%--<div class="form-group">--%>
                <%--<input id="fileUpload" class="file" type="file" multiple>--%>
            <%--</div>--%>
        <%--</form>--%>
    <%--</div>--%>
        <div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-bar-chart-o fa-fw"></i> 资产管理
                    <div class="pull-right">
                        <div class="btn-group">
                            <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                Actions
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu pull-right" role="menu">
                                <li><a href="#">Action</a>
                                </li>
                                <li><a href="#">Another action</a>
                                </li>
                                <li><a href="#">Something else here</a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="panel input-group custom-search-form col-lg-4">
                        <input type="text" class="form-control" placeholder="Search...">
                        <span class="input-group-btn">
                            <a id = "assetSearch" class="btn btn-default" type="button">
                                <i class="fa fa-search"></i>
                            </a>
                        </span>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="table-responsive">

                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th>序号</th>
                                        <th>名称</th>
                                        <th>价格</th>
                                        <th>库存</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${assetList}" var="assetList">
                                        <tr>
                                            <td>${assetList.id}</td>
                                            <td>${assetList.name}</td>
                                            <td>${assetList.price}</td>
                                            <td>${assetList.quantity}</td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.col-lg-4 (nested) -->
                        <div class="col-lg-8">
                            <div id="morris-bar-chart"></div>
                        </div>
                        <!-- /.col-lg-8 (nested) -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-8 -->
    </div>
    </div>
</div>

<script>
    $(function(){
        $("a#assetSearch").click(function(){
            var data =
            {
                "start": "1",
                "count": "3",
                "haopeng": "nmb"
            };
            $.ajax({
                type : "post",
                url : "assetSearch",
                data : data,
                async : false,
                contentType: "application/json; charset=utf-8",
                dataType : "json",
                success: function(result){
                    // debugger;
                    // alert(result);
                },
                error: function(XMLHttpRequest, textStatus, errorThrown){
                    //通常情况下textStatus和errorThrown只有其中一个包含信息
                    this;   //调用本次ajax请求时传递的options参数
                }
            }).done(
                function(result){
                    debugger;
                    alert(result[0].name);
                }
                // function (result) {
                //     alert(result);
                // }


                // $.each(data, function (i, n) {
                //     var row = $("#template").clone();
                //     row.find("#id").text(n.id);
                //     row.find("#url").text(n.url);
                //     row.find("#title").text(n.title);
                //     row.appendTo("#datas");//添加到模板的容器中
                // });


            );
// href="assetSearch"
        });
    });



</script>