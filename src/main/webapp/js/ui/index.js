var $;
layui.config({
    base : "js/"
}).use(['form','element','layer','jquery','bodyTab'],function(){
    var form = layui.form,
        layer = layui.layer,
        element = layui.element,
    		$ = layui.jquery;
    var tab = layui.bodyTab();
    // 添加新窗口
    $(".layui-nav .layui-nav-item a").on("click",function(){
    	tab.tabAdd($(this));
        $(this).parent("li").siblings().removeClass("layui-nav-itemed");
    })
})
