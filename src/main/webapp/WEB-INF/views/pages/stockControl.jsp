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
								<input type="text" name="orderid" placeholder="请输入" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<button class="layui-btn layuiadmin-btn-order" lay-submit="" lay-filter="LAY-app-order-search">
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
<!--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">-->
	<!--<legend>表单集合演示</legend>-->
<!--</fieldset>-->
<!--<form class="layui-form" action="">-->
	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">单行输入框</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">-->
		<!--</div>-->
	<!--</div>-->
	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">验证必填项</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="text" name="username" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<div class="layui-inline">-->
			<!--<label class="layui-form-label">验证手机</label>-->
			<!--<div class="layui-input-inline">-->
				<!--<input type="tel" name="phone" lay-verify="required|phone" autocomplete="off" class="layui-input">-->
			<!--</div>-->
		<!--</div>-->
		<!--<div class="layui-inline">-->
			<!--<label class="layui-form-label">验证邮箱</label>-->
			<!--<div class="layui-input-inline">-->
				<!--<input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">-->
			<!--</div>-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<div class="layui-inline">-->
			<!--<label class="layui-form-label">多规则验证</label>-->
			<!--<div class="layui-input-inline">-->
				<!--<input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input">-->
			<!--</div>-->
		<!--</div>-->
		<!--<div class="layui-inline">-->
			<!--<label class="layui-form-label">验证日期</label>-->
			<!--<div class="layui-input-inline">-->
				<!--<input type="text" name="date" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">-->
			<!--</div>-->
		<!--</div>-->
		<!--<div class="layui-inline">-->
			<!--<label class="layui-form-label">验证链接</label>-->
			<!--<div class="layui-input-inline">-->
				<!--<input type="tel" name="url" lay-verify="url" autocomplete="off" class="layui-input">-->
			<!--</div>-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">验证身份证</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="text" name="identity" lay-verify="identity" placeholder="" autocomplete="off" class="layui-input">-->
		<!--</div>-->
	<!--</div>-->
	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">自定义验证</label>-->
		<!--<div class="layui-input-inline">-->
			<!--<input type="password" name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">-->
		<!--</div>-->
		<!--<div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<div class="layui-inline">-->
			<!--<label class="layui-form-label">范围</label>-->
			<!--<div class="layui-input-inline" style="width: 100px;">-->
				<!--<input type="text" name="price_min" placeholder="￥" autocomplete="off" class="layui-input">-->
			<!--</div>-->
			<!--<div class="layui-form-mid">-</div>-->
			<!--<div class="layui-input-inline" style="width: 100px;">-->
				<!--<input type="text" name="price_max" placeholder="￥" autocomplete="off" class="layui-input">-->
			<!--</div>-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">单行选择框</label>-->
		<!--<div class="layui-input-block">-->
			<!--<select name="interest" lay-filter="aihao">-->
				<!--<option value=""></option>-->
				<!--<option value="0">写作</option>-->
				<!--<option value="1" selected="">阅读</option>-->
				<!--<option value="2">游戏</option>-->
				<!--<option value="3">音乐</option>-->
				<!--<option value="4">旅行</option>-->
			<!--</select>-->
		<!--</div>-->
	<!--</div>-->


	<!--<div class="layui-form-item">-->
		<!--<div class="layui-inline">-->
			<!--<label class="layui-form-label">分组选择框</label>-->
			<!--<div class="layui-input-inline">-->
				<!--<select name="quiz">-->
					<!--<option value="">请选择问题</option>-->
					<!--<optgroup label="城市记忆">-->
						<!--<option value="你工作的第一个城市">你工作的第一个城市</option>-->
					<!--</optgroup>-->
					<!--<optgroup label="学生时代">-->
						<!--<option value="你的工号">你的工号</option>-->
						<!--<option value="你最喜欢的老师">你最喜欢的老师</option>-->
					<!--</optgroup>-->
				<!--</select>-->
			<!--</div>-->
		<!--</div>-->
		<!--<div class="layui-inline">-->
			<!--<label class="layui-form-label">搜索选择框</label>-->
			<!--<div class="layui-input-inline">-->
				<!--<select name="modules" lay-verify="required" lay-search="">-->
					<!--<option value="">直接选择或搜索选择</option>-->
					<!--<option value="1">layer</option>-->
					<!--<option value="2">form</option>-->
					<!--<option value="3">layim</option>-->
					<!--<option value="4">element</option>-->
					<!--<option value="5">laytpl</option>-->
					<!--<option value="6">upload</option>-->
					<!--<option value="7">laydate</option>-->
					<!--<option value="8">laypage</option>-->
					<!--<option value="9">flow</option>-->
					<!--<option value="10">util</option>-->
					<!--<option value="11">code</option>-->
					<!--<option value="12">tree</option>-->
					<!--<option value="13">layedit</option>-->
					<!--<option value="14">nav</option>-->
					<!--<option value="15">tab</option>-->
					<!--<option value="16">table</option>-->
					<!--<option value="17">select</option>-->
					<!--<option value="18">checkbox</option>-->
					<!--<option value="19">switch</option>-->
					<!--<option value="20">radio</option>-->
				<!--</select>-->
			<!--</div>-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">联动选择框</label>-->
		<!--<div class="layui-input-inline">-->
			<!--<select name="quiz1">-->
				<!--<option value="">请选择省</option>-->
				<!--<option value="浙江" selected="">浙江省</option>-->
				<!--<option value="你的工号">江西省</option>-->
				<!--<option value="你最喜欢的老师">福建省</option>-->
			<!--</select>-->
		<!--</div>-->
		<!--<div class="layui-input-inline">-->
			<!--<select name="quiz2">-->
				<!--<option value="">请选择市</option>-->
				<!--<option value="杭州">杭州</option>-->
				<!--<option value="宁波" disabled="">宁波</option>-->
				<!--<option value="温州">温州</option>-->
				<!--<option value="温州">台州</option>-->
				<!--<option value="温州">绍兴</option>-->
			<!--</select>-->
		<!--</div>-->
		<!--<div class="layui-input-inline">-->
			<!--<select name="quiz3">-->
				<!--<option value="">请选择县/区</option>-->
				<!--<option value="西湖区">西湖区</option>-->
				<!--<option value="余杭区">余杭区</option>-->
				<!--<option value="拱墅区">临安市</option>-->
			<!--</select>-->
		<!--</div>-->
		<!--<div class="layui-form-mid layui-word-aux">此处只是演示联动排版，并未做联动交互</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">复选框</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="checkbox" name="like[write]" title="写作">-->
			<!--<input type="checkbox" name="like[read]" title="阅读" checked="">-->
			<!--<input type="checkbox" name="like[game]" title="游戏">-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item" pane="">-->
		<!--<label class="layui-form-label">原始复选框</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="checkbox" name="like1[write]" lay-skin="primary" title="写作" checked="">-->
			<!--<input type="checkbox" name="like1[read]" lay-skin="primary" title="阅读">-->
			<!--<input type="checkbox" name="like1[game]" lay-skin="primary" title="游戏" disabled="">-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">开关-默认关</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="checkbox" name="close" lay-skin="switch" lay-text="ON|OFF">-->
		<!--</div>-->
	<!--</div>-->
	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">开关-默认开</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="checkbox" checked="" name="open" lay-skin="switch" lay-filter="switchTest" lay-text="ON|OFF">-->
		<!--</div>-->
	<!--</div>-->
	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">单选框</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="radio" name="sex" value="男" title="男" checked="">-->
			<!--<input type="radio" name="sex" value="女" title="女">-->
			<!--<input type="radio" name="sex" value="禁" title="禁用" disabled="">-->
		<!--</div>-->
	<!--</div>-->
	<!--<div class="layui-form-item layui-form-text">-->
		<!--<label class="layui-form-label">普通文本域</label>-->
		<!--<div class="layui-input-block">-->
			<!--<textarea placeholder="请输入内容" class="layui-textarea"></textarea>-->
		<!--</div>-->
	<!--</div>-->
	<!--&lt;!&ndash;<div class="layui-form-item layui-form-text">-->
      <!--<label class="layui-form-label">编辑器</label>-->
      <!--<div class="layui-input-block">-->
        <!--<textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor"></textarea>-->
      <!--</div>-->
    <!--</div>&ndash;&gt;-->
	<!--<div class="layui-form-item">-->
		<!--<div class="layui-input-block">-->
			<!--<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>-->
			<!--<button type="reset" class="layui-btn layui-btn-primary">重置</button>-->
		<!--</div>-->
	<!--</div>-->
<!--</form>-->

<!--&lt;!&ndash; 示例-970 &ndash;&gt;-->
<!--<ins class="adsbygoogle" style="display:inline-block;width:970px;height:90px" data-ad-client="ca-pub-6111334333458862" data-ad-slot="3820120620"></ins>-->

<!--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">-->
	<!--<legend>初始赋值演示</legend>-->
<!--</fieldset>-->

<!--<form class="layui-form" action="" lay-filter="example">-->
	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">输入框</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="text" name="username" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">-->
		<!--</div>-->
	<!--</div>-->
	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">密码框</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">选择框</label>-->
		<!--<div class="layui-input-block">-->
			<!--<select name="interest" lay-filter="aihao">-->
				<!--<option value=""></option>-->
				<!--<option value="0">写作</option>-->
				<!--<option value="1">阅读</option>-->
				<!--<option value="2">游戏</option>-->
				<!--<option value="3">音乐</option>-->
				<!--<option value="4">旅行</option>-->
			<!--</select>-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">复选框</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="checkbox" name="like[write]" title="写作">-->
			<!--<input type="checkbox" name="like[read]" title="阅读">-->
			<!--<input type="checkbox" name="like[daze]" title="发呆">-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">开关</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="checkbox" name="close" lay-skin="switch" lay-text="ON|OFF">-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">单选框</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="radio" name="sex" value="男" title="男" checked="">-->
			<!--<input type="radio" name="sex" value="女" title="女">-->
		<!--</div>-->
	<!--</div>-->
	<!--<div class="layui-form-item layui-form-text">-->
		<!--<label class="layui-form-label">文本域</label>-->
		<!--<div class="layui-input-block">-->
			<!--<textarea placeholder="请输入内容" class="layui-textarea" name="desc"></textarea>-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<div class="layui-input-block">-->
			<!--<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>-->
		<!--</div>-->
	<!--</div>-->
<!--</form>-->
<!--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">-->
	<!--<legend>方框风格的表单集合</legend>-->
<!--</fieldset>-->
<!--<form class="layui-form layui-form-pane" action="">-->
	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">长输入框</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="text" name="title" autocomplete="off" placeholder="请输入标题" class="layui-input">-->
		<!--</div>-->
	<!--</div>-->
	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">短输入框</label>-->
		<!--<div class="layui-input-inline">-->
			<!--<input type="text" name="username" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<div class="layui-inline">-->
			<!--<label class="layui-form-label">日期选择</label>-->
			<!--<div class="layui-input-block">-->
				<!--<input type="text" name="date" id="date1" autocomplete="off" class="layui-input">-->
			<!--</div>-->
		<!--</div>-->
		<!--<div class="layui-inline">-->
			<!--<label class="layui-form-label">行内表单</label>-->
			<!--<div class="layui-input-inline">-->
				<!--<input type="text" name="number" autocomplete="off" class="layui-input">-->
			<!--</div>-->
		<!--</div>-->
	<!--</div>-->
	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">密码</label>-->
		<!--<div class="layui-input-inline">-->
			<!--<input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">-->
		<!--</div>-->
		<!--<div class="layui-form-mid layui-word-aux">请务必填写用户名</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<div class="layui-inline">-->
			<!--<label class="layui-form-label">范围</label>-->
			<!--<div class="layui-input-inline" style="width: 100px;">-->
				<!--<input type="text" name="price_min" placeholder="￥" autocomplete="off" class="layui-input">-->
			<!--</div>-->
			<!--<div class="layui-form-mid">-</div>-->
			<!--<div class="layui-input-inline" style="width: 100px;">-->
				<!--<input type="text" name="price_max" placeholder="￥" autocomplete="off" class="layui-input">-->
			<!--</div>-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">单行选择框</label>-->
		<!--<div class="layui-input-block">-->
			<!--<select name="interest" lay-filter="aihao">-->
				<!--<option value=""></option>-->
				<!--<option value="0">写作</option>-->
				<!--<option value="1" selected="">阅读</option>-->
				<!--<option value="2">游戏</option>-->
				<!--<option value="3">音乐</option>-->
				<!--<option value="4">旅行</option>-->
			<!--</select>-->
		<!--</div>-->
	<!--</div>-->

	<!--<div class="layui-form-item">-->
		<!--<label class="layui-form-label">行内选择框</label>-->
		<!--<div class="layui-input-inline">-->
			<!--<select name="quiz1">-->
				<!--<option value="">请选择省</option>-->
				<!--<option value="浙江" selected="">浙江省</option>-->
				<!--<option value="你的工号">江西省</option>-->
				<!--<option value="你最喜欢的老师">福建省</option>-->
			<!--</select>-->
		<!--</div>-->
		<!--<div class="layui-input-inline">-->
			<!--<select name="quiz2">-->
				<!--<option value="">请选择市</option>-->
				<!--<option value="杭州">杭州</option>-->
				<!--<option value="宁波" disabled="">宁波</option>-->
				<!--<option value="温州">温州</option>-->
				<!--<option value="温州">台州</option>-->
				<!--<option value="温州">绍兴</option>-->
			<!--</select>-->
		<!--</div>-->
		<!--<div class="layui-input-inline">-->
			<!--<select name="quiz3">-->
				<!--<option value="">请选择县/区</option>-->
				<!--<option value="西湖区">西湖区</option>-->
				<!--<option value="余杭区">余杭区</option>-->
				<!--<option value="拱墅区">临安市</option>-->
			<!--</select>-->
		<!--</div>-->
	<!--</div>-->
	<!--<div class="layui-form-item" pane="">-->
		<!--<label class="layui-form-label">开关-开</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="checkbox" checked="" name="open" lay-skin="switch" lay-filter="switchTest" title="开关">-->
		<!--</div>-->
	<!--</div>-->
	<!--<div class="layui-form-item" pane="">-->
		<!--<label class="layui-form-label">单选框</label>-->
		<!--<div class="layui-input-block">-->
			<!--<input type="radio" name="sex" value="男" title="男" checked="">-->
			<!--<input type="radio" name="sex" value="女" title="女">-->
			<!--<input type="radio" name="sex" value="禁" title="禁用" disabled="">-->
		<!--</div>-->
	<!--</div>-->
	<!--<div class="layui-form-item layui-form-text">-->
		<!--<label class="layui-form-label">文本域</label>-->
		<!--<div class="layui-input-block">-->
			<!--<textarea placeholder="请输入内容" class="layui-textarea"></textarea>-->
		<!--</div>-->
	<!--</div>-->
	<!--<div class="layui-form-item">-->
		<!--<button class="layui-btn" lay-submit="" lay-filter="demo2">跳转式提交</button>-->
	<!--</div>-->
<!--</form>-->



</body>

<script type="text/html" id="orderOption">
	<!--<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>-->
	<a class="layui-btn" lay-event="edit">加入订单</a>
	<!--<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>-->
</script>

<script src="../layui-2.4.4/layui.js"></script>
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#demo',
            url: 'goods.json', //数据接口
            page: true, //开启分页
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

    });
</script>