<%--
  Created by IntelliJ IDEA.
  User: haopeng
  Date: 2018/5/17
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="layui-side layui-bg-black">
	<ul class="layui-nav layui-nav-tree" lay-filter="test">
		<li class="layui-nav-item layui-nav-itemed">
			<a href="javascript:;">默认展开</a>
			<dl class="layui-nav-child">
				<dd><a href="javascript:;">选项1</a></dd>
				<dd><a href="javascript:;">选项2</a></dd>
				<dd><a href="">跳转</a></dd>
			</dl>
		</li>
		<li class="layui-nav-item">
			<a href="javascript:;">一级</a>
			<dl class="layui-nav-child">
				<dd><a href="javascript:;">二级1</a></dd>
				<dd><a href="">二级2</a></dd>
				<dd><a href="">二级3</a></dd>
			</dl>
		</li>
		<li class="layui-nav-item"><a href="">一级a</a></li>
		<li class="layui-nav-item"><a href="">一级b</a></li>
	</ul>
</div>