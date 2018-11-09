<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>

	<link rel="stylesheet" href="../layui-2.4.4/css/layui.css">
	<link rel="stylesheet" href="../css/admin.css">
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
							<button class="layui-btn layuiadmin-btn-order" lay-submit lay-filter="goodsSearch">
								<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
							</button>
						</div>
					</div>
			    	<div class="layui-col-md3">
		      			
		    		</div>
		  		</div>
			</div>
		</div>
		<div class="layui-card-body">
			<table id="demo" lay-filter="test"></table>
		</div>
	</div>
</div>

</body>

<script type="text/html" id="orderOption">
	<!--<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>-->
	<a class="layui-btn" lay-event="edit">加入订单</a>
	<!--<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>-->
</script>

<script src="../layui-2.4.4/layui.js"></script>
<script>
    layui.use(['table','form'], function(){
        var table = layui.table;
		var $ = layui.$;
		var form = layui.form;
        table.render({
        	id: 'goodsTable',
            elem: '#demo',
            url: 'goods.json', //数据接口
            page: true, //开启分页
            even: true,
            cols: [[ //表头
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
				debugger;
                console.log(res);

                //得到当前页码
                console.log(curr);

                //得到数据总量
                console.log(count);
            }
        });
        /*
		$("#goodsSearch").on('click',function(){
			table.reload('goodsTable',{
				where:{
					pageNo:1,
					pageSize:5
				}	
			});
		});
        */
        form.on('submit(goodsSearch)',function(data){
        	table.reload('goodsTable',{
				where:data.field
			});
        });
        
    });
</script>