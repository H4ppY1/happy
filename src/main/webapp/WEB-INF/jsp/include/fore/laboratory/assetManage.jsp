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
        <div class="col-lg-8">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-bar-chart-o fa-fw"></i> Bar Chart Example
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
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="table-responsive">

                                <%--<table class="table table-striped table-bordered table-hover  table-condensed">--%>
                                    <%--<thead>--%>
                                    <%--<tr class="success">--%>
                                        <%--<th>ID</th>--%>
                                        <%--<th>图片</th>--%>
                                        <%--<th>分类名称</th>--%>
                                        <%--<th>属性管理</th>--%>
                                        <%--<th>产品管理</th>--%>
                                        <%--<th>编辑</th>--%>
                                        <%--<th>删除</th>--%>
                                    <%--</tr>--%>
                                    <%--</thead>--%>
                                    <%--<tbody>--%>
                                    <%--<c:forEach items="${cs}" var="c">--%>

                                        <%--<tr>--%>
                                            <%--<td>${c.id}###${c.name}</td>--%>
                                            <%--<td><img height="40px" src="img/category/${c.id}.jpg"></td>--%>
                                            <%--<td>${c.name}</td>--%>

                                            <%--<td><a href="admin_property_list?cid=${c.id}"><span class="glyphicon glyphicon-th-list"></span></a></td>--%>
                                            <%--<td><a href="admin_product_list?cid=${c.id}"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>--%>
                                            <%--<td><a href="admin_category_edit?id=${c.id}"><span class="glyphicon glyphicon-edit"></span></a></td>--%>
                                            <%--<td><a deleteLink="true" href="admin_category_delete?id=${c.id}"><span class=" 	glyphicon glyphicon-trash"></span></a></td>--%>

                                        <%--</tr>--%>
                                    <%--</c:forEach>--%>
                                    <%--</tbody>--%>
                                <%--</table>--%>


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