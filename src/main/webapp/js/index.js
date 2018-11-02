layui.config({
    base : "js/"
}).use(['form','element','layer','jquery'],function(){
    var form = layui.form,
        layer = layui.layer,
        element = layui.element,
    		$ = layui.jquery;
})

//打开新窗口
function addTab(_this){
    tab.tabAdd(_this);
}
