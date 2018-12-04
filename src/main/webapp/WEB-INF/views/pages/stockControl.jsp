<!DOCTYPE html>
<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>

	<link rel="stylesheet" href="../layui-v2.4.5/css/layui.css">
	<link rel="stylesheet" href="../css/layuiadmin/admin.css">
</head>

<body layadmin-themealias="default">
<div class="layui-fluid">
	<div class="layui-card">
		<div class="layui-form layui-card-header layuiadmin-card-header-auto">
			<div class="layui-form-item">
				<div class="layui-row">
	    			<div class="layui-col-md9">
						<div class="layui-inline">
							<label class="layui-form-label">品名</label>
							<div class="layui-input-block">
								<input type="text" name="goodsName" placeholder="请输入" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<button class="layui-btn layuiadmin-btn-order" lay-submit lay-filter="btnGoodsSearch">
								<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
							</button>
						</div>
					</div>
			    	<div class="layui-col-md3">
						<div class="box">
							<span>订单</span>
							<div class="con">
								<%--<table id="demo1" lay-filter="test"></table>--%>
							</div>
						</div>
		    		</div>
		  		</div>
			</div>
		</div>
		<div class="layui-card-body">
			<table id="elemTableGoods" lay-filter="filterGoodsTable"></table>
		</div>
	</div>
</div>
</body>

<script type="text/html" id="orderOption">
	<a class="layui-btn layui-btn-xs" lay-event="addToCart">加入订单</a>
</script>


<script src="../layui-v2.4.5/layui.js"></script>
<script>
    layui.use(['table','form'], function(){
        var table = layui.table;
		var $ = layui.$;
		var form = layui.form;
        table.render({
        	id: 'tableGoods',
            elem: '#elemTableGoods',
            url: 'goods.json', //数据接口
            toolbar: 'default',
            page: true, //开启分页
            even: true,
            cols: [[ //表头
                {type: 'checkbox', fixed: 'left'},
                {field: 'goodsId', title: 'ID', sort:true, fixed:'left'},
				{field: 'goodsName', title: '品名',align: 'center', sort: true},
                {field: 'specification', title: '规格', align: 'center', sort: true},
                {field: 'guidePrice', title: '指导价', align: 'right'},
                {field: 'stock', title: '库存'},
                {field: 'price', title: '售价'},
                {field: 'amount', title: '数量'},
                {fixed: 'right', width: 165, align:'center', toolbar: '#orderOption'}
            ]],
            done: function(res, curr, count){
                //如果是异步请求数据方式，res即为你接口返回的信息。
                //如果是直接赋值的方式，res即为：{data: [], count: 99} data为当前页数据、count为数据总长度
                console.log(res);

                //得到当前页码
                console.log(curr);

                //得到数据总量
                console.log(count);
            }
        });

        form.on('submit(btnGoodsSearch)',function(data){
        	table.reload('tableGoods',{
				where:data.field
			});
        });


        var str = "\n" +
            "<div class=\"layui-form\" action=\"\" style=\"padding: 20px 30px 0 0;\">\n" +
            "  <div class=\"layui-form-item\">\n" +
            "    <label class=\"layui-form-label\">品名</label>\n" +
            "    <div class=\"layui-input-inline\">\n" +
            "      <input type=\"text\" name=\"title\" lay-verify=\"required\" placeholder=\"请输入\" autocomplete=\"off\" class=\"layui-input\">\n" +
            "    </div>\n" +
            "  </div>\n" +
            "  <div class=\"layui-form-item\">\n" +
            "    <label class=\"layui-form-label\">规格</label>\n" +
            "    <div class=\"layui-input-inline\">\n" +
            "      <input type=\"text\" name=\"title\" lay-verify=\"required\" placeholder=\"请输入\" autocomplete=\"off\" class=\"layui-input\">\n" +
            "    </div>\n" +
            "  </div>\n" +
            "  <div class=\"layui-form-item\">\n" +
            "    <label class=\"layui-form-label\">指导价</label>\n" +
            "    <div class=\"layui-input-inline\">\n" +
            "      <input type=\"text\" name=\"title\" lay-verify=\"required\" placeholder=\"请输入\" autocomplete=\"off\" class=\"layui-input\">\n" +
            "    </div>\n" +
            "  </div>\n" +
            "  <div class=\"layui-form-item\">\n" +
            "    <label class=\"layui-form-label\">库存</label>\n" +
            "    <div class=\"layui-input-inline\">\n" +
            "      <input type=\"text\" name=\"title\" lay-verify=\"required\" placeholder=\"请输入\" autocomplete=\"off\" class=\"layui-input\">\n" +
            "    </div>\n" +
            "  </div>\n" +
            "</div>\n" +
            " ";

        table.on('toolbar(filterGoodsTable)',function(obj){
            var checkStatus = table.checkStatus(obj.config.id)
                ,data = checkStatus.data; //获取选中的数据
            switch(obj.event){
                case 'add':
                    // layer.msg('添加');
                    layer.prompt({
                        maxmin: true,
                        type: 1,
                        content: str,
                        title: '新增商品',
                        area: ['800px', '350px'] //自定义文本域宽高
                    }, function(value, index, elem){
                        debugger
                        alert(value); //得到value
                        layer.close(index);
                    });
                    break;
                case 'update':
                    if(data.length === 0){
                        layer.msg('请选择一行');
                    } else if(data.length > 1){
                        layer.msg('只能同时编辑一个');
                    } else {
                        layer.alert('编辑 [id]：'+ checkStatus.data[0].goodsId);
                    }
                    break;
                case 'delete':
                    if(data.length === 0){
                        layer.msg('请选择一行');
                    } else {
                        layer.msg('删除');
                    }
                    break;
            };
		})
		
		table.on('tool(filterGoodsTable)',function(obj){
			var layEvent = obj.event;
			var data     = obj.data;
			
			$.ajax({
                type : "post",
                url : "addToCart.json",
                async : true,
                data : data,
                dataType : "json"
            }).done(
                function(result){
                	return;
            });
			
		})

    });
</script>

<style>
	.box{
		width: 100px;
		height: 30px;
		line-height: 30px;
		border: 1px solid #ccc;
		text-align: center;
		font-size: 14px;
		position: relative;
	}
	.box:after{
		content: "";
		height: 1px;
		width: 100%;
		background-color: #fff;
		position: absolute;
		bottom: -1px;
		left: 0;
		display: none;
		z-index: 101;
	}
	.con{
		height: 100px;
		width: 300px;
		border: 1px solid #ccc;
		display: none;
		position: absolute;
		left: -1px;
		z-index: 100;
	}
	.box:hover:after{
		display: block;
	}
	.box:hover .con{
		display: block;
	}
</style>