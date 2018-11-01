<%--
  Created by IntelliJ IDEA.
  User: haopeng
  Date: 2018/5/17
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>


<head>
    <meta charset="utf-8">
    <title>我想吃红薯</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
   <!-- <link rel="icon" href="favicon.ico">-->
    <link rel="stylesheet" href="js/layui-2.4.4/css/layui.css">
</head>
<body class="main_body">
<div class="layui-layout layui-layout-admin">
    <!-- 顶部 -->
    <div class="layui-header header">
        <div class="layui-main">
            <a href="#" class="logo">我想吃红薯</a>
        </div>
    </div>
    <!-- 左侧导航 -->
    <div class="layui-side layui-bg-black">
        <!--<div class="navBar layui-side-scroll"></div>-->
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
    <!-- 右侧内容 -->
    <div class="layui-body layui-form">
        <div class="layui-tab marg0" lay-filter="bodyTab">
            <ul class="layui-tab-title top_tab">
                <li class="layui-this" lay-id=""><i class="iconfont icon-computer"></i> <cite>title</cite></li>
            </ul>
            <div class="layui-tab-content clildFrame">
                <div class="layui-tab-item layui-show">
                    <iframe src="page/main.html"></iframe>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 移动导航 -->
<div class="site-tree-mobile layui-hide"><i class="layui-icon">&#xe602;</i></div>
<div class="site-mobile-shade"></div>

<script type="text/javascript" src="js/layui-2.4.4/layui.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</body>