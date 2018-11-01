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
                    <i class="fa fa-bar-chart-o fa-fw"></i> 试一下
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
					<div class="btn-group" role="group" aria-label="...">
					  	<button type="button" class="btn btn-default" onClick="bt1()">1</button>
				  		<button type="button" class="btn btn-default">2</button>
				  		<button type="button" class="btn btn-default">3</button>
					</div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">
								<a href =assetSearch.xls>download</a>
								<table id="assetTable" class="table table-bordered table-hover table-striped"></table>
<!-- 
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th>序号</th>
                                        <th>名称</th>
                                        <th>数量</th>>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${assetList}" var="assetList">
                                        <tr>
                                            <td>${assetList.id}</td>
                                            <td>${assetList.name}</td>
                                            <td>
                                            
                                          
                                            </td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                 -->
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
    	
    	var table = new hpTable();
    	
    	var col = [{
            checkbox: true
        }, {
            field: 'id',
            title: '序号'
        }, {
            field: 'name',
            title: '名称'
        }, {
            field: 'count',
            title: '数量',
            formatter: operateFormatter,
            width:150
        }];
    	table.id = "assetTable";
    	table.col = col;
    	table.init();
        $("#assetSearch").click(function(){
            $.ajax({
                type : "post",
                url : "assetSearch.json",
                async : false,
                dataType : "json",
                error:function(XMLHttpRequest, textStatus, errorThrown){
                    //通常情况下textStatus和errorThrown只有其中一个包含信息
                    this;   //调用本次ajax请求时传递的options参数
                 }
            }).done(
                function(result){
                	$("#assetTable").bootstrapTable("load",result);
            });
        });
        function operateFormatter(value, row, index) {
            return [
            	
            	'<div class="input-group input-group-sm">',
	            	'<span class="input-group-btn">',
	                	'<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-minus" aria-hidden="true"></button>',
	            	'</span>',
                	'<input type="text" class="form-control">',
	                '<span class="input-group-btn">',
	                    '<button class="btn btn-primary" type="button"><span class="glyphicon glyphicon-plus" aria-hidden="true"></button>',
	                '</span>',
            	'</div>'
            	
				
            ].join('');
		};
		

		
    });

	function js_method(){
	}
	function bt1(){
		return;
	}

</script>